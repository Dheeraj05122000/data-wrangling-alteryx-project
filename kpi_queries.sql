##Total Revenue

SELECT SUM(purchase_amount) AS total_revenue
FROM shopping_trends;

##Average Order Value

SELECT AVG(purchase_amount) AS avg_order_value
FROM shopping_trends;

##Total Customers

SELECT COUNT(DISTINCT customer_id) AS total_customers
FROM shopping_trends;

##Revenue by Gender

SELECT gender,
       SUM(purchase_amount) AS total_revenue
FROM shopping_trends
GROUP BY gender
ORDER BY total_revenue DESC;

##Top 5 Product Categories

SELECT category,
       SUM(purchase_amount) AS revenue
FROM shopping_trends
GROUP BY category
ORDER BY revenue DESC
LIMIT 5;

##Monthly Sales Trend

SELECT 
    DATE_FORMAT(purchase_date, '%Y-%m') AS month,
    SUM(purchase_amount) AS monthly_revenue
FROM shopping_trends
GROUP BY month
ORDER BY month;
