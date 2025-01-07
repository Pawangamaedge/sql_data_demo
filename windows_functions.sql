use const;
show tables;
CREATE TABLE if not exists sales (
    sale_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(30),
    sales_amount DECIMAL(10, 2),
    sales_date DATE
);

INSERT INTO sales (sale_id, product_name, category, sales_amount, sales_date) VALUES
(1, 'Laptop', 'Electronics', 1200.00, '2024-01-01'),
(2, 'Smartphone', 'Electronics', 800.00, '2024-01-02'),
(3, 'Tablet', 'Electronics', 600.00, '2024-01-03'),
(4, 'Headphones', 'Accessories', 150.00, '2024-01-04'),
(5, 'Mouse', 'Accessories', 40.00, '2024-01-05'),
(6, 'Keyboard', 'Accessories', 70.00, '2024-01-06'),
(7, 'Monitor', 'Electronics', 300.00, '2024-01-07'),
(8, 'Printer', 'Office Supplies', 250.00, '2024-01-08'),
(9, 'Desk', 'Furniture', 450.00, '2024-01-09'),
(10, 'Chair', 'Furniture', 200.00, '2024-01-10'),
(11, 'USB Cable', 'Accessories', 20.00, '2024-01-11'),
(12, 'Power Bank', 'Accessories', 50.00, '2024-01-12'),
(13, 'Smartwatch', 'Electronics', 350.00, '2024-01-13'),
(14, 'Camera', 'Electronics', 500.00, '2024-01-14'),
(15, 'Notebook', 'Office Supplies', 5.00, '2024-01-15'),
(16, 'Pen', 'Office Supplies', 2.50, '2024-01-16'),
(17, 'Tablet', 'Electronics', 600.00, '2024-01-17'),
(18, 'Chair', 'Furniture', 220.00, '2024-01-18'),
(19, 'Mouse', 'Accessories', 45.00, '2024-01-19'),
(20, 'Monitor', 'Electronics', 320.00, '2024-01-20'),
(21, 'Laptop', 'Electronics', 1300.00, '2024-01-21'),
(22, 'Smartphone', 'Electronics', 750.00, '2024-01-22'),
(23, 'Desk', 'Furniture', 500.00, '2024-01-23'),
(24, 'Keyboard', 'Accessories', 80.00, '2024-01-24'),
(25, 'Smartwatch', 'Electronics', 400.00, '2024-01-25'),
(26, 'Headphones', 'Accessories', 160.00, '2024-01-26'),
(27, 'Camera', 'Electronics', 450.00, '2024-01-27'),
(28, 'Laptop', 'Electronics', 1100.00, '2024-01-28'),
(29, 'Printer', 'Office Supplies', 280.00, '2024-01-29'),
(30, 'Tablet', 'Electronics', 700.00, '2024-01-30');

select * from sales;

select category, sum(sales_amount) as final_amount from sales;

select category, avg(sales_amount) over (partition by sales_amount ) as avg_amount from sales;


-- Rank Products by sales_amount in Descending Order
select *, rank() over (order by sales_amount desc) from sales;


-- Rank Products by Category and Sales Amount
select *, rank() over (partition by category order by sales_amount) as new_one from sales;

-- Find Top 3 Highest Sales in Each Category
select sale_id, product_name, category from ( select sale_id, product_name, category, rank() over (partition by category order by sales_amount) as high_rank from sales) as ranked_class where high_rank <= 3;

-- Find the rank of each product by sales_date. 
select *, rank() over (sales_date ) from sales;

-- Rank products within each category by sales_amount in ascending order.
select *, rank() over (partition by category order by sales_amount desc) as rank_no from sales;

-- Display products ranked by sales_amount within the Office Supplies category only.
select *, rank() over (partition by category order by sales_amount ) as category_column from sales where category = 'Office Supplies';


