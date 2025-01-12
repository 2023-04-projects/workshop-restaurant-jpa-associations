CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY
);


CREATE TABLE Snack (
   snack_id int auto_increment primary key,
    name VARCHAR(100),
    price DOUBLE,
    user_id int,
	FOREIGN KEY (user_id) REFERENCES Users(user_id)
);


CREATE TABLE snack_order (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    snack_name VARCHAR(255) ,
    quantity INT,
    price double,
    menu_name varchar(200),
    total_price DOUBLE,
    user_id INT,
	FOREIGN KEY (user_id) REFERENCES Users(user_id)
);
