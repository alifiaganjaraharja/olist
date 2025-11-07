-- use a CTE to calculate performance for each individual ORDER
WITH DeliveryPerformance AS (
SELECT order_id, 

-- Calculate the actual delivery time in days
JULIANDAY(order_delivered_customer_date) - JULIANDAY(order_approved_at) AS actual_delivery_days,

-- Calculate the difference between estimated and actual delivery
-- Positive means early, and Negative means late
JULIANDAY(order_estimated_delivery_date) - JULIANDAY(order_delivered_customer_date) AS delivery_diff_days

FROM orders
WHERE 
-- only include orders that were successfully delivered and have valid dates or NOT NULL
order_status = 'delivered'
AND order_delivered_customer_date IS NOT NULL
AND order_estimated_delivery_date IS NOT NULL
)

-- Now aggregate the result from the CTE into a final summary
SELECT 
			-- Question 1: What is the average delivery time?
			ROUND(AVG(actual_delivery_days),2) AS average_delivery_time,
			
			-- Question 2: Are we meeting estimates?
			ROUND(AVG(delivery_diff_days),2) AS average_days_early,
			
			-- Calculate the percentage of on-time deliveries
			ROUND(SUM(CASE WHEN delivery_diff_days >= 0 THEN 1 ELSE 0 END) * 100.0 / COUNT(*),2) AS on_time_delivery_percentage
FROM DeliveryPerformance;
			