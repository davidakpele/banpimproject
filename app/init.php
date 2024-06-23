<?php 

// Accessing the config file
require "../app/core/config.php";
// Accessing the Database file
require "../app/core/database.php";
//Accessing the controller file 
require "../app/core/controller.php";
// Accessing the Application file
require "../app/core/app.php";
require "../app/services/User.php";
require "../app/services/Authentication.php";
require "../app/helpers/RequestHelper.php";
require "../app/helpers/session.php";
require "../cache/exceptions/GetRequestError.php";
require_once('../config.php');