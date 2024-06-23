<?php

class UserRepository {

    private $db_connection;

    public function __construct(){
        $this->db_connection = new Database;
    }

    public function save_user($username, $email, $firstname, $lastname, $password){
        $this->db_connection->query(/** @lang text */"INSERT INTO `users`(`username`, `email`, `firstname`, `lastname`, `password`) VALUES (:username, :email, :firstname, :lastname, :password)");
        // bind incoming values for security
        $this->db_connection->bind(':username', $username);
        $this->db_connection->bind(':email', $email);
        $this->db_connection->bind(':firstname', $firstname);
        $this->db_connection->bind(':lastname', $lastname);
        $this->db_connection->bind(':password', $password);
        if($this->db_connection->execute()) {
            return true;
        }else {
            return false;
        }
    }
    
    public function findUserByUsername($username){
        //check if username already exists
        $this->db_connection->query(/** @lang text */"SELECT * FROM users WHERE username = :username");
        $this->db_connection->bind(':username', $username);
        $data = $this->db_connection->single();
        if (!empty($data)) {
            return true;
        }else {
            return false;
        }
    }

    public function findUserByEmail($email){
        $this->db_connection->query(/** @lang text */"SELECT * FROM users WHERE email = :email");
        $this->db_connection->bind(':email', $email);
        $data = $this->db_connection->single();
        if (!empty($data)) {
            return true;
        }else {
            return false;
        }
    }

    public function login_user($username, $password){
        $this->db_connection->query(/** @lang text */"SELECT * FROM users WHERE username = :username");
        $this->db_connection->bind(':username', $username);
        $row = $this->db_connection->single();
        if(!empty($row)){
            $hashedPassword = $row->password;
            if(password_verify($password, $hashedPassword)){
                return $row;
            }else {
                return false;
            }
        }else {
            return false;
        }
    }
}
?>
