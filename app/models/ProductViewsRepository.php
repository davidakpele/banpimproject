<?php

class ProductViewsRepository 
{
    
    private $db_connection;

    public function __construct(){
        $this->db_connection = new Database;
    }
    
    public function productViews(){
        $this->db_connection->query(/** @lang text */"SELECT * FROM product_views");
        $stmt = $this->db_connection->rowCount();
		return (!empty($stmt)) ? $stmt : '0';	
    }

    public function create_product_view($pid, $user_id){
        $this->db_connection->query('INSERT INTO `product_views`(`product_id`, `user_id`, `viewed_at`)VALUES(:pid, :user_id, NOW())');
		$this->db_connection->bind(':user_id', $user_id);
		$this->db_connection->bind(':pid', $pid);
		if($this->db_connection->execute()){
			return true;
		}else {
			return false;
		}
    }
}
