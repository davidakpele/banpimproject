<?php

use Request\Method\RequestHelper;
use Services\Validate\Request\User;
use Auth\SessionManager\session;
use App\AuthenticationManager\Authentication;

class AuthController extends Controller {

    private $smarty;
    private $store_db_model;
    private $auth;

    public function __construct() {
        global $smarty;
        $this->smarty = $smarty;
        $this->auth = new Authentication();
        $this->store_db_model = $this->loadModel('UserRepository');
    }

    public function register(){
        //check method
        if (RequestHelper::isRequestMethod('POST')) {
            $_POST = filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING);
            $response = array();
            $errors = array(
                'username' => '',
                'email' => '',
                'firstname' => '',
                'lastname' => '',
                'password' => ''
            );
            $username= isset($_POST['username'])? strip_tags(trim(filter_var($_POST['username'], FILTER_SANITIZE_STRING))):'';
            $email= isset($_POST['email'])? strip_tags(trim(filter_var($_POST['email'], FILTER_SANITIZE_STRING))):'';
            $firstname= isset($_POST['firstname'])? strip_tags(trim(filter_var($_POST['firstname'], FILTER_SANITIZE_STRING))):'';
            $lastname= isset($_POST['lastname'])? strip_tags(trim(filter_var($_POST['lastname'], FILTER_SANITIZE_STRING))):'';
            $password= isset($_POST['password'])? strip_tags(trim(filter_var($_POST['password'], FILTER_SANITIZE_STRING))):'';

            $user = new User($username, $email, $firstname, $lastname, $password);
            $validationErrors = $user->validate();

            if (empty($validationErrors['username']) && empty($validationErrors['email']) && empty($validationErrors['password'])) {
                //check if username and email already been used.

                if ($this->store_db_model->findUserByEmail($email)) {
                    $errors['email'] = "Email already in used by another user, please choose a different email address.";
                }
                if ($this->store_db_model->findUserByUsername($username)) {
                    $errors['username'] = "This username has already been taken by a user, please choose a different username.";
                }else{
                    //hash password using password_hash() Argon2i
                    $hash_password = password_hash($password, PASSWORD_ARGON2ID);
                    if($this->store_db_model->save_user($username, $email, $firstname, $lastname, $hash_password)){
                        $response['success'] = array('status' => 'success', 'details' => 'Registration successful!', http_response_code(201));
                    }else{
                        $errors['username'] = "Unable to register user at this time, please try again later.";
                    }
                }
            } else {
                $errors = array_merge($errors, $validationErrors);
            }
            $this->smarty->assign('errors', $errors);
            $this->smarty->assign('success', isset($response['success']) ? $response['success'] : null);
            $this->smarty->assign('submitted_username', isset($username) ? htmlspecialchars($username) : '');
            $this->smarty->assign('submitted_email', isset($email) ? htmlspecialchars($email) : '');
            $this->smarty->assign('submitted_firstname', isset($firstname) ? htmlspecialchars($firstname) : '');
            $this->smarty->assign('submitted_lastname', isset($lastname) ? htmlspecialchars($lastname) : '');
            $this->smarty->assign('submitted_password', isset($password) ? htmlspecialchars($password) : '');
        }else {
            $this->smarty->assign('errors', array('username' => '', 'email' => '', 'firstname'=>'', 'lastname'=>'', 'password' => ''));
            $this->smarty->assign('submitted_username', '');
            $this->smarty->assign('submitted_email', '');
            $this->smarty->assign('submitted_firstname', '');
            $this->smarty->assign('submitted_lastname', '');

        }
        $this->smarty->assign('page_title', 'Register Account');
        $this->smarty->assign('root_link', ROOT);
        $this->smarty->assign('assets_link', ASSETS);
        $this->smarty->display('auth/register.tpl');

    }


    public function login(){
        //check if session is active
        if ($this->auth->isSessionActive()) {
            header('Location: ../');
            exit();
        }else{
            //check method
            if (RequestHelper::isRequestMethod('POST')) {
                $_POST = filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING);
                $response = array();
                $errors = array(
                    'username' => '',
                    'password' => ''
                );
                $username= isset($_POST['username'])? strip_tags(trim(filter_var($_POST['username'], FILTER_SANITIZE_STRING))):'';
                $password= isset($_POST['password'])? strip_tags(trim(filter_var($_POST['password'], FILTER_SANITIZE_STRING))):'';

                    //check if username and password are empty
                if (empty($username)) {
                    $errors['username'] = "Username is required.*";
                }
                if (empty($password)) {
                    $errors['password'] = "Password is required.*";
                }
                if (empty($errors['username']) && empty($errors['password'])) {
                    //process login user
                    $user = $this->store_db_model->login_user($username, $password);
                    //start session
                    if ($user) {
                        $session = new session();
                        $session->set('id', $user->id);
                        $session->set('username', $user->username); 
                        $session->set('email', $user->email);
                    }
                    
                    if($user == false){
                        $errors['username'] = "Invalid credentials provided.!";
                    }else{
                        header('Location: ../');
                        exit();
                    }
                }
                $this->smarty->assign('errors', $errors);
                $this->smarty->assign('success', isset($response['success']) ? $response['success'] : null);
                $this->smarty->assign('submitted_username', isset($username) ? htmlspecialchars($username) : '');
                $this->smarty->assign('submitted_password', isset($password) ? htmlspecialchars($password) : '');
            }else {
                $this->smarty->assign('errors', array('username' => '', 'password' => ''));
                $this->smarty->assign('submitted_username', '');

            }
            $this->smarty->assign('page_title', 'Login Account');
            $this->smarty->assign('root_link', ROOT);
            $this->smarty->assign('assets_link', ASSETS);
            $this->smarty->display('auth/login.tpl');
        }
      
    }

    public function logout(){
        $session = new session();
        $session->destroy();
        header('Location:../auth/login/');
    }
}
