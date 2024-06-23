<?php
namespace Auth\SessionManager;

final class session{

    public function set($key, $value){
        $_SESSION[$key] = $value;
    }

   public function destroy() {
        // Unset all session variables
        session_unset();
        // Destroy the session
        session_destroy();
    }
    
    
}
