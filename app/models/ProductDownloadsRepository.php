<?php
final class ProductDownloadsRepository 
{
    private $db_connection;

    public function __construct(){
        $this->db_connection = new Database;
    }

    public function save_download_product_record($pid, $user_id){
        $this->db_connection->query('INSERT INTO `product_downloads`(`product_id`, `user_id`, `downloaded_at`)VALUES(:pid, :user_id, NOW())');
		$this->db_connection->bind(':user_id', $user_id);
		$this->db_connection->bind(':pid', $pid);
		if($this->db_connection->execute()){
			return true;
		}else {
			return false;
		}
    }
}
