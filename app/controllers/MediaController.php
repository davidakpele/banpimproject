<?php
use App\AuthenticationManager\Authentication;
use Request\Method\RequestHelper;

final class MediaController  extends Controller
{
    private $media_db_model;
    private $smarty;
    private $auth;

    public function __construct() {
        global $smarty;
        $this->smarty = $smarty;
        $this->auth = new Authentication();
        $this->media_db_model = $this->loadModel('MediaRepository');
    }

    public function create(){
        if (!$this->auth->isSessionActive()) {
            header('Location: auth/login/');
            exit();
        }else{
            if (RequestHelper::isRequestMethod('POST')) {
                $_POST = filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING);
                $response = array();
                $errors = array(
                    'media_name' => '',
                    'description' => '',
                    'category' => '',
                    'file' => '',
                );
                $media_name= isset($_POST['media_name'])? strip_tags(trim(filter_var($_POST['media_name'], FILTER_SANITIZE_STRING))):'';
                $description= isset($_POST['description'])? strip_tags(trim(filter_var($_POST['description'], FILTER_SANITIZE_STRING))):'';
                $category= isset($_POST['category'])? strip_tags(trim(filter_var($_POST['category'], FILTER_SANITIZE_STRING))):'';
                
                if (empty($media_name)) {
                    $errors['media_name'] = "Product name is required.*";
                }
                if (empty($description)) {
                    $errors['description'] = "Product description is required.*";
                }
                if (empty($category)) {
                    $errors['category'] = "Product category is required.*";
                }
                if (is_uploaded_file($_FILES['file']['tmp_name'])){
                    if((isset($_FILES['file']['name']) != '')){
                        $photo = $_FILES['file'];
                        $name = $photo['name'];
                        $nameArray = explode('.', $name);
                        $fileName = $nameArray[0];
                        $fileExt = $nameArray[1];
                        $mime = explode('/', $photo['type']);
                        $mimeType = $mime[0];
                        $imgType = $photo['type'];
                        $mimeExt = $mime[1];
                        $tmpLoc = $photo['tmp_name'];   
                        $fileSize = $photo['size'];
                        
                        $uploadName = uniqid().'.'.$fileExt;
                        $uploadPath = 'assets/img/uploaded_media/'.trim(filter_var($media_name, FILTER_SANITIZE_STRING)).'/'.$uploadName; 
                        $dbpath  = 'assets/img/uploaded_media/'.trim(filter_var($media_name, FILTER_SANITIZE_STRING)).'/'.$uploadName;
                        $folder = 'assets/img/uploaded_media/'.trim(filter_var($media_name, FILTER_SANITIZE_STRING));
                        if ($fileSize > 90000000000000) {
                            $response['status'] = "error";
                            $response['file'] = 'Your file was larger than 50kb in file size.';
                        }elseif ($fileSize < 90000000000000 ) {
                            if(!file_exists($folder)){
                                mkdir($folder,077,true);
                            }
                             // Filter the array to remove empty values
                            $filteredErrors = array_filter($errors);
                            // Check if the filtered array is empty
                            if (empty($filteredErrors)) {
                                $data = array(
                                    'media_name' => $media_name,
                                    'description' => $description,
                                    'category' => $category,
                                    'file' => $uploadPath,
                                );
                                if ($this->media_db_model->save_media($media_name, $description, $category, $imgType, $uploadPath)){
                                    move_uploaded_file($tmpLoc,$dbpath);
                                    $response['status'] = "success";
                                    $response['message'] = "New media created Added.!";
                                    echo json_encode($response);
                                }else{
                                    $response['status'] = "error";
                                    $response['message'] = "Media not created successfully";
                                    echo json_encode($response);
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    public function all(){
        if (!$this->auth->isSessionActive()) {
            header('Location: auth/login/');
            exit();
        }else{
            $media = $this->media_db_model->getAllMedias();
            // Assign variables to Smarty
            $this->smarty->assign('page_title', 'Media List | ipOnline');
            $this->smarty->assign('root_link', ROOT);
            $this->smarty->assign('medias', (!empty($media)) ? $media : []);
            $this->smarty->assign('session_username', (isset($_SESSION['username'])? $_SESSION['username'] : ''));
            $this->smarty->assign('assets_link', ASSETS);
            $this->smarty->display('media.tpl');
        }
    }
}
