-- Promotion Effectiveness and Efficiency by Years
SELECT
 DISTINCT EXTRACT(YEAR FROM order_date) AS years,
 sum(sales) AS sales,
 sum(discount_value) AS promotion_value,
 round((round(sum(discount_value),2) / round(sum(sales),2))*100,2) AS burn_rate_percentage
FROM
 dqlab_sales_store
WHERE
 order_status = 'Order Finished'
GROUP BY
 1
ORDER BY
 1;