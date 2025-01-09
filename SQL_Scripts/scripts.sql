
CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    phone_number VARCHAR(15)
);

CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    snack_name VARCHAR(100),
    quantity INT,
    total_price DOUBLE,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);
CREATE TABLE Snacks (
    snack_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    price DOUBLE
);