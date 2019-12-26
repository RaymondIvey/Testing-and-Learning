--Raymond Ivey

--12/18/2019

--This SQL Query File contains creation of tables
--For learning purposes of a database
--used by a game store and its website


-- drop tables if they already exist
if OBJECT_ID('Employee_Phone') Is not null
drop table Employee_Phone;
if OBJECT_ID('Full_Time') Is not null
drop table Full_Time;
if OBJECT_ID('Part_Time') Is not null
drop table Part_Time;
if OBJECT_ID('Customer') Is not null
drop table Customer;
if OBJECT_ID('Customer_Phone') Is not null
drop table Customer_Phone;
if OBJECT_ID('Game_Room') Is not null
drop table Game_Room;
if OBJECT_ID('Products') Is not null
drop table Products;
if OBJECT_ID('Transactions') Is not null
drop table Transactions;
if OBJECT_ID('Sold') Is not null
drop table Sold;
if OBJECT_ID('Stock') Is not null
drop table Stock;
if OBJECT_ID('Employee') Is not null
drop table Employee;
if OBJECT_ID('Store') Is not null
drop table Store;

-- This table handles each Store, with the store ID
-- being a 5 digit number

create table Store
(store_id	char(5),
 Store_phone    char(10),
 store_email    nvarchar(30),
 primary key 	(store_id)
);

-- Employee handles each employee at the stores. It has 
--	their first name, last name, store id, and if they 
--	are a Full Time or Part time as empl_type


create table Employee
(empl_id 	char(6),
 empl_fname     nvarchar(15) not null,
 empl_lname     nvarchar(15) not null,
 store_id	char(5) not null,
 empl_type  	char(1) check(empl_type IN ('F', 'P')),
 primary key    (empl_id),
 foreign key 	(store_id) references Store
);

-- Employee phone contains all the phone numbers for each Employee


create table Employee_Phone
(empl_id	char(6),
 empl_phone	char(10),
 primary key 	(empl_id, empl_phone),
 foreign key 	(empl_id) references Employee
);

-- Full Time Employees have a number of year they have been employed and their yearly grade
--		 these both determine the Full Time Employees Pay. (1 being worst, 5 being best)
--		 cur_pay is hourly

create table Full_Time
(empl_id             char(6),
 years_employed	     nvarchar(2),
 year_grade 	     char(1) check(year_grade IN ('1', '2', '3', '4', '5')),
 cur_pay	     decimal(4,2),
 primary key (empl_id),
 foreign key (empl_id) references Employee
);


-- Part Time Employees only have a number of hours that they work. All Part Time employees
--	have the same pay rate.

create table Part_Time
(empl_id	char(6),
 num_hours	nvarchar(2),
 primary key (empl_id),
 foreign key (empl_id) references Employee
);

-- Game Room has the number for each table, as well as the number of 
-- seats at the table. It also has the ID of the employee overseeing this room

create table Game_room
(table_num	char(2),
 num_seats	varchar(2),
 empl_id	char(6),
 primary key	(table_num),
 foreign key	(empl_id) references Employee
);

-- Customer has an id, first and last name, an email, and what table they are renting
--		 IF they ARE renting one;

create table Customer
(cust_id	char(7),
 cust_fname	nvarchar(15) not null,
 cust_lname	nvarchar(15) not null,
 cust_email	nvarchar(30),
 tabl_num	char(2),
 primary key (cust_id),
 foreign key (tabl_num) references Game_Room
);


-- Customer Phone holds each phone number for each customer

create table Customer_Phone
(cust_id	char(7),
 cust_phone 	char(10),
 primary key (cust_id, cust_phone),
 foreign key (cust_id) references Customer
);


-- Products table contains the id and name of the product

create table Products
(prod_id	char(3),
 prod_name	varchar(15),
 prod_amt	smallint,
 primary key (prod_id)
);

-- Transactions table handles the transaction id for each sale
--	between a store and customer

create table Transactions
(trans_id	char(8),
 cust_id	char(7),
 store_id	char(5),
 primary key	(trans_id),
 foreign key	(cust_id) references Customer,
 foreign key	(store_id) references Store
); 

-- Sold table contains the transaction ID and the id of the product
-- sold, as well as the number of that product sold

create table Sold
(trans_id	char(8),
 prod_id	char(3),
 amt_sold	smallint,
 primary key (trans_id, prod_id),
 foreign key (trans_id) references Transactions,
 foreign key (prod_id) references Products
);

-- Stock table contains the store id, the part id, and how 
-- much of each product is stocked

create table Stock
(store_id	char(5),
 prod_id	char(3),
 amt_stock	smallint,
 primary key (store_id, prod_id),
 foreign key (store_id) references Store,
 foreign key (prod_id) references Products
);
