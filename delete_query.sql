use demo; 

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2),
    stock INT
);


INSERT INTO Products (product_id, product_name, category, price, stock) VALUES (1, 'Laptop', 'Electronics', 850.00, 25),
(2, 'Smartphone', 'Electronics', 650.00, 50),
(3, 'Headphones', 'Electronics', 150.00, 100),
(4, 'Keyboard', 'Accessories', 40.00, 200),
(5, 'Mouse', 'Accessories', 25.00, 180),
(6, 'Monitor', 'Electronics', 300.00, 40),
(7, 'Chair', 'Furniture', 120.00, 60),
(8, 'Desk', 'Furniture', 200.00, 30),
(9, 'Tablet', 'Electronics', 400.00, 45),
(10, 'Printer', 'Electronics', 250.00, 20),
(11, 'Scanner', 'Electronics', 175.00, 25),
(12, 'Webcam', 'Electronics', 85.00, 90),
(13, 'Fan', 'Appliances', 50.00, 70),
(14, 'Air Conditioner', 'Appliances', 1200.00, 10),
(15, 'Water Bottle', 'Accessories', 15.00, 300),
(16, 'Notebook', 'Stationery', 5.00, 500),
(17, 'Pen', 'Stationery', 2.00, 1000),
(18, 'Lamp', 'Furniture', 60.00, 35),
(19, 'Speaker', 'Electronics', 120.00, 80),
(20, 'Power Bank', 'Electronics', 35.00, 150);


select * from Products;
delete from Products where product_name = 'Smartphone';
delete from Products where price < 40;
select count(*) from Products;
delete from Products where category = 'Appliances' and price <= 50;
delete from Products where category = 'bottle'and price <= 10;