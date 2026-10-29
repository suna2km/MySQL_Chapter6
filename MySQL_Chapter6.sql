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
