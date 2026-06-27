create database RetailDB_2;

CREATE TABLE customers (
    customer_id INT,
    name VARCHAR(50),
    email VARCHAR(100),
    city VARCHAR(50),
    signup_date DATE
);

INSERT INTO customers 
(customer_id, name, email, city, signup_date)
VALUES
(1, 'Rohit Kumar', 'rohit.kumar@gmail.com', 'Delhi', '2023-01-12'),
(2, 'Sneha Sharma', 'sneha.sharma@yahoo.com', 'Mumbai', '2023-02-05'),
(3, 'Amit Patel', 'amit.patel@gmail.com', 'Ahmedabad', '2023-02-18'),
(4, 'Priya Reddy', 'priya.reddy@gmail.com', 'Hyderabad', '2023-03-02'),
(5, 'Karan Singh', 'karan.singh@outlook.com', 'Chennai', '2023-03-15'),
(6, 'Neha Verma', 'neha.verma@gmail.com', 'Pune', '2023-04-01'),
(7, 'Arjun Mehta', 'arjun.mehta@gmail.com', 'Bengaluru', '2023-04-20'),
(8, 'Ritika Gupta', 'ritika.gupta@yahoo.com', 'Kolkata', '2023-05-12'),
(9, 'Vikram Joshi', 'vikram.joshi@gmail.com', 'Lucknow', '2023-05-25'),
(10, 'Ananya Das', 'ananya.das@gmail.com', 'Bhubaneswar', '2023-06-08'),
(11, 'Suresh Iyer', 'suresh.iyer@gmail.com', 'Chennai', '2023-06-20'),
(12, 'Megha Kapoor', 'megha.kapoor@yahoo.com', 'Jaipur', '2023-07-03'),
(13, 'Ravi Shankar', 'ravi.shankar@gmail.com', 'Delhi', '2023-07-15'),
(14, 'Tanya Mishra', 'tanya.mishra@gmail.com', 'Noida', '2023-08-01'),
(15, 'Aditya Jain', 'aditya.jain@gmail.com', 'Indore', '2023-08-14');

CREATE TABLE order_items (
    order_item_id INT,
    order_id INT,
    product_id INT,
    quantity INT,
    price_each INT
);

INSERT INTO order_items
(order_item_id, order_id, product_id, quantity, price_each)
VALUES
(1, 1, 1, 1, 79999),
(2, 2, 2, 1, 74999),
(3, 3, 3, 2, 4999),
(4, 4, 4, 1, 2499),
(5, 5, 5, 3, 1999),
(6, 6, 6, 1, 2999),
(7, 7, 7, 1, 6499),
(8, 8, 8, 1, 59999),
(9, 9, 9, 1, 55999),
(10, 10, 10, 2, 1499),
(11, 11, 1, 1, 79999),
(12, 12, 2, 1, 74999),
(13, 13, 3, 1, 4999),
(14, 14, 4, 2, 2499),
(15, 15, 5, 1, 1999),
(16, 16, 6, 2, 2999),
(17, 17, 7, 1, 6499),
(18, 18, 8, 1, 59999),
(19, 19, 9, 2, 55999),
(20, 20, 10, 1, 1499),
(21, 21, 5, 2, 1999),
(22, 22, 3, 1, 4999),
(23, 23, 4, 3, 2499),
(24, 24, 6, 1, 2999),
(25, 25, 1, 1, 79999),
(26, 26, 7, 1, 6499),
(27, 27, 8, 1, 59999),
(28, 28, 2, 1, 74999),
(29, 29, 9, 1, 55999),
(30, 30, 10, 2, 1499),
(31, 31, 6, 1, 2999),
(32, 32, 5, 1, 1999),
(33, 33, 3, 1, 4999),
(34, 34, 2, 1, 74999),
(35, 35, 9, 1, 55999),
(36, 36, 1, 1, 79999),
(37, 37, 7, 1, 6499),
(38, 38, 6, 1, 2999),
(39, 39, 9, 1, 55999),
(40, 40, 2, 1, 74999),
(41, 41, 5, 1, 1999),
(42, 42, 4, 1, 2499),
(43, 43, 10, 2, 1499),
(44, 44, 1, 1, 79999),
(45, 45, 2, 1, 74999),
(46, 46, 3, 1, 5999),
(47, 47, 5, 2, 1999),
(48, 48, 6, 1, 2999),
(49, 49, 9, 1, 9999),
(50, 50, 8, 1, 59999);

