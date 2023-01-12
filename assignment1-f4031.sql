SELECT city, COUNT(customer_id)
FROM sale.customer
GROUP BY city
ORDER BY COUNT(customer_id) DESC;

SELECT order_id, SUM(quantity)
FROM sale.order_item
GROUP BY order_id;

SELECT customer_id, MIN(order_date)
FROM sale.orders
GROUP BY customer_id;

SELECT order_id, SUM(quantity)
FROM sale.order_item
GROUP BY order_id
ORDER BY SUM(quantity) DESC;

SELECT TOP 1 order_id, AVG(list_price)
FROM sale.order_item
GROUP BY order_id
ORDER BY AVG(list_price) DESC;

SELECT brand_id, product_id, list_price
FROM product.product
ORDER BY brand_id ASC, list_price DESC;

SELECT brand_id, product_id, list_price
FROM product.product
ORDER BY list_price DESC, brand_id ASC;

-- The result set is different since  at first the "list_price" feature is sorted in descendin order and then the brand_id's are sorted in ascending order according to prices.

SELECT TOP 10 *
FROM product.product
WHERE list_price >= 3000;

SELECT TOP 10 *
FROM product.product
WHERE list_price < 3000;

SELECT last_name
FROM sale.customer
WHERE last_name LIKE 'B%s';

SELECT *
FROM sale.customer
WHERE city IN ('Allen', 'Buffalo', 'Boston', 'Berkeley');