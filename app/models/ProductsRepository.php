<?php
final class ProductsRepository 
{
    private $db_connection;

    public function __construct(){
        $this->db_connection = new Database;
    }

    public function countProduct(){
        $this->db_connection->query(/** @lang text */"SELECT * FROM products");
        $stmt = $this->db_connection->rowCount();
		return (!empty($stmt)) ? $stmt : '0';
    }
    
    public function create_product($data){
        $this->db_connection->query("INSERT INTO products (name, title, description, category, tag, size, weight, sku_id, color) VALUES (:name, :title, :description, :category, :tag, :size, :weight, :sku_id, :color)");
        $this->db_connection->bind(':name', $data['name']);
        $this->db_connection->bind(':title', $data['title']);
        $this->db_connection->bind(':description', $data['description']);
        $this->db_connection->bind(':category', $data['category']);
        $this->db_connection->bind(':tag', $data['tag']);
        $this->db_connection->bind(':size', $data['size']);
        $this->db_connection->bind(':weight', $data['weight']);
        $this->db_connection->bind(':sku_id', $data['sku_id']);
        $this->db_connection->bind(':color', $data['color']);
        if($this->db_connection->execute()){
			return true;
		}else {
			return false;
		}
    }
    
    public function getAllProducts(){
        $this->db_connection->query(/** @lang text */"SELECT  p.id,  p.name,  p.title,  p.description,  p.category,  p.tag,  p.size,  p.weight,  p.sku_id,  p.color,  p.created_at, COUNT(DISTINCT pv.id) AS view_count, COUNT(DISTINCT d.id) AS download_count FROM products p LEFT JOIN product_views pv ON p.id = pv.product_id LEFT JOIN product_downloads d ON p.id = d.product_id GROUP BY p.id ORDER BY p.created_at DESC");
        $stmt = $this->db_connection->fetch_assoc();
		return (!empty($stmt)) ? $stmt : '';
    }

}
