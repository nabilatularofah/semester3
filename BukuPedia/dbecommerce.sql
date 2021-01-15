CREATE USER ecommerce IDENTIFIED BY 'ecommerce';
DROP DATABASE IF EXISTS dbecommerce;
CREATE DATABASE dbecommerce;
USE dbecommerce;
GRANT ALL ON dbecommerce.* TO ecommerce;

CREATE TABLE categories (
    category_id VARCHAR(5) NOT NULL,
    category_name VARCHAR(30) NOT NULL,
    category_description VARCHAR(100) NOT NULL,
    PRIMARY KEY(category_id)
);

INSERT INTO `categories` (`category_id`, `category_name`, `category_description`) VALUES
('1', 'Fiksi', 'Berisi buku buku pelajaran'),
('2', 'Non Fiksi', 'Berisi novel, buku cerita dan lain lain'),
('3', 'Biografi', 'Berisi tentang biografi atau kehidupan seseorang'),
('4', 'Komik', 'Kumpulan komik komik dari negri sakura')
('5', 'Ensiklopedi', ' berisi penjelasan mengenai setiap cabang ilmu pengetahuan');

CREATE TABLE products (
    product_id VARCHAR(5) NOT NULL,
    title VARCHAR (10) NOT NULL,
    author VARCHAR (15) NOT NULL,
    description VARCHAR(100) NOT NULL,
    price INT NOT NULL,
    category_id VARCHAR(5) NOT NULL,
    image VARCHAR(256) NOT NULL,
    PRIMARY KEY(product_id),
    FOREIGN KEY(category_id) REFERENCES categories(category_id)
);

INSERT INTO `products`(`product_id`, `title`, `author`, `description`, `price`, `category_id`, `image`) VALUES
('1', 'Otodidak Pemrograman Pyhton', 'Jubilee Interprise', 'Membahas pemrograman Python untuk para pemula', 42900, '1', 'https://ebooks.gramedia.com/ebook-covers/40561/big_covers/ID_EMK2017MTH10OPPY_B.jpg'),
('2', 'Si Anak Pintar', 'Tere Liye', 'buku ini tentang Pukat, si anak paling pintar dalam keluarga, masa kecilnya dipenuhi petualangan seru dan kejadian kocak serta jangan lupakan pertengkaran dengan kakak dan adik-adiknya.', 70000, '2', 'https://cdn.gramedia.com/uploads/items/9786025734502_si-anak-pinta.jpg'),
('3', 'Soekarno : Biografi Singkat 1901 - 1970', 'Taufik Adi Susilo', 'Soekarno adalah founding father, orator ulung, berwibawa, kharismatik, cendikiawan, ideolog, dan bahkan sosok yang sempurna sebagai pemimpin bangsa.', 70000, '3', 'https://cdn.gramedia.com/uploads/items/soekarno_0bGwltW.jpg'),
('4', 'One Piece 89', 'Eiichiro Oda','Waktu penentuan untuk pertarungan ekstrem telah tiba!! Inilah kisah petualangan di lautan, One Piece!!', 25000, '4', 'https://cdn.gramedia.com/uploads/items/9786230001642_Cov_One_Piece.jpg'),
('5', 'Konflik Bersejarah - Ensiklopedi Pendudukan Jepang di Indonesia', 'Nino Oktorino', 'Buku ini memberikan informasi lengkap mengenai zaman pendudukan Jepang di Indonesia.', 110000, '5', 'https://cdn.gramedia.com/uploads/items/ID_EMK2013MTH12KBEPJDI_C_.jpg'); 

CREATE TABLE promotion (
    promotion_id VARCHAR(5) NOT NULL,
    product_id VARCHAR(5) NOT NULL,
    PRIMARY KEY(promotion_id),
    FOREIGN KEY(product_id) REFERENCES products(product_id)
);

INSERT INTO `promotion` (`promotion_id`, `product_id`) VALUES
('3', '1'),
('4', '2'),
('1', '3'),
('2', '4');

ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);


ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);


ALTER TABLE `promotion`
  ADD PRIMARY KEY (`promotion_id`),
  ADD KEY `product_id` (`product_id`);

ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);

ALTER TABLE `promotion`
  ADD CONSTRAINT `promotion_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;