CREATE TABLE orders (
    order_id INT,
    customer_id INT,
    order_date DATE,
    total_amount INT,
    payment_mode VARCHAR(20)
);

INSERT INTO orders
(order_id, customer_id, order_date, total_amount, payment_mode)
VALUES
(1, 1, '2024-01-05', 79999, 'UPI'),
(2, 2, '2024-01-08', 74999, 'Credit Card'),
(3, 3, '2024-01-10', 9998, 'Debit Card'),
(4, 4, '2024-01-15', 2499, 'UPI'),
(5, 5, '2024-01-18', 5997, 'Cash'),
(6, 6, '2024-01-20', 2999, 'UPI'),
(7, 7, '2024-01-22', 6499, 'Credit Card'),
(8, 8, '2024-01-25', 59999, 'Net Banking'),
(9, 9, '2024-01-28', 55999, 'UPI'),
(10, 10, '2024-01-30', 2998, 'Debit Card'),
(11, 11, '2024-02-02', 79999, 'Credit Card'),
(12, 12, '2024-02-05', 74999, 'Net Banking'),
(13, 13, '2024-02-08', 4999, 'UPI'),
(14, 14, '2024-02-10', 4998, 'Cash'),
(15, 15, '2024-02-12', 1999, 'UPI'),
(16, 6, '2024-02-14', 5998, 'Credit Card'),
(17, 7, '2024-02-16', 6499, 'UPI'),
(18, 8, '2024-02-18', 59999, 'Debit Card'),
(19, 9, '2024-02-20', 111998, 'Credit Card'),
(20, 10, '2024-02-22', 1499, 'Cash'),
(21, 11, '2024-02-24', 3998, 'UPI'),
(22, 12, '2024-02-26', 4999, 'Net Banking'),
(23, 13, '2024-02-28', 7497, 'Credit Card'),
(24, 14, '2024-03-01', 2999, 'UPI'),
(25, 15, '2024-03-03', 79999, 'Debit Card'),
(26, 2, '2024-03-05', 6499, 'Credit Card'),
(27, 5, '2024-03-07', 59999, 'UPI'),
(28, 9, '2024-03-10', 74999, 'Cash'),
(29, 13, '2024-03-12', 55999, 'Net Banking'),
(30, 14, '2024-03-14', 2998, 'UPI'),
(31, 1, '2024-03-16', 1499, 'Cash'),
(32, 3, '2024-03-18', 2999, 'UPI'),
(33, 4, '2024-03-20', 1999, 'Debit Card'),
(34, 5, '2024-03-22', 4999, 'Credit Card'),
(35, 6, '2024-03-24', 74999, 'Net Banking'),
(36, 7, '2024-03-26', 55999, 'Cash'),
(37, 8, '2024-03-28', 79999, 'UPI'),
(38, 9, '2024-03-30', 2999, 'Credit Card'),
(39, 10, '2024-04-01', 6499, 'UPI'),
(40, 11, '2024-04-03', 55999, 'Debit Card'),
(41, 12, '2024-04-05', 1999, 'Cash'),
(42, 13, '2024-04-07', 2499, 'Net Banking'),
(43, 14, '2024-04-09', 2998, 'UPI'),
(44, 15, '2024-04-11', 79999, 'Credit Card'),
(45, 2, '2024-04-13', 74999, 'Net Banking'),
(46, 3, '2024-04-15', 5999, 'UPI'),
(47, 5, '2024-04-17', 7999, 'Credit Card'),
(48, 7, '2024-04-19', 2999, 'Cash'),
(49, 9, '2024-04-21', 9999, 'Debit Card'),
(50, 8, '2024-04-23', 59999, 'Net Banking');

