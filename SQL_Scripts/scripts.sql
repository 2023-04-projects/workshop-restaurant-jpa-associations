CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY
);

CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    snack_name VARCHAR(100),
    quantity INT,
    total_price DOUBLE,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);
CREATE TABLE Snacks (
    snack_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    price DOUBLE
);

CREATE TABLE order_snack (
    order_id INT NOT NULL,
    snack_id INT NOT NULL,
    PRIMARY KEY (order_id, snack_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (snack_id) REFERENCES Snacks(snack_id)
);
