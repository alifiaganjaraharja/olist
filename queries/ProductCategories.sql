SELECT p.product_category_name, 
cpn.product_category_name_english,
COUNT(oi.price) AS total_sales
FROM products AS p
JOIN order_items AS oi
ON p.product_id=oi.product_id
JOIN product_category_name AS cpn
ON p.product_category_name=cpn.product_category_name
GROUP BY p.product_category_name, cpn.product_category_name_english
ORDER BY total_sales DESC
LIMIT 10;