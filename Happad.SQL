
CREATE DATABASE HAPPAD;

USE  HAPPAD;
show tables;

create table Products(
pro_id INT PRIMARY KEY,
pro_name VARCHAR(50),
pro_price DOUBLE NOT NULL,
stock_quantity INT ,
cat_id INT ,
FOREIGN KEY (cat_id ) references Categories(cat_id)
);
INSERT INTO Products (pro_id, pro_name, pro_price, stock_quantity, cat_id) VALUES
(1, 'Smartphone', 79999.00, 50, 1),
(2, 'Laptop', 129999.00, 30, 1),
(3, 'Tablet', 39999.00, 40, 1),
(4, 'Camera', 59999.00, 25, 1),
(5, 'Headphones', 14999.00, 20, 1),
(6, 'T-shirt', 1999.00, 70, 2),
(7, 'Jeans', 3999.00, 20, 2),
(8, 'Dress', 4999.00, 15, 2),
(9, 'Shoes', 7999.00, 35, 2),
(10, 'Socks', 999.00, 20, 2),
(11, 'Book', 1299.00, 100, 3),
(12, 'Magazine', 599.00, 60, 3),
(13, 'Cookbook', 2999.00, 50, 3),
(14, 'Beauty Cream', 2999.00, 45, 4),
(15, 'Shampoo', 999.00, 35, 4),
(16, 'Lipstick', 1499.00, 25, 4),
(17, 'Face Wash', 1999.00, 30, 4),
(18, 'Toothpaste', 499.00, 50, 4),
(19, 'Microwave', 14999.00, 30, 5),
(20, 'Vacuum Cleaner', 19999.00, 40, 5),
(21, 'Coffee Maker', 7999.00, 55, 5),
(22, 'Baby Diapers', 2999.00, 65, 6),
(23, 'Baby Wipes', 1499.00, 120, 6),
(24, 'Car Seat', 9999.00, 80, 7),
(25, 'Motorbike Helmet', 14999.00, 70, 7),
(26, 'Shower Gel', 799.00, 45, 8),
(27, 'Hand Sanitizer', 399.00, 30, 8),
(28, 'Vitamins', 1999.00, 40, 8),
(29, 'First Aid Kit', 2499.00, 25, 8);

select * from Products;

-- ======================================================================================================================
-- CREATING A CATEGORIES TABLE.
create table Categories (
cat_id INT PRIMARY KEY,
cat_name VARCHAR(100)
);

INSERT INTO Categories values 
(1, "Electronics"),
(2,"Clothing"),
(3, "Books"),
(4 , "Beauty and Cosmetics"),
(5 , "Home and Kitchen Appliances"),
(6 , "Babies Products"),
(7 , "Cars and MotorBikes"),
(8, "Personal Care and Health");

select * from Categories;

-- =============================================================================================================

ALTER TABLE Customers
MODIFY COLUMN c_phn_no VARCHAR(11) NOT NULL;
-- CREATING CUSTOMERS TABLE.
CREATE TABLE Customers (
	c_id INT PRIMARY KEY,
    c_name VARCHAR(255) NOT NULL,
    c_email varchar(255) NOT NULL,
    c_phn_no VARCHAR(11) NOT NULL
);

