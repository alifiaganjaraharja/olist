SELECT 
CASE WHEN payment_value <= 100.0  THEN 'Small' -- up the median value
			WHEN payment_value > 100.0 AND payment_value <= 171.84 THEN 'Medium' -- Between median and 75th percentile  
			WHEN payment_value >= 171.84 THEN 'Large' -- Top 25% or orders 
			ELSE 'none' END AS order_value_tier,
payment_type,
COUNT(*) AS number_of_orders
FROM order_payment
GROUP BY 
CASE WHEN payment_value <= 100.0 THEN 'Small'
			WHEN payment_value > 100.0 AND payment_value <= 171.84 THEN 'Medium'
			WHEN payment_value >= 171.84 THEN 'Large'
			ELSE 'none'
			END,
payment_type
ORDER BY order_value_tier, payment_type;