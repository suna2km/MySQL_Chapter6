/********************************************************
Date: 2026-10-13
Name: Suna Aregay, 
Chapter 6 Assignment
Github URL: https://github.com/suna2km/MySQL_Chapter6
*********************************************************/
/********************************************************************
Programmer Name: Suna Aregay
Query 1: COUNT
Write a query that returns the total number of rentals and the total returned.
*****************************************************************************************/
SELECT 
	COUNT(*) AS total_rentals,
    COUNT(return_date) AS total_returned
FROM rental;

 /*
Programmer Name: Michael Szigethy
Query 2: COUNT(DISTINCT column)
Write a query that returns the total number of unique customers payments and the total number of payments.
*/
    
SELECT 
	COUNT(DISTINCT customer_id) AS unique_customers,
	COUNT(payment_id) AS total_number_of_payments
FROM payment;
/********************************************************************
Programmer Name: Suna Aregay
Query 3: GROUP BY and HAVING
Write a query that returns total number of payments, min, max, and rounded avg payment, and the total amount pay
PER CUSTOMER which have a total amount paid over > $100.00
*****************************************************************************************/
SELECT
	customer_id,
    COUNT(customer_id) AS number_of_payment,
    MIN(amount) AS min_payment,
    MAX(amount) AS max_payment,
    ROUND(AVG(amount), 2) AS avg_payment,
	SUM(amount) AS total_amount_paid
FROM payment
GROUP BY customer_id
HAVING total_amount_paid > 100;
