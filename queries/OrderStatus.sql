SELECT order_status, 
COUNT(order_status) AS total
FROM orders
GROUP BY order_status
ORDER BY total DESC;