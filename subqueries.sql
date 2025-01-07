use const;
            
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    country VARCHAR(50),
    age INT
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_ammount DECIMAL(10, 2),
    order_date DATE,
    foreign key (customer_id) references customers(customer_id)
);

INSERT INTO customers (customer_id, customer_name, country, age) VALUES
(1, 'Alice Smith', 'USA', 34),
(2, 'Bob Johnson', 'Canada', 28),
(3, 'Charlie Lee', 'UK', 45),
(4, 'David Brown', 'USA', 38),
(5, 'Eva Green', 'Australia', 29),
(6, 'Frank White', 'Canada', 50),
(7, 'Grace Black', 'UK', 31),
(8, 'Helen Adams', 'Australia', 27),
(9, 'Ian Bell', 'USA', 40),
(10, 'Jack Grey', 'USA', 33);


INSERT INTO orders (order_id, customer_id, order_ammount, order_date) VALUES
(101, 1, 250.75, '2024-01-05'),
(102, 2, 120.50, '2024-01-06'),
(103, 3, 300.00, '2024-01-07'),
(104, 4, 450.25, '2024-01-08'),
(105, 5, 175.00, '2024-01-09'),
(106, 1, 600.00, '2024-01-10'),
(107, 6, 210.75, '2024-01-11'),
(108, 7, 320.00, '2024-01-12'),
(109, 8, 400.50, '2024-01-13'),
(110, 2, 150.00, '2024-01-14'),
(111, 9, 220.00, '2024-01-15'),
(112, 10, 330.75, '2024-01-16'),
(113, 5, 420.80, '2024-01-17'),
(114, 4, 550.00, '2024-01-18'),
(115, 3, 375.25, '2024-01-19'),
(116, 7, 100.50, '2024-01-20'),
(117, 1, 50.00, '2024-01-21'),
(118, 8, 275.25, '2024-01-22'),
(119, 9, 600.00, '2024-01-23'),
(120, 10, 200.40, '2024-01-24');

select * from orders;

SELECT 
    customer_name
FROM
    customers
WHERE
    customer_id IN (SELECT 
            customer_id
        FROM
            orders
        WHERE
            order_ammount > 400);
    
    
select * from customers;
select * from orders;



-- Find the names of customers who have placed more than one order:
SELECT 
    customer_id, customer_name
FROM
    customers
WHERE
    customer_id IN (SELECT 
            customer_id
        FROM
            orders
        GROUP BY customer_id
        HAVING COUNT(order_id) > 1);
        

-- List the order IDs for orders with amounts higher than the average order amount:
select * from orders;
	
SELECT 
    order_id
FROM
    orders
GROUP BY order_id
HAVING MAX(order_ammount) > (SELECT 
        AVG(order_ammount)
    FROM
        orders);

SELECT 
    order_id
FROM
    orders
WHERE
    order_ammount > (SELECT 
            AVG(order_ammount)
        FROM
            orders);


-- Find customers who have not placed any orders:
SELECT 
    customer_name
FROM
    customers
WHERE
    customer_id NOT IN (SELECT 
            customer_id
        FROM
            orders);
            
-- Retrieve the highest order amount for each customer :
select * from orders;
            
SELECT 
    customer_name,
    (SELECT 
            MAX(order_ammount)
        FROM
            orders
        WHERE
            orders.customer_id = customers.customer_id) AS MaxOrderAmount
FROM
    customers;
    
-- Display customer names and their total order count:
select * from orders;

SELECT 
    customer_name,
    (SELECT 
            COUNT(order_id)
        FROM
            orders
        WHERE
            orders.customer_id = customers.customer_id) AS total_count
FROM
    customers;
    
-- Find customers from the USA who placed orders greater than $300:
SELECT 
    customer_name
FROM
    customers
WHERE
    country = 'USA' and customer_id in (SELECT 
            customer_id
        FROM
            orders
        WHERE
            order_ammount > 300);
            
-- List the names of customers who placed the most expensive order:
select * from orders;
SELECT 
    customer_name
FROM
    customers
WHERE
    customer_id = (SELECT 
            customer_id
        FROM
            orders
        WHERE
            order_ammount IN (SELECT 
                    MAX(order_ammount)
                FROM
                    orders));

    