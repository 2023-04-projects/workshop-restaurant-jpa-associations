CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY
);

CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    item_name VARCHAR(100),
    quantity INT,
    total_price DOUBLE,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);
CREATE TABLE Lunch (
    lunch_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    price DOUBLE
);

CREATE TABLE order_lunch(
    order_id INT NOT NULL,
    lunch_id INT NOT NULL,
    PRIMARY KEY (order_id, lunch_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (lunch_id) REFERENCES lunch(lunch_id)
);