-- Insert demo data into Customers table
INSERT INTO Customers (c_id, c_name, c_email, c_phn_no) VALUES
(1, 'John Doe', 'john@example.com', '9876543210'),
(2, 'Alice Smith', 'alice@example.com', '8765432109'),
(3, 'Bob Johnson', 'bob@example.com', '7654321098'),
(4, 'Emily Brown', 'emily@example.com', '6543210987'),
(5, 'Michael Davis', 'michael@example.com', '5432109876'),
(6, 'Aarav Gupta', 'aarav@example.com', '4321098765'),
(7, 'Aanya Sharma', 'aanya@example.com', '3210987654'),
(8, 'Advik Singh', 'advik@example.com', '2109876543'),
(9, 'Advita Patel', 'advita@example.com', '1098765432'),
(10, 'Anaya Kumar', 'anaya@example.com', '0987654321'),
(11, 'Arnav Tiwari', 'arnav@example.com', '9876543210'),
(12, 'Arya Mishra', 'arya@example.com', '8765432109'),
(13, 'Atharva Reddy', 'atharva@example.com', '7654321098'),
(14, 'Avni Yadav', 'avni@example.com', '6543210987'),
(15, 'Diya Gupta', 'diya@example.com', '5432109876'),
(16, 'John Smith', 'john@example.com', '4321098765'),
(17, 'Emily Johnson', 'emily@example.com', '3210987654'),
(18, 'Michael Brown', 'michael@example.com', '2109876543'),
(19, 'Sophia Williams', 'sophia@example.com', '1098765432'),
(20, 'William Davis', 'william@example.com', '0987654321'),
(21, 'Olivia Jones', 'olivia@example.com', '9876543210'),
(22, 'David Martinez', 'david@example.com', '8765432109'),
(23, 'Emma Anderson', 'emma@example.com', '7654321098'),
(24, 'Liam Taylor', 'liam@example.com', '6543210987'),
(25, 'Charlotte Thomas', 'charlotte@example.com', '5432109876'),
(26, 'Luis Garcia', 'luis@example.com', '4321098765'),
(27, 'Sophie Martin', 'sophie@example.com', '3210987654'),
(28, 'Lucas Rodriguez', 'lucas@example.com', '2109876543'),
(29, 'Ella Hernandez', 'ella@example.com', '1098765432'),
(30, 'Alexander Lopez', 'alexander@example.com', '0987654321');

select * from Customers;




-- Creating Orders Table 

Create table Orders (
Order_id INT PRIMARY KEY,
c_id INT ,
FOREIGN KEY (c_id) references Customers(c_id),
Order_Date DATE

);

-- Inserting data into Orders table
INSERT INTO Orders (Order_id, c_id, Order_Date) VALUES
(1, 1, '2023-01-15'),
(2, 2, '2023-01-18'),
(3, 3, '2023-03-22'),
(4, 4, '2023-04-25'),
(5, 5, '2023-05-28'),
(6, 6, '2023-06-10'),
(7, 7, '2023-07-12'),
(8, 8, '2023-08-14'),
(9, 9, '2023-09-16'),
(10, 10, '2023-10-20'),
(11, 11, '2024-01-05'),
(12, 12, '2024-02-07'),
(13, 13, '2024-03-09'),
(14, 14, '2024-04-11'),
(15, 15, '2024-05-13'),
(16, 16, '2024-06-15'),
(17, 17, '2024-07-17'),
(18, 18, '2024-08-19'),
(19, 19, '2024-09-21'),
(20, 20, '2024-10-23'),
(21, 1, '2023-11-26'),
(22, 1, '2023-12-26'),
(23, 2, '2023-01-27'),
(24, 2, '2023-02-27'),
(25, 3, '2023-03-28'),
(26, 3, '2023-04-28'),
(27, 4, '2023-05-29'),
(28, 4, '2023-06-29'),
(29, 5, '2023-07-30'),
(30, 5, '2023-08-30'),
(31, 6, '2024-09-25'),
(32, 6, '2024-10-25'),
(33, 7, '2024-11-26'),
(34, 7, '2024-12-26'),
(35, 8, '2024-01-27'),
(36, 8, '2024-02-27'),
(37, 9, '2024-03-28'),
(38, 9, '2024-04-28'),
(39, 10, '2024-05-29'),
(40, 10, '2024-06-29');

-- ===========================================Creating OrderDetails====================================================
CREATE TABLE OrderDetails(
DetailID INT PRIMARY KEY,
Order_id INT,
Pro_id INT,
Quantity INT,
foreign key (Order_id) references Orders(Order_id),
foreign key (Pro_id) references Products(Pro_id)
);

INSERT INTO OrderDetails (DetailID, Order_id, Pro_id, Quantity) VALUES
(1, 1, 1, 2),
(2, 1, 2, 1),
(3, 2, 3, 3),
(4, 2, 4, 1),
(5, 3, 5, 2),
(6, 3, 6, 2),
(7, 4, 7, 1),
(8, 4, 8, 1),
(9, 5, 9, 3),
(10, 5, 10, 2),
(11, 6, 11, 1),
(12, 6, 12, 1),
(13, 7, 13, 2),
(14, 7, 14, 1),
(15, 8, 15, 2),
(16, 8, 16, 1),
(17, 9, 17, 1),
(18, 9, 18, 1),
(19, 10, 19, 3),
(20, 10, 20, 2),
(21, 11, 1, 2),
(22, 11, 2, 1),
(23, 12, 3, 3),
(24, 12, 4, 1),
(25, 13, 5, 2),
(26, 13, 6, 2),
(27, 14, 7, 1),
(28, 14, 8, 1),
(29, 15, 9, 3),
(30, 15, 10, 2),
(31, 16, 11, 1),
(32, 16, 12, 1),
(33, 17, 13, 2),
(34, 17, 14, 1),
(35, 18, 15, 2),
(36, 18, 16, 1),
(37, 19, 17, 1),
(38, 19, 18, 1),
(39, 20, 19, 3),
(40, 20, 20, 2);

CREATE TABLE Reviews (
Review_id INT PRIMARY KEY,
Pro_id INT,
c_id INT,
Rating INT,
Comment VARCHAR(1000),
FOREIGN KEY (Pro_id) REFERENCES Products(Pro_id),  
FOREIGN KEY (c_id) REFERENCES Customers(c_id)	 
);

-- Inserting data into Reviews table
INSERT INTO Reviews (Review_id, Pro_id, c_id, Rating, Comment) VALUES
(1, 1, 1, 5, 'Great smartphone, highly recommended!'),
(2, 2, 2, 4, 'The laptop performs well, but the battery life could be better.'),
(3, 3, 3, 4, 'Good tablet for its price.'),
(4, 4, 4, 3, 'Decent camera, but the image stabilization could be improved.'),
(5, 5, 5, 5, 'Excellent headphones, comfortable and great sound quality.'),
(6, 6, 6, 4, 'Nice t-shirt, fits well.'),
(7, 7, 7, 3, 'Average quality jeans, could be better.'),
(8, 8, 8, 4, 'Lovely dress, perfect for parties.'),
(9, 9, 9, 5, 'Great pair of shoes, very comfortable.'),
(10, 10, 10, 5, 'Good quality socks, soft and durable.'),
(11, 11, 1, 4, 'Informative book, enjoyed reading it.'),
(12, 12, 2, 3, 'Okay magazine, could have more interesting articles.'),
(13, 13, 3, 5, 'Excellent cookbook, tried some recipes and they turned out great!'),
(14, 14, 4, 4, 'Nice beauty cream, works well on my skin.'),
(15, 15, 5, 3, 'Decent shampoo, but nothing extraordinary.'),
(16, 16, 6, 4, 'Lovely lipstick, great color.'),
(17, 17, 7, 5, 'Amazing face wash, makes my skin feel refreshed.'),
(18, 18, 8, 4, 'Good toothpaste, leaves my mouth feeling clean.'),
(19, 19, 9, 3, 'Decent microwave, heats food evenly.'),
(20, 20, 10, 5, 'Excellent vacuum cleaner, powerful suction.'),
(21, 1, 11, 4, 'Great smartphone, love the camera quality.'),
(22, 2, 12, 3, 'The laptop is okay, but it heats up quickly.'),
(23, 3, 13, 4, 'Nice tablet, smooth performance.'),
(24, 4, 14, 5, 'Excellent camera, captures stunning photos.'),
(25, 5, 15, 4, 'Good headphones, clear sound.'),
(26, 6, 16, 3, 'Average t-shirt, nothing special.'),
(27, 7, 17, 4, 'Nice jeans, comfortable fit.'),
(28, 8, 18, 5, 'Beautiful dress, got many compliments.'),
(29, 9, 19, 5, 'Fantastic shoes, very stylish and comfortable.'),
(30, 10, 20, 4, 'Good quality socks, soft and cozy.');

select * from Reviews;


CREATE TABLE Shipping (
    ShippingID INT PRIMARY KEY,
    OrderID INT,
    ShipDate DATE,
    DeliveryDate DATE,
    FOREIGN KEY (OrderID) REFERENCES Orders(Order_id)
);
INSERT INTO Shipping (ShippingID, OrderID, ShipDate, DeliveryDate) VALUES
(1, 1, '2023-01-15', '2023-01-20'),
(2, 2, '2023-01-18', '2023-01-23'),
(3, 3, '2023-03-22', '2023-03-25'),
(4, 4, '2023-04-25', '2023-04-30'),
(5, 5, '2023-05-28', '2023-06-02'),
(6, 6, '2023-06-10', '2023-06-15'),
(7, 7, '2023-07-12', '2023-07-17'),
(8, 8, '2023-08-14', '2023-08-19'),
(9, 9, '2023-09-16', '2023-09-21'),
(10, 10, '2023-10-20', '2023-10-25'),
(11, 11, '2024-01-05', '2024-01-10'),
(12, 12, '2024-02-07', '2024-02-12'),
(13, 13, '2024-03-09', '2024-03-14'),
(14, 14, '2024-04-11', '2024-04-16'),
(15, 15, '2024-05-13', '2024-05-18'),
(16, 16, '2024-06-15', '2024-06-20'),
(17, 17, '2024-07-17', '2024-07-22'),
(18, 18, '2024-08-19', '2024-08-24'),
(19, 19, '2024-09-21', '2024-09-26'),
(20, 20, '2024-10-23', '2024-10-28'),
(21, 21, '2023-11-26', '2023-12-01'),
(22, 22, '2023-12-26', '2023-12-31'),
(23, 23, '2023-01-27', '2023-02-01'),
(24, 24, '2023-02-27', '2023-03-04'),
(25, 25, '2023-03-28', '2023-04-02'),
(26, 26, '2023-04-28', '2023-05-03'),
(27, 27, '2023-05-29', '2023-06-03'),
(28, 28, '2024-08-19', '2024-08-24'),
(29, 29, '2024-09-21', '2024-09-26'),
(30, 30, '2024-10-23', '2024-10-28');

CREATE TABLE Discounts (
    DiscountID INT PRIMARY KEY,
    Pro_id INT,
    DiscountAmount DOUBLE,
    FOREIGN KEY (Pro_id) REFERENCES Products(pro_id)
);
INSERT INTO Discounts (DiscountID, pro_id, DiscountAmount) VALUES
(1, 1, 3000.00),   -- Discount for Smartphone
(2, 2, 3000.00),   -- Discount for Laptop
(3, 3, 3000.00),   -- Discount for Tablet
(4, 4, 3000.00),   -- Discount for Camera
(5, 5, 3000.00),   -- Discount for Headphones
(6, 6, 150.00),    -- Discount for T-shirt
(7, 7, 150.00),    -- Discount for Jeans
(8, 8, 150.00),    -- Discount for Dress
(9, 9, 150.00),    -- Discount for Shoes
(10, 10, 150.00),  -- Discount for Socks
(11, 11, 150.00),  -- Discount for Book
(12, 12, 150.00),  -- Discount for Magazine
(13, 13, 150.00),  -- Discount for Cookbook
(14, 14, 150.00),  -- Discount for Beauty Cream
(15, 15, 150.00),  -- Discount for Shampoo
(16, 16, 150.00),  -- Discount for Lipstick
(17, 17, 150.00),  -- Discount for Face Wash
(18, 18, 150.00),  -- Discount for Toothpaste
(19, 19, 150.00),  -- Discount for Microwave
(20, 20, 150.00),  -- Discount for Vacuum Cleaner
(21, 21, 150.00),  -- Discount for Coffee Maker
(22, 22, 150.00),  -- Discount for Baby Diapers
(23, 23, 150.00),  -- Discount for Baby Wipes
(24, 24, 150.00),  -- Discount for Car Seat
(25, 25, 150.00),  -- Discount for Motorbike Helmet
(26, 26, 150.00),  -- Discount for Shower Gel
(27, 27, 150.00),  -- Discount for Hand Sanitizer
(28, 28, 150.00),  -- Discount for Vitamins
(29, 29, 150.00);  -- Discount for First Aid Kit

CREATE TABLE Coupons (
    CouponID INT PRIMARY KEY,
    DiscountAmount DOUBLE
);

INSERT INTO Coupons (CouponID, DiscountAmount) VALUES
(1, 3000.00),   -- Coupon for Smartphone
(2, 3000.00),   -- Coupon for Laptop
(3, 3000.00),   -- Coupon for Tablet
(4, 3000.00),   -- Coupon for Camera
(5, 3000.00),   -- Coupon for Headphones
(6, 150.00),    -- Coupon for T-shirt
(7, 150.00),    -- Coupon for Jeans
(8, 150.00),    -- Coupon for Dress
(9, 150.00),    -- Coupon for Shoes
(10, 150.00),   -- Coupon for Socks
(11, 150.00),   -- Coupon for Book
(12, 150.00),   -- Coupon for Magazine
(13, 150.00),   -- Coupon for Cookbook
(14, 150.00),   -- Coupon for Beauty Cream
(15, 150.00),   -- Coupon for Shampoo
(16, 150.00),   -- Coupon for Lipstick
(17, 150.00),   -- Coupon for Face Wash
(18, 150.00),   -- Coupon for Toothpaste
(19, 150.00),   -- Coupon for Microwave
(20, 150.00),   -- Coupon for Vacuum Cleaner
(21, 150.00),   -- Coupon for Coffee Maker
(22, 150.00),   -- Coupon for Baby Diapers
(23, 150.00),   -- Coupon for Baby Wipes
(24, 150.00),   -- Coupon for Car Seat
(25, 150.00),   -- Coupon for Motorbike Helmet
(26, 150.00),   -- Coupon for Shower Gel
(27, 150.00),   -- Coupon for Hand Sanitizer
(28, 150.00),   -- Coupon for Vitamins
(29, 150.00);   -- Coupon for First Aid Kit

-- ========================================================================================================================================================


-- Querys 

select cat_name , COUNT(pro_name) AS Products
from Products AS p
 LEFT JOIN Categories AS c
ON p.cat_id = c.cat_id
GROUP BY c.cat_name ;


-- Average price of products in each category
SELECT c.cat_name , AVG(p.pro_price) AS AVG_PRICE
from Products as p
join Categories as c on c.cat_id = p.cat_id
group by c.cat_name;

-- Top 5 products with the highest stock quantity
SELECT p.pro_name , p.stock_quantity
from Products AS p
order by p.stock_quantity DESC
LIMIT 5;



-- NAME OF CUSTOMER WITH MAXIMUM PURCHASE.
SELECT c_name , COUNT(Orders.c_id) AS Custome_id
from Customers
JOIN Orders 
ON Customers.c_id = Orders.c_id
GROUP BY c_name
ORDER BY Custome_id DESC
LIMIT 1;
-- No of order placed in a specific month.
SELECT DATE_FORMAT(Order_Date, '%Y-%m') AS Month,
COUNT(*) AS SALES
FROM Orders
GROUP BY DATE_FORMAT(Order_Date, '%Y-%m');

-- TOP 5 PRODUCTS WITH MAX RATING.
SELECT pro_name , COUNT(Rating) AS MAX_Rating
FROM Products AS P
JOIN Reviews AS r
ON p.pro_id = r.pro_id
GROUP BY pro_name
ORDER BY MAX_Rating DESC
LIMIT 5;




SELECT c.c_id, c.c_name
FROM Customers AS c
JOIN Orders AS o ON c.c_id = o.c_id
JOIN OrderDetails AS od ON od.Order_id = o.Order_id
JOIN Products AS p ON p.pro_id = od.pro_id
GROUP BY c.c_id, c.c_name
HAVING COUNT(DISTINCT p.cat_id) > 1;

-- Count the no of orders from each categories
SELECT c.c_id, c.c_name , cat.cat_name , COUNT(distinct o.Order_id) AS Orders
FROM Customers AS c
JOIN Orders AS o 
ON c.c_id = o.c_id
JOIN OrderDetails AS od
ON o.Order_id = od.Order_id
JOIN Products AS p 
ON od.pro_id = p.pro_id
JOIN Categories AS cat
ON cat.cat_id = p.cat_id
GROUP BY c.c_id, c.c_name, cat.cat_name;
--  to get the count of orders for each product within each category
SELECT c.cat_name, p.pro_name, COUNT(od.Order_id) AS Orders
FROM Categories AS c
JOIN Products AS p ON c.cat_id = p.cat_id
JOIN OrderDetails AS od ON p.pro_id = od.pro_id
GROUP BY c.cat_name, p.pro_name;
-- product name and product price after applying discount
SELECT p.pro_id,p.pro_name,p.pro_price,d.DiscountAmount,SUM(pro_price - DiscountAmount) AS after_disount
FROM Products p
LEFT JOIN Discounts d ON p.pro_id = d.pro_id
GROUP BY p.pro_id,p.pro_name, p.pro_price,d.DiscountAmount
ORDER BY after_disount DESC;
    SELECT * FROM Discounts;



-- total no of sales done by each product
SELECT p.pro_id, p.pro_name, SUM(Quantity * pro_price) AS Total_Sales
FROM Products AS p
JOIN OrderDetails AS od ON p.pro_id = od.Pro_id 
GROUP BY  pro_id , pro_name
ORDER BY Total_Sales DESC;

SELECT * FROM Products;
SELECT * FROM Categories;
SELECT * FROM Customers;
SELECT * FROM Orders;
SELECT * FROM OrderDetails;
SELECT * FROM Reviews;
SELECT * FROM Shipping;
SELECT * FROM Discounts;
SELECT * FROM Coupons;
-- Total Revenue Generated By Each Categories;
SELECT c.cat_name, SUM(p.pro_price * od.Quantity) AS total_revenue 
FROM Categories c
JOIN Products p ON c.cat_id = p.cat_id
JOIN OrderDetails od ON od.pro_id = p.pro_id
GROUP BY cat_name;


-- Top 5 Best Selling Products.
SELECT p.pro_id,p.pro_name , SUM(pro_price * od.Quantity) AS Price_of_Products
FROM Products AS p
LEFT JOIN OrderDetails AS od
ON p.pro_id = od.pro_id 
GROUP BY  p.pro_id,p.pro_name
ORDER BY Price_of_Products DESC
LIMIT 5;

-- No of Order placed by each Customer

SELECT c.c_name, COUNT(DISTINCT o.Order_id) AS No_of_Orders
FROM Customers AS c
JOIN Orders AS o ON c.c_id = o.c_id
GROUP BY c.c_name;

-- Name and Phone Number of Customer with 0 Orders.
SELECT c.c_name , c_phn_no
FROM Customers AS c
LEFT JOIN Orders AS o ON c.c_id = o.c_id
WHERE o.Order_id IS NULL;

-- Customer, Products names with the shipping date
SELECT c.c_name, p.pro_name, s.ShipDate, s.DeliveryDate
FROM Products AS p
JOIN OrderDetails AS od 
ON p.pro_id = od.pro_id
JOIN Orders AS o
ON od.order_id = o.order_id
JOIN Customers AS c
ON o.c_id = c.c_id
JOIN Shipping AS s
ON o.order_id = s.OrderID;

-- Customer name ,Product name and the reviwes given by them
SELECT c.c_name, p.pro_name,r.Comment
FROM Customers AS c 
JOIN Reviews AS r 
ON c.c_id = r.c_id 
JOIN Products AS p 
ON r.pro_id = p.pro_id;
-- Top 5 Products with no revenue
SELECT p.pro_name, SUM(od.Quantity * p.pro_price) AS Revenue
FROM Products AS p
LEFT JOIN OrderDetails AS od ON p.pro_id = od.Pro_id
LEFT JOIN Orders AS o ON od.Order_id = o.Order_id
GROUP BY p.pro_name
ORDER BY Revenue ASC
LIMIT 5;

-- Find the total number of orders placed in each month
SELECT MONTH(Order_Date) AS month, COUNT(*) AS num_orders
FROM Orders
GROUP BY MONTH(Order_Date);
-- List of products that have never been reviewed
SELECT p.pro_name
FROM Products p
LEFT JOIN Reviews r ON p.pro_id = r.pro_id
WHERE r.pro_id IS NULL;




