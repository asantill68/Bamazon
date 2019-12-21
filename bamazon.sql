create database bamazon;
use bamazon;

create table products(
    itemid integer auto_increment not null,
    product_name VARCHAR(45) not null,
    department_name VARCHAR(45) not null,
    price DECIMAL(10,2) not null,
    stock_quantity INTEGER(250) not null,
    PRIMARY KEY (itemid)
);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Antibiotic I", "Medicines", 15.50, 100),
        ("Pain Reliever I", "Medicines", 10.35, 155),
        ("Spinach", "Produce", 2.50, 75),
        ("Tomatoes", "Produce", 1.25, 85),
        ("Brockli", "Produce", 1.75, 55),
        ("Shampoo", "Cosmetics", 4.50, 150),
        ("Soap", "Cosmetics", 1.25, 95),
        ("Toothbrush", "Cosmetics", 3.50, 200),
        ("Chair", "Furniture", 35.00, 75),
        ("Table", "Furniture", 77.00, 35);

SELECT * FROM bamazon.products;
