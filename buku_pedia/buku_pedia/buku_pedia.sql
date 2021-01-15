CREATE DATABASE buku_pedia;
CREATE TABLE Books (
	product_id VARCHAR (10) NOT NULL,
	title VARCHAR (10) NOT NULL,
	author VARCHAR (15) NOT NULL,
	description VARCHAR (100) NOT NULL,
	price INT NOT NULL,
	category_id VARCHAR (10) NOT NULL,
	image VARCHAR (256) NOT NULL,
	PRIMARY KEY (product_id),
	FOREIGN KEY (category_id) REFERENCES Categories(category_id)
	);

CREATE TABLE Categories (
	category_id VARCHAR (10) NOT NULL,
	category_name VARCHAR (20) NOT NULL,
	category_description VARCHAR (100) NOT NULL,
	PRIMARY KEY (category_id)
	);

CREATE TABLE Promotion (
	promotion_id VARCHAR (20) NOT NULL,
	product_id VARCHAR (20) NOT NULL,
	PRIMARY KEY (product_id),
	FOREIGN KEY (product_id) REFERENCES Books(product_id)
	);