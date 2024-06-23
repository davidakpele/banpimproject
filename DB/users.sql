CREATE DATABASE banpim;

USE banpim;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(50) NOT NULL ,
    firstname VARCHAR(50) NOT NULL,
    lastname VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    title VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    category VARCHAR(100) NOT NULL,
    tag VARCHAR(100) NOT NULL,
    size VARCHAR(50) NOT NULL,
    weight VARCHAR(50) NOT NULL,
    sku_id VARCHAR(50) NOT NULL,
    color VARCHAR(50) NOT NULL,
    views INT DEFAULT 0,
    downloads INT DEFAULT 0
);

CREATE TABLE media (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    category VARCHAR(100) NOT NULL,
    file_path VARCHAR(255) NOT NULL,
    downloads INT DEFAULT 0
);
