<?php
use App\AuthenticationManager\Authentication;
use Request\Method\RequestHelper;
use Http\Request\Exceptions\GetRequestError;

final class ProductController  extends Controller
{
    private $product_db_model;
    private $product_view_db_model;
    private $product_download_db_model;
    private $smarty;
    private $auth;
    private $exception;

    public function __construct() {
        global $smarty;
        $this->smarty = $smarty;
        $this->auth = new Authentication();
        $this->exception= new GetRequestError();
        $this->product_db_model = $this->loadModel('ProductsRepository');
        $this->product_view_db_model = $this->loadModel('ProductViewsRepository');
        $this->product_download_db_model = $this->loadModel('ProductDownloadsRepository');
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
                    'name' => '',
                    'title' => '',
                    'description' => '',
                    'category' => '',
                    'tag' => '',
                    'size' => '',
                    'weight' => '',
                    'sku_id' => '',
                    'color' => '',
                );
                $name= isset($_POST['name'])? strip_tags(trim(filter_var($_POST['name'], FILTER_SANITIZE_STRING))):'';
                $title= isset($_POST['title'])? strip_tags(trim(filter_var($_POST['title'], FILTER_SANITIZE_STRING))):'';
                $description= isset($_POST['description'])? strip_tags(trim(filter_var($_POST['description'], FILTER_SANITIZE_STRING))):'';
                $category= isset($_POST['category'])? strip_tags(trim(filter_var($_POST['category'], FILTER_SANITIZE_STRING))):'';
                $tag= isset($_POST['tag'])? strip_tags(trim(filter_var($_POST['tag'], FILTER_SANITIZE_STRING))):'';
                $size= isset($_POST['size'])? strip_tags(trim(filter_var($_POST['size'], FILTER_SANITIZE_STRING))):'';
                $weight= isset($_POST['weight'])? strip_tags(trim(filter_var($_POST['weight'], FILTER_SANITIZE_STRING))):'';
                $sku_id= isset($_POST['sku_id'])? strip_tags(trim(filter_var($_POST['sku_id'], FILTER_SANITIZE_STRING))):'';
                $color= isset($_POST['color'])? strip_tags(trim(filter_var($_POST['color'], FILTER_SANITIZE_STRING))):'';
   
                if (empty($name)) {
                    $errors['name'] = "Product name is required.*";
                }
                if (empty($title)) {
                    $errors['title'] = "Product title is required.*";
                }
                if (empty($description)) {
                    $errors['description'] = "Product description is required.*";
                }
                if (empty($category)) {
                    $errors['category'] = "Product category is required.*";
                }
                if (empty($tag)) {
                    $errors['tag'] = "Product tag is required.*";
                }
                if (empty($size)) {
                    $errors['size'] = "Product size is required.*";
                }
                if (empty($weight)) {
                    $errors['weight'] = "Product weight is required.*";
                }
                if (empty($sku_id)) {
                    $errors['sku_id'] = "Product sku_id is required.*";
                }
                if (empty($color)) {
                    $errors['color'] = "Product color is required.*";
                }
                // Filter the array to remove empty values
                $filteredErrors = array_filter($errors);
                  // Check if the filtered array is empty
                if (empty($filteredErrors)) {
                    $data = array(
                        'name' => $name,
                        'title' => $title,
                        'description' => $description,
                        'category' => $category,
                        'tag' => $tag,
                        'size' => $size,
                        'weight' => $weight,
                        'sku_id' => $sku_id,
                        'color' => $color,
                    );
                    if ($this->product_db_model->create_product($data)){
                        $response['status'] = "success";
                        $response['message'] = "Product created successfully";
                        echo json_encode($response);
                    }else{
                        $response['status'] = "error";
                        $response['message'] = "Product not created successfully";
                        echo json_encode($response);
                    }
                }
            }
        }
    }
    
    public function viewall(){
        if (!$this->auth->isSessionActive()) {
            header('Location: auth/login/');
            exit();
        }else{
            $product = $this->product_db_model->getAllProducts();
            // Assign variables to Smarty
            $this->smarty->assign('page_title', 'Product List | ipOnline');
            $this->smarty->assign('root_link', ROOT);
            $this->smarty->assign('products', $product);
            $this->smarty->assign('session_username', (isset($_SESSION['username'])? $_SESSION['username'] : ''));
            $this->smarty->assign('assets_link', ASSETS);
            $this->smarty->display('products.tpl');
        }
    }

    public function view_product(){
        if (!$this->auth->isSessionActive()) {
            header('Location: auth/login/');
            exit();
        }else{
            if (RequestHelper::isRequestMethod('GET')) {
                $url=implode('',$_REQUEST);
                $urlParts = explode('/', $url);
                //get the package id to check which package user subscribe to
                $pid = (!empty($urlParts[2]) ? $urlParts[2] : '');
                if(!empty($pid)){
                    if (is_numeric($pid)) {
                        //update product view
                        $user_id = $_SESSION['id'];
                        if($this->product_view_db_model->create_product_view($pid, $user_id)){
                            header('Location: ../viewall');
                            exit();
                        }
                    }else {
                        $message = "System can not verify this ID sent";
                        $headlines= "Something went wrong with the ID ".$pid." you provide, system expect integer or number NOT String";
                        $detail = "This request has been marked suspect & can not be process";
                        $this->exception->display(401, $message,  $headlines, $detail);
                    }
                }else {
                    $message = "Please this endpoint expected a productId paramter and must not be empty or NULL.";
                    $headlines= "Something went wrong with the method used to accesse this endpoint.";
                    $detail = "This request has been marked suspect & can not be process";
                    $this->exception->display(401, $message,  $headlines, $detail);
                }
            }
        }
    }

    public function download_product(){
        if (!$this->auth->isSessionActive()) {
            header('Location: auth/login/');
            exit();
        }else{
            if (RequestHelper::isRequestMethod('GET')) {
                $url=implode('',$_REQUEST);
                $urlParts = explode('/', $url);
                //get the package id to check which package user subscribe to
                $pid = (!empty($urlParts[2]) ? $urlParts[2] : '');
                if(!empty($pid)){
                    if (is_numeric($pid)) {
                        //update product view
                        $user_id = $_SESSION['id'];
                        if($this->product_download_db_model->save_download_product_record($pid, $user_id)){
                            header('Location: ../viewall');
                            exit();
                        }
                    }else {
                        $message = "System can not verify this ID sent";
                        $headlines= "Something went wrong with the ID ".$pid." you provide, system expect integer or number NOT String";
                        $detail = "This request has been marked suspect & can not be process";
                        $this->exception->display(401, $message,  $headlines, $detail);
                    }
                }else {
                    $message = "Please this endpoint expected a productId paramter and must not be empty or NULL.";
                    $headlines= "Something went wrong with the method used to accesse this endpoint.";
                    $detail = "This request has been marked suspect & can not be process";
                    $this->exception->display(401, $message,  $headlines, $detail);
                }
            }
        }
    }
}
