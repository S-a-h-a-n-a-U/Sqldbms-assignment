#Question

DBMS - SQL 
Create the following tables: 
Product 
Product Id 
Name (varchar) 
Desc (text) 
Quantity (int) 
Price (decimal) 
User 
User Id  
First Name 
Last Name 
Phone no  
Email 
Order 
Order Id  
User Id  
Total Amount 
Date created 
OrderLine 
Order Id 
Product Id 
Quantity 
Fill the tables with appropriate data and run the following queries 
Write a query to fetch today’s order(s) 
Write a query to fetch the nth highest amount of order 
Write a query to fetch all orders having more than 5 items 
Write a query to fetch orders that have a specific Product Id 
Write a query to calculate today’s total sale 
Write a query to sort any given user’s orders in descending order. ( from today to past) 


#Bash
sqlite3 ecommerce.db
then
.read ecommerce.sql
