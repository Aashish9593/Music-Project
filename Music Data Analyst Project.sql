--Q1. who is the senior most employee based on job title ?

SELECT * FROM employee
ORDER BY levels DESC
LIMIT 5


--Q2. What are top 10 values of tatal invoice

SELECT invoice_id, total FROM invoice
ORDER BY total DESC
LIMIT 10


--Q3. Which are top 15 countries have the most invoices 

SELECT COUNT(*) as cout, billing_country FROM invoice
GROUP BY billing_country
ORDER BY cout DESC
LIMIT 15


--Q4.  Wich city has the best customers, we would like to throw a promotional music festival in the city
-- we made the most money. write a query that returns one city that has the highest sum of invoice totals
-- return both the city name and sum of all invoice totals

SELECT (billing_city), SUM(total) FROM invoice


--Q5 Who is the best customer the  customer who has spent the most money will be declared the  best
-- customer. write a query that returns the person who has spent the most money.

SELECT customer.customer_id, customer.first_name,customer.last_name,SUM(invoice.total) as total
FROM customer
JOIN invoice ON customer.customer_id = invoice.customer_id
GROUP BY customer.customer_id
ORDER BY total DESC
LIMIT 10

