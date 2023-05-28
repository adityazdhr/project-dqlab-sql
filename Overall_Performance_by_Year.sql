-- Overall Performance by Year
SELECT 
EXTRACT(YEAR FROM order_date) AS years,
SUM(sales) AS sales,
COUNT(order_id) AS number_of_order
FROM dqlab_sales_store
WHERE order_date BETWEEN '2009-01-01' AND '2012-12-31' AND order_status = 'Order Finished'
GROUP BY 1
ORDER BY 1