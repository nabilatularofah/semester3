CREATE DATABASE bukuPedia;
CREATE TABLE categories(
	category_id VARCHAR (10) NOT NULL,
	cetegory_name VARCHAR (30) NOT NULL,
	category_description VARCHAR (100) NOT NULL,
	PRIMARY KEY (category_id)
	);
	
CREATE TABLE books (
	product_id VARCHAR (10) NOT NULL,
	title VARCHAR (20) NOT NULL,
	author VARCHAR (20) NOT NULL,
	description VARCHAR (100) NOT NULL,
	price INT NOT NULL,
	category_id VARCHAR (15) NOT NULL,
	image VARCHAR (256) NOT NULL,
	PRIMARY KEY (product_id),
	FOREIGN KEY (category_id) REFERENCES categories(category_id)
	); 
	
CREATE TABLE promotion (
	promotion_id VARCHAR (5) NOT NULL,
	product_id VARCHAR (10) NOT NULL,
	PRIMARY KEY (promotion_id),
	FOREIGN KEY (product_id) REFERENCES books(product_id)
	);