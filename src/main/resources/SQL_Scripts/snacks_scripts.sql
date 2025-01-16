CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    phone_number BIGINT
);
CREATE TABLE Snack (
    snack_id INT AUTO_INCREMENT PRIMARY KEY,
    snack_name VARCHAR(255) ,
    price DOUBLE ,
    quantity INT ,
    menu_name VARCHAR(255) ,
    total_price DOUBLE ,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id) 
);
CREATE TABLE Tiffen (
    tiffen_id INT AUTO_INCREMENT PRIMARY KEY,
    tiffen_name VARCHAR(255) ,
    price DOUBLE ,
    quantity INT ,
    menu_name VARCHAR(255) ,
    total_price DOUBLE ,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id) 
);
 