CREATE TABLE products (
    product_id INT,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price INT,
    stock_qty INT,
    supplier_id INT
);

INSERT INTO products
(product_id, product_name, category, price, stock_qty, supplier_id)
VALUES
(1, 'iPhone 15', 'Electronics', 79999, 50, 1),
(2, 'Samsung Galaxy S24', 'Electronics', 74999, 40, 2),
(3, 'Noise Smartwatch', 'Wearables', 4999, 100, 3),
(4, 'Boat Earbuds', 'Wearables', 2499, 200, 4),
(5, 'Kurta Set', 'Fashion', 1999, 150, 7),
(6, 'Running Shoes', 'Fashion', 2999, 120, 7),
(7, 'Prestige Mixer Grinder', 'Home Appliances', 6499, 80, 5),
(8, 'Sony Bravia TV', 'Electronics', 59999, 30, 6),
(9, 'Lenovo Laptop', 'Electronics', 55999, 45, 2),
(10, 'Philips Trimmer', 'Personal Care', 1499, 90, 8);


CREATE TABLE suppliers (
    supplier_id INT,
    supplier_name VARCHAR(100),
    contact_email VARCHAR(100),
    city VARCHAR(50)
);

INSERT INTO suppliers
(supplier_id, supplier_name, contact_email, city)
VALUES
(1, 'Reliance Digital', 'support@reliance.com', 'Mumbai'),
(2, 'Croma Electronics', 'info@croma.com', 'Delhi'),
(3, 'Flipkart Seller Hub', 'sellers@flipkart.com', 'Bengaluru'),
(4, 'Amazon India Vendor', 'vendor@amazon.in', 'Hyderabad'),
(5, 'Tata Cliq', 'support@tatacliq.com', 'Pune'),
(6, 'Vijay Sales', 'sales@vijaysales.com', 'Chennai'),
(7, 'Lifestyle Stores', 'info@lifestylestores.com', 'Kolkata'),
(8, 'Metro Electronics', 'metro@electronics.com', 'Ahmedabad');


#Fetch all products along with their supplier name (INNER JOIN).

SELECT 
    products.product_id,
    products.product_name,
    products.category,
    products.price,
    suppliers.supplier_name
FROM products
INNER JOIN suppliers
ON products.supplier_id = suppliers.supplier_id;

#Find all customers and their orders, even if they have not placed any (LEFT JOIN).

SELECT 
    customers.customer_id,
    customers.name,
    orders.order_id,
    orders.order_date,
    orders.total_amount
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id;

#Get all suppliers and the products they supply, even if no products exist for a supplier (RIGHT JOIN)

SELECT 
    suppliers.supplier_id,
    suppliers.supplier_name,
    products.product_name,
    products.category
FROM products
RIGHT JOIN suppliers
ON products.supplier_id = suppliers.supplier_id;

#Show all customers and all orders (FULL OUTER JOIN simulation using UNION).
SELECT 
    customers.customer_id,
    customers.name,
    orders.order_id,
    orders.order_date,
    orders.total_amount
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id

UNION

SELECT 
    customers.customer_id,
    customers.name,
    orders.order_id,
    orders.order_date,
    orders.total_amount
FROM customers
RIGHT JOIN orders
ON customers.customer_id = orders.customer_id;

#List all products priced between ₹5000 and ₹50,000 and supplied from "Mumbai".

SELECT 
    products.product_id,
    products.product_name,
    products.price,
    suppliers.supplier_name,
    suppliers.city
FROM products
INNER JOIN suppliers
ON products.supplier_id = suppliers.supplier_id
WHERE products.price BETWEEN 5000 AND 50000
AND suppliers.city = 'Mumbai';

#Find the total number of orders placed by each customer and show only those who placed more than 2 (GROUP BY + HAVING).

SELECT 
    customers.customer_id,
    customers.name,
    COUNT(orders.order_id) AS total_orders
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_id, customers.name
HAVING COUNT(orders.order_id) > 2;

#Show each supplier’s total sales value (sum of quantity × price_each).

SELECT 
    suppliers.supplier_id,
    suppliers.supplier_name,
    SUM(order_items.quantity * order_items.price_each) AS total_sales_value
FROM suppliers
INNER JOIN products
ON suppliers.supplier_id = products.supplier_id
INNER JOIN order_items
ON products.product_id = order_items.product_id
GROUP BY suppliers.supplier_id, suppliers.supplier_name;

#Find the average, highest, and lowest price of products in each category

SELECT 
    category,
    AVG(price) AS average_price,
    MAX(price) AS highest_price,
    MIN(price) AS lowest_price
FROM products
GROUP BY category;

#Find the top 5 customers by total spending (ORDER BY SUM(total_amount) DESC LIMIT 5).

SELECT 
    customers.customer_id,
    customers.name,
    SUM(orders.total_amount) AS total_spending
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_id, customers.name
ORDER BY SUM(orders.total_amount) DESC
LIMIT 5;

#Show the number of unique products ordered by each customer

SELECT 
    customers.customer_id,
    customers.name,
    COUNT(DISTINCT order_items.product_id) AS unique_products_ordered
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id
INNER JOIN order_items
ON orders.order_id = order_items.order_id
GROUP BY customers.customer_id, customers.name;

#Find customers who placed an order with an amount greater than the average order amount (subquery)

select customers.customer_id, customers.name, orders.order_id,orders.total_amount
from customers 
inner join orders on customers.customer_id = orders.customer_id where orders.total_amount > (select avg(total_amount)from orders);

#Find products that have never been ordered (subquery with NOT IN)

SELECT *
FROM products
WHERE product_id NOT IN (
    SELECT DISTINCT product_id
    FROM order_items
);

#List customers who ordered at least one product from the "Electronics" category

SELECT DISTINCT
    customers.customer_id,
    customers.name
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id
INNER JOIN order_items
ON orders.order_id = order_items.order_id
INNER JOIN products
ON order_items.product_id = products.product_id
WHERE products.category = 'Electronics';

#Get suppliers who provide products that have been ordered more than 100  times in total.

SELECT 
    suppliers.supplier_id,
    suppliers.supplier_name,
    SUM(order_items.quantity) AS total_quantity_ordered
FROM suppliers
INNER JOIN products
ON suppliers.supplier_id = products.supplier_id
INNER JOIN order_items
ON products.product_id = order_items.product_id
GROUP BY suppliers.supplier_id, suppliers.supplier_name
HAVING SUM(order_items.quantity) > 100;


#Find the most expensive product(s) using a subquery with MAX().

SELECT *
FROM products
WHERE price = (
    SELECT MAX(price)
    FROM products
);

#.Show orders placed by customers who live in either Mumbai, Delhi, or Bengaluru (IN operator).

SELECT customers.name, customers.city
FROM orders
INNER JOIN customers
ON orders.customer_id = customers.customer_id
WHERE customers.city IN ('Mumbai', 'Delhi', 'Bengaluru');

#Show orders where payment mode is NOT UPI or Credit Card (NOT IN).

SELECT *
FROM orders
WHERE payment_mode NOT IN ('UPI', 'Credit Card');

#.Find customers who have no email address recorded (IS NULL).
SELECT *
FROM customers
WHERE email IS NULL;

#.Show suppliers who are not from the same city as any customer (NOT IN subquery)

SELECT *
FROM suppliers
WHERE city NOT IN (
    SELECT DISTINCT city
    FROM customers
);

#Get the latest 3 orders placed, skipping the first 2 (ORDER BY + LIMIT + OFFSET).


SELECT *
FROM orders
ORDER BY order_date DESC
LIMIT 3 OFFSET 2;
