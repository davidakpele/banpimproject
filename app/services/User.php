<?php
 namespace Services\Validate\Request;
 
class User {
    public $username;
    public $email;
    public $firstname;
    public $lastname;
    public $password;

    public function __construct($username, $email, $firstname, $lastname, $password) {
        $this->username = $username;
        $this->email = $email; 
        $this->firstname = $firstname;
        $this->lastname = $lastname;
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
            'firstname' => '',
            'lastname' => '',
            'password' => ''
        ];
        if (empty($this->firstname)) {
            $errors['firstname'] = "Firstname is required.";
        }
        if (empty($this->lastname)) {
            $errors['lastname'] = "Lastname is required.";
        }
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
