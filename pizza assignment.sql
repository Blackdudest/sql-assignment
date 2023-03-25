-- Q1 Subqueries in the From clause

SELECT
	pizza_id,
	SUM(quantity) AS sum_quantity
FROM (
SELECT
		*
	FROM order_details
	WHERE pizza_id LIKE ('s%')
) AS subquery
GROUP BY
	pizza_id
ORDER BY
	sum_quantity DESC;



-- Q2 Subqueries in the Where Clause	

SELECT
	pizza_id,
	price
FROM
	pizzas
WHERE price > (SELECT
	AVG(price)
FROM
	pizzas);