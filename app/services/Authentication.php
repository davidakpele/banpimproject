<?php
namespace App\AuthenticationManager;

final class Authentication 
{
    //check if session isset
    public function isSessionActive(){
         if (isset($_SESSION['id']) && isset($_SESSION['username']) && isset($_SESSION['email'])) {
            return true;
        } else {
            return false;
        }
    }

    public function redirect_url(){
        header('Location: auth/login/');
        exit();
    }
}
