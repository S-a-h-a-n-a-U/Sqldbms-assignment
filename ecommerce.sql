DROP TABLE IF EXISTS OrderLine;
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Users;
DROP TABLE IF EXISTS Product;
CREATE TABLE Product (
    ProductId INT PRIMARY KEY,
    Name VARCHAR(50),
    Description TEXT,
    Quantity INT,
    Price DECIMAL(10,2)
);
CREATE TABLE Users (
    UserId INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    PhoneNo VARCHAR(15),
    Email VARCHAR(50)
);
CREATE TABLE Orders (
    OrderId INT PRIMARY KEY,
    UserId INT,
    TotalAmount DECIMAL(10,2),
    DateCreated DATE
);
CREATE TABLE OrderLine (
    OrderId INT,
    ProductId INT,
    Quantity INT
);
INSERT INTO Product VALUES
(1,'Laptop','Dell Laptop',10,50000),
(2,'Mouse','Wireless Mouse',50,500),
(3,'Keyboard','USB Keyboard',30,1000),
(4,'Monitor','LED Monitor',20,12000),
(5,'Printer','HP Printer',15,8000);
INSERT INTO Users VALUES
(1,'Rahul','Sharma','9876543210','rahul@gmail.com'),
(2,'Priya','Patil','9876501234','priya@gmail.com'),
(3,'Amit','Kumar','9123456789','amit@gmail.com');
INSERT INTO Orders VALUES
(101,1,50500,'2026-06-29'),
(102,2,1000,'2026-06-29'),
(103,3,12000,'2026-06-28'),
(104,1,8000,'2026-06-27'),
(105,2,60000,'2026-06-29');
INSERT INTO OrderLine VALUES
(101,1,1),
(101,2,1),
(102,3,6),
(103,2,2),
(104,5,1),
(105,1,1),
(105,2,20);
SELECT *
FROM Orders
WHERE DateCreated = '2026-06-29';
SELECT OrderId,
       UserId,
       TotalAmount
FROM (
    SELECT OrderId,
           UserId,
           TotalAmount,
           DENSE_RANK() OVER (ORDER BY TotalAmount DESC) AS RankNo
    FROM Orders
) RankedOrders
WHERE RankNo = 2;
SELECT OrderId
FROM OrderLine
GROUP BY OrderId
HAVING SUM(Quantity) > 5;
SELECT *
FROM OrderLine
WHERE ProductId = 2;
SELECT SUM(TotalAmount) AS TotalSales
FROM Orders
WHERE DateCreated = '2026-06-29';
SELECT *
FROM Orders
WHERE UserId = 1
ORDER BY DateCreated DESC;
