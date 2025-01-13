CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY
    phone_number varchar(100)
);


CREATE TABLE Snack (
  snack_id int auto_increment primary key,
  snack_name VARCHAR(100),
  price DOUBLE,
  quantity INT,
  menu_name varchar(200),
  total_price DOUBLE,
  user_id int,
  FOREIGN KEY (user_id) REFERENCES Users(user_id)
);