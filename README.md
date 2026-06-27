# E-commerce-database
Analyzed an e-commerce database using SQL to solve 20 real-world business problems involving customers, products, suppliers, and orders.



Task: Solve all the below mentioned problems by writing the SQL queries.
a) Normal Queries
1. Fetch all products along with their supplier name (INNER JOIN).
2. Find all customers and their orders, even if they have not placed any (LEFT JOIN).
3. Get all suppliers and the products they supply, even if no products exist for a supplier (RIGHT JOIN).
4. Show all customers and all orders (FULL OUTER JOIN simulation using UNION).
5. List all products priced between ₹5000 and ₹50,000 and supplied from "Mumbai".
b) Aggregations & Group By
6. Find the total number of orders placed by each customer and show only those
who placed more than 2 (GROUP BY + HAVING).
7. Show each supplier’s total sales value (sum of quantity × price_each).
8. Find the average, highest, and lowest price of products in each category.
9. Find the top 5 customers by total spending (ORDER BY SUM(total_amount)
DESC LIMIT 5).
10.Show the number of unique products ordered by each customer.
c) Subqueries
11.Find customers who placed an order with an amount greater than the average
order amount (subquery).
12.Find products that have never been ordered (subquery with NOT IN).
13.List customers who ordered at least one product from the "Electronics" category.
14.Get suppliers who provide products that have been ordered more than 100
times in total.
15.Find the most expensive product(s) using a subquery with MAX().
d) Advanced Filters
16.Show orders placed by customers who live in either Mumbai, Delhi, or
Bengaluru (IN operator).
17.Show orders where payment mode is NOT UPI or Credit Card (NOT IN).
18.Find customers who have no email address recorded (IS NULL).
19.Show suppliers who are not from the same city as any customer (NOT IN
subquery).
20.Get the latest 3 orders placed, skipping the first 2 (ORDER BY + LIMIT +
OFFSET).
