<?php
class MediaRepository{
    private $db_connection;

    public function __construct(){
        $this->db_connection = new Database;
    }

    public function get_media_by_id($id){
        $sql = "SELECT * FROM media WHERE id = :id";
        $statement = $this->db_connection->prepare($sql);
        $statement->bind(":id", $id);
        $statement->execute();
        $media = $statement->fetch(PDO::FETCH_ASSOC);
        return $media;
    }

    public function countMedia(){
        $this->db_connection->query(/** @lang text */"SELECT COUNT(*) AS count FROM media");
        // use can choose to use rowCount() or fetch_assoc()
        $stmt = $this->db_connection->fetch_assoc();
        return (!empty($stmt)) ? $stmt : '0';	
    }

    public function countDownload(){
        $this->db_connection->query(/** @lang text */"SELECT * FROM media");
        $stmt = $this->db_connection->rowCount();
		return (!empty($stmt)) ? $stmt : '0';	
    }
   
     public function getAllProducts(){
        $this->db_connection->query(/** @lang text */"SELECT * FROM media  ORDER BY created_time DESC");
        $stmt = $this->db_connection->fetch_assoc();
		return (!empty($stmt)) ? $stmt : '';
    }

    public function save_media($media_name, $description, $category, $imgType, $uploadPath){
        $this->db_connection->query("INSERT INTO media (media_name, description, category, file_type, file_path, created_time) VALUES (:media_name, :description, :category, :imgType, :uploadPath, NOW())");
        $this->db_connection->bind(':media_name', $media_name);
        $this->db_connection->bind(':description', $description);
        $this->db_connection->bind(':category', $category);
        $this->db_connection->bind(':imgType', $imgType);
        $this->db_connection->bind(':uploadPath', $uploadPath);
        if($this->db_connection->execute()){
			return true;
		}else {
			return false;
		}
    }
}