CREATE DATABASE SQL_Practice;

USE SQL_Practice;



-- Create Table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    ContactName VARCHAR(100),
    Address VARCHAR(150),
    City VARCHAR(50),
    PostalCode VARCHAR(20),
    Country VARCHAR(50),
    Phone VARCHAR(20)
);

-- Insert Demo Data
INSERT INTO Customers
(CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country, Phone)
VALUES
(1, 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany', '030-123456'),
(2, 'Ana Trujillo Emparedados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'Mexico City', '05021', 'Mexico', '555-987654'),
(3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'Mexico City', '05023', 'Mexico', '555-456789'),
(4, 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK', '020-765432'),
(5, 'Berglunds snabbköp', 'Christina Berglund', 'Berguvsvägen 8', 'Luleå', 'S-958 22', 'Sweden', '0920-123456'),
(6, 'Blauer See Delikatessen', 'Hanna Moos', 'Forsterstr. 57', 'Mannheim', '68306', 'Germany', '0621-987654'),
(7, 'Bon app', 'Laurence Lebihan', '12 rue des Bouchers', 'Marseille', '13008', 'France', '0491-123456'),
(8, 'Bottom-Dollar Marketse', 'Elizabeth Lincoln', '23 Tsawassen Blvd.', 'Tsawassen', 'T2F 8M4', 'Canada', '604-5551234'),
(9, 'Cactus Comidas', 'Patricio Simpson', 'Cerrito 333', 'Buenos Aires', '1010', 'Argentina', '011-234567'),
(10, 'Centro comercial Moctezuma', 'Francisco Chang', 'Sierras de Granada 9993', 'Mexico City', '05022', 'Mexico', '555-345678');



SELECT * 
FROM Customers;

SELECT DISTINCT City FROM Customers;

-- 1. Select specific columns
SELECT CustomerName, City, Country
FROM Customers;

-- 2. Customers from Mexico
SELECT *
FROM Customers
WHERE Country = 'Mexico';

-- 3. Customers from Mexico City
SELECT CustomerName, ContactName
FROM Customers
WHERE City = 'Mexico City';

-- 4. Sort customers by name
SELECT *
FROM Customers
ORDER BY CustomerName;

-- 5. Sort by CustomerID descending
SELECT *
FROM Customers
ORDER BY CustomerID DESC;

-- 6. Find customers whose name starts with 'A'
SELECT *
FROM Customers
WHERE CustomerName LIKE 'A%';

-- 7. Count customers
SELECT COUNT(*) AS TotalCustomers
FROM Customers;

-- 8. Count customers by country
SELECT Country, COUNT(*) AS CustomerCount
FROM Customers
GROUP BY Country;

SELECT * 
FROM Customers
WHERE PostalCode <> '05023';

SELECT *
FROM Customers
WHERE Country <> 'Germany';

SELECT *
FROM Customers
WHERE CustomerID BETWEEN 3 AND 8;

SELECT * 
FROM Customers
WHERE CustomerName Like '%lunds%';

SELECT *
FROM Customers
WHERE Country IN ('Germany', 'Mexico', 'Canada');