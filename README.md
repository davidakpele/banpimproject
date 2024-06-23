# Dilinger
##Open Source MVC Framework with Smarty Template Engine for PHP.

[![N|Solid](https://cldup.com/dTxpPi9lDf.thumb.png)](https://nodesource.com/products/nsolid)

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)
## Table of Contents
* **Introduction**
* **Quick Start**
* **Folder Structure**
* **Core Components**
* **Validation**
* **Template Rendering**
* **Controller, View and model**
* **Challenges Faced**
* **Contributing**
## Introduction

> MVCFramework is an open-source MVC framework built in PHP, utilizing the Smarty template engine for creating dynamic and maintainable web applications. This framework includes robust form handling and validation mechanisms.

## Quick Start

1. Clone the repo: git clone **https://github.com/davidakpele/banpimproject.git**
2. Install dependencies using Composer: **composer install**
3. Set up your web server to point to the **public **directory.

## Folder Structure
```
C:.
├───app
│   ├───controllers
│   ├───core
│   │   └───env
│   ├───helpers
│   ├───models
│   ├───services
│   └───views
│       ├───NotFound
│       └───templates
│           ├───auth
│           └───inc
├───cache
│   └───exceptions
├───config
├───DB
├───public
│   └───assets
│       ├───css
│       ├───js
├───templates_c
└───vendor
    ├───composer
    ├───smarty
    │   └───smarty
    └───symfony
        └───polyfill-mbstring
            └───Resources

```
## Core Components
**Application.php**
```php
<?php
class Application {
    protected $controller = 'HomeController';
    protected $method = 'index';
    protected $params = [];

    public function __construct() {
        $this->parseUrl();

        if (file_exists('../app/controllers/' . $this->controller . '.php')) {
            require_once '../app/controllers/' . $this->controller . '.php';
            $this->controller = new $this->controller();
        } else {
            echo "Controller not found.";
            return;
        }

        if (method_exists($this->controller, $this->method)) {
            call_user_func_array([$this->controller, $this->method], $this->params);
        } else {
            echo "Method not found.";
            return;
        }
    }
    public function parseUrl() {
        if (isset($_GET['url'])) {
            $url = rtrim($_GET['url'], '/');
            $url = filter_var($url, FILTER_SANITIZE_URL);
            $url = explode('/', $url);
            $this->controller = isset($url[0]) ? ucfirst($url[0]) . 'Controller' : 'HomeController';
            $this->method = isset($url[1]) ? $url[1] : 'index';
            unset($url[0], $url[1]);
            $this->params = $url ? array_values($url) : [];
        }
    }
}
?>
```

## Controller.php
```php
<?php 
Class Controller
{
	protected function view($view,$data = []){
		if(file_exists("../app/views/". $view .".php"))
 		{
 			include "../app/views/". $view .".php";
 		}else{
 			include "../app/views/DeniedAccess.php";
 		}
	} 

	protected function loadModel($model){
		if(file_exists("../app/models/". $model .".php")){
 			include "../app/models/". $model .".php";
 			return $model = new $model();
 		}
 		return false;
	}
}
```
## User Class Validation
```php
<?php
 namespace Services\Validate\Request;
 
class User {
    public $username;
    public $email;
    public $password;

    public function __construct($username, $email, $password) {
        $this->username = $username;
        $this->email = $email;
        $this->password = $password;
        
    }

    public function validateUsername() {
        return preg_match('/^[a-zA-Z0-9]{3,20}$/', $this->username);
    }

    public function validateEmail() {
        return filter_var($this->email, FILTER_VALIDATE_EMAIL);
    }

    public function validatePassword() {
        return preg_match('/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,}$/', $this->password);
    }

    public function validate() {
        $errors = [
            'username' => '',
            'email' => '',
            'password' => ''
        ];

        if (empty($this->username)) {
            $errors['username'] = "Username is required.";
        } elseif (!$this->validateUsername()) {
            $errors['username'] = "Username must be alphanumeric and between 3-20 characters.";
        }

        if (empty($this->email)) {
            $errors['email'] = "Email is required.";
        } elseif (!$this->validateEmail()) {
            $errors['email'] = "Invalid email format.";
        }

        if (empty($this->password)) {
            $errors['password'] = "Password is required.";
        } elseif (!$this->validatePassword()) {
            $errors['password'] = "Password must be at least 8 characters long and include at least one uppercase letter, one lowercase letter, and one number.";
        }

        return $errors;
    }
}
```
## Template Rendering
### config.php
```php
<?php
require_once('vendor/smarty/smarty/libs/Smarty.class.php');

use Smarty\Smarty;
$smarty = new Smarty();

$smarty->setTemplateDir([
    __DIR__ . '/app/views/templates',
    __DIR__ . '/app/views/templates/auth',
]);
$smarty->setCompileDir(__DIR__ . '/templates_c');
$smarty->setCacheDir(__DIR__ . '/cache');
$smarty->setConfigDir(__DIR__ . '/configs');
```
## Controller and View
```php
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

```
### index.tpl
```tpl
<!DOCTYPE html>
    <html lang="en">
        <head>
            <meta name="theme-color" content="#c9190c">
            <meta name="robots" content="index,follow">
            <meta htttp-equiv="Cache-control" content="no-cache">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="msapplication-TileColor" content="#c9190c">
            <meta name="apple-mobile-web-app-capable" content="yes">
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            <meta name="keywords" content="" />
            <meta name="description" content="" />
            <link href="{$assets_link}css/styles.css" rel="stylesheet">
            <link href="{$assets_link}css/bootstrap.min.css" rel="stylesheet">
            <link href="{$assets_link}fontawesome/css/all.css" rel="stylesheet">
            <link href="{$assets_link}css/styles.css" rel="stylesheet">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
            <script type='text/javascript' src='{$assets_link}js/jquery.min.js'></script>
            <script type='text/javascript' src='{$assets_link}js/bootstrap.min.js'></script>
            <title>{$page_title}</title>
        </head>
<body>
<body>
    <h1>Welcome, {$name}!</h1>
</body>
</html>
```
## Overview
>Bankoto tasked us with developing a Mini Product Information Management System called BanPIM. The project involved creating both frontend and backend features to manage products and media assets, along with a user authentication system.

### Frontend Features
1. Registration Page:
  * A form for new users to register an account with fields for username, email, password, and other relevant details.

2. Login Page:
   * A secure login form for existing users to access the platform.
## Backend Features
1. Dashboard:
  * Metrics displayed
    * Number of Products
    * Number of Media
    * Product Views
    * Number of Downloads
2. Product Management:
  * Create Product
    * Form fields included: Product name, Product title, Product description, Category, Tag, Size, Weight, SKU ID, Color.
  * Product List:
    * A view to list all products with their details.
    * Able to test download product functionality
    * Able to test product views functionality
3. Media Management:
  * Create Media Asset
    * Form fields included: Media name, Description, Category.
4. Logout:
  * Implemented a secure logout feature to end user sessions.
## Additional Features Implemented
  1. Database Tables:
     * Created tables for users, products ,product views, media and including a relational table to track product downloads.
  2. SQL Queries
      *Some PHP Methods:
      * **getAllProducts()**: Modified to fetch products along with their view and download counts.
      * **getAllMedias():** Fetch all media
  3. Error Pages:
      * Developed error handling pages for "Method not found", "Controller not found", "Page not found" and _Pretty json execption error_ handling for product views and product download.
  4. Form Validation:
     * Implemented JavaScript-based form validation for both product and media asset creation forms.
     * Used smarty engine to validate user registration and login logic.

 ### Summary of Tasks
   * Created Registration and Login Pages.
   * Developed Dashboard with Key Metrics.
   * Built Product and Media Management Features.
   * Handled User Sessions and Logouts.
   * Implemented Database Structure for Products, Views, and Downloads.
   * Validated Forms and Managed Errors Effectively.
   * Applied Responsive Styling with Bootstrap and Custom CSS.
# Conclusion
>This project demonstrated a comprehensive approach to building a Product Information Management System with robust frontend and backend capabilities. The implementation involved various aspects of web development, including user authentication, database management, form validation, and user interface design.
