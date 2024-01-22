----SQL Assigments 1---
---Basics---
--Q1--
create database Brands
create database products

---Q2--
use Brands
create table Items_table (Item_Id int NOT NULL,	item_description varchar(max),	vendor_nos int,	vendor_name varchar (max),
bottle_size int,	bottle_price FLOAT)
drop table Items_table

use products
create table  Product_table (Product_Id int , Country varchar (max),	Product varchar (max), Units_Sold float, 	
Manufacturing_Price int,	 Sale_Price int,	 Gross_Sales int, Sales int, COGS int, 	Profit int,
Date_ date,	Month_Number int, Month_Name varchar (max), Year int
)
drop table product_table
---Q3---
use Brands
insert into BRANDS.DBO.Items_table values (1, 'Travis Hasse Apple Pie' ,	305, 'Mhw Ltd' ,750, $9.77) ,
(2,	'D aristi Xtabentun',391,'Anchor Distilling (preiss Imports)',750,	$14.12 ),
(3,	'Hiram Walker Peach Brandy',	370	,'Pernod Ricard Usa/austin Nichols',1000, $6.50 ),
(4,	'Oak Cross Whisky',305,	'Mhw Ltd',750,	$25.33) ,
(5,	'Uv Red(cherry) Vodka',	380	, 'Phillips Beverage Company',200,	$1.97 ),
(6,	'Heaven Hill Old Style White Label', 259, 'Heaven Hill Distilleries Inc.', 750,	$6.37 ),
(7,	'Hyde Herbal Liqueur', 194,	'Fire Tail Brands Llc', 750, $5.06 ),
(8,	'Dupont Calvados Fine Reserve', 403,'Robert Kacher Selections', 750, $23.61 )
select * from BRANDS.DBO.ITEMS_TABLE

SELECT * FROM BRANDS.dbo.Items_table

insert into products.dbo.Product_table values 
(1, 'Canada' , 'Carretera' , 1618.5 , 3 , 20.00, 32370.00, 32370.00, 16185.00, 16185.00, '01-01-2014' , 1, 'January', 2014)
insert into Product_table values 
(2,	'Germany',	 'Carretera', 1321, 3 , 20, 26420, 26420, 13210, 13210,'01-01-2014', 1,'January', 2015),
(3,	'France', 'Carretera' , 2178,  3 , 15, 32670, 32670, 21780, 10890, '01-06-2014',6,	'June', 2016),
insert into Product_table values
(4, 'Germany', 'Carretera', 888, 3 , 15, 13320 , 13320, 8880, 4440, '01-06-2014', 6, 'June', 2017)
insert into Product_table values
(5,	'Mexico', 'Carretera' , 2470, 3 , 15, 37050, 37050, 24700, 12350, '01-06-2014', 6, 'June', 2018)
(6,	'Germany', 'Carretera', 1513, 3 , 350, 529550, 529550, 393380, 136170, '01-12-2014', 12, 'December', 2019),
(7,	'Germany', 'Montana', 921,	5, 15, 13815, 13815, 9210 , 4605, '01-03-2014', 3, 'March' , 	2020),
(8,	'Canada', 'Montana', 2518, 5, 12, 30216, 30216, 7554, 22662, '01-06-2014', 6,	'June', 2021
)
select * from products.dbo.product_table

---Q4---
delete from  products.dbo.product_table where units_sold in( 1618.5 , 888 , 2470)


----Intermediate Question---
--BIG TABLE--
--Q1--
select sum(sale_price) 'Toal Sales' , sum(Gross_sales) 'Total Gross sales' from products.dbo.product_table

--Q2--
select sale_price, year from products.dbo.product_table  
ORDER BY SALE_PRICE DESC

--Q3-- INSERTED VALUE AGAIN FOR GROSS SALES =37050 AS DELETED FOR Q4 IN BASICS
SELECT PRODUCT , SALES FROM Product_table WHERE SALES= 37050

--Q4--
SELECT COUNTRY,PROFIT FROM PRODUCT_TABLE WHERE PROFIT BETWEEN 4605 AND 22662

--Q5-- THERE IS NO SALES OF 24700 BUT THERE IS COGS OF 24700 HENCE TAKEN COGS INSTEAD OF SALES 
SELECT PRODUCT_ID , COGS FROM PRODUCT_TABLE WHERE COGS= 24700

---SMALL TABLE--
--Q1--
SELECT ITEM_DESCRIPTION , BOTTLE_SIZE FROM ITEMS_TABLE WHERE BOTTLE_SIZE= 750

--Q2--
SELECT VENDOR_NAME , VENDOR_NOS FROM ITEMS_TABLE WHERE VENDOR_NOS IN (305 , 380 , 391)

--Q3--
SELECT SUM(BOTTLE_PRICE) 'Total bottle price' from Items_table

--Q4---
ALTER TABLE Items_table ADD  PRIMARY KEY (ITEM_ID)

--Q5--
SELECT ITEM_ID, BOTTLE_PRICE FROM ITEMS_TABLE WHERE BOTTLE_PRICE= 5.06

--ADVANCE QUESTION-----
--Q1--
--INNER JOIN--
SELECT * FROM ITEMS_TABLE
INNER JOIN products.dbo.Product_table
ON ITEMS_TABLE.ITEM_ID = products.dbo.Product_table.PRODUCT_ID

--FULL OUTER JOIN--
SELECT * FROM ITEMS_TABLE
FULL OUTER JOIN products.dbo.Product_table
ON ITEMS_TABLE.ITEM_ID = products.dbo.Product_table.PRODUCT_ID

--LEFT JOIN---
SELECT * FROM ITEMS_TABLE
LEFT JOIN products.dbo.Product_table
ON ITEMS_TABLE.ITEM_ID = products.dbo.Product_table.PRODUCT_ID

--Q2--
--OUTER JOIN--------------------------------------------------DOUBT
SELECT * FROM ITEMS_TABLE
 FULL OUTER JOIN products.dbo.Product_table
ON ITEMS_TABLE.ITEM_ID = products.dbo.Product_table.PRODUCT_ID

--RIGHT JOIN--
SELECT * FROM ITEMS_TABLE
RIGHT JOIN products.dbo.Product_table
ON ITEMS_TABLE.ITEM_ID = products.dbo.Product_table.PRODUCT_ID

--CROSS JOIN--
SELECT * FROM ITEMS_TABLE
CROSS JOIN products.dbo.Product_table

--Q3-- INSERTED VALUE AGAIN FOR GROSS SALES =13320 AS DELETED FOR Q4 IN BASICS 
SELECT ITEMS_TABLE.ITEM_ID, ITEMS_TABLE.item_description, products.dbo.Product_table.PRODUCT_ID, products.dbo.Product_table.gross_sales FROM ITEMS_TABLE 
FULL JOIN products.dbo.Product_table 
ON ITEMS_TABLE.ITEM_ID = products.dbo.Product_table.PRODUCT_ID
WHERE products.dbo.Product_table.GROSS_SALES = 13320

--Q4--
SELECT SUBSTRING (ITEM_DESCRIPTION,1,6) AS DESC_1 , SUBSTRING (ITEM_DESCRIPTION,7,30) AS DESC_2 FROM ITEMS_TABLE
 





 


