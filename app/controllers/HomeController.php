<?php
use App\AuthenticationManager\Authentication;
use Request\Method\RequestHelper;

final class HomeController extends Controller {

    private $product_db_model;
    private $media_db_model;
    private $product_view_db_model;
    private $smarty;
    private $auth;

    public function __construct() {
        global $smarty;
        $this->smarty = $smarty;
        $this->auth = new Authentication();
        $this->product_db_model = $this->loadModel('ProductsRepository');
        $this->media_db_model = $this->loadModel('MediaRepository');
        $this->product_view_db_model = $this->loadModel('ProductViewsRepository');
    }

    public function index(){
        //check if session is active
        if (!$this->auth->isSessionActive()) {
           return $this->auth->redirect_url();
        }else{
            $product_count = $this->product_db_model->countProduct();
            $media_count = $this->media_db_model->countMedia();
            $product_views = $this->product_view_db_model->productViews();
            $downloads_count = $this->media_db_model->countDownload();

           
            // Assign variables to Smarty
            $this->smarty->assign('product_count', $product_count);
            $this->smarty->assign('media_count', $media_count[0]['count']);
            $this->smarty->assign('product_views', (!empty($product_views)) ? $product_views : '0');
            $this->smarty->assign('downloads_count', $downloads_count);
            $this->smarty->assign('session_username', (isset($_SESSION['username'])? $_SESSION['username'] : ''));
            $this->smarty->assign('page_title', 'Home | ipOnline');
            $this->smarty->assign('root_link', ROOT);
            $this->smarty->assign('assets_link', ASSETS);
            $this->smarty->display('index.tpl');
        }
    }

    

}
