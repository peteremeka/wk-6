USE salesDB;

/*
        Question 1
    An SQL query to get the firstName, lastName, email, and officeCode of 
    all employees. Using an INNER JOIN to combine the employees table with 
    the offices table using the officeCode column.
*/

SELECT firstName, lastName, email, emp.officeCode
FROM employees AS emp
INNER JOIN offices AS offs
ON emp.officeCode = offs.officeCode;


/*
        Question 2
    An SQL query to get the productName, productVendor, and productLine 
    from the products table. Using a LEFT JOIN to combine the products table 
    with the productlines table using the productLine column.
*/

SELECT productName, productVendor, prod.productLine
FROM products AS prod
LEFT JOIN productlines AS pl
ON prod.productLine = pl.productLine;


/*
        Question 3
    An SQL query to retrieve the orderDate, shippedDate, status, and 
    customerNumber for the first 10 orders. Using a RIGHT JOIN to combine 
    the customers table with the orders table using the customerNumber column.
*/

SELECT orderDate, shippedDate, status, o.customerNumber
FROM customers AS cus
RIGHT JOIN orders AS o 
ON o.customerNumber = o.customerNumber
LIMIT 10;