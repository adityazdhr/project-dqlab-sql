-- Overall Performance by Product Sub Category
SELECT
EXTRACT(YEAR FROM order_date) AS years,
product_sub_category,
SUM(Sales) AS sales
FROM dqlab_sales_store
WHERE (EXTRACT(YEAR FROM order_date) = '2011' OR EXTRACT(YEAR FROM order_date) = '2012') AND order_status = 'Order Finished'
GROUP BY 1,2
ORDER BY 1,3 DESC