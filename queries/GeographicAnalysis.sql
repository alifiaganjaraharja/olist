SELECT customer_state, 
COUNT(DISTINCT customer_unique_id) AS number_of_customer,
ROUND(SUM(payment_value) )AS total_sales
FROM customers AS c
JOIN orders AS o
ON c.customer_id=o.customer_id
JOIN order_payment AS op
ON o.order_id=op.order_id
GROUP BY customer_state
ORDER BY total_sales DESC
LIMIT 10;