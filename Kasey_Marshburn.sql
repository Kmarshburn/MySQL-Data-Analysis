Create table CLIENTS (client_id INT PRIMARY KEY, client_name Varchar(255) NOT NULL, contact_email Varchar(255), phone_number Varchar(255), address Varchar(255));
Create table PRODUCTS (product_id INT Primary key, product_name VARCHAR(255) NOT NULL, unit_price decimal(10,2), product_description Varchar (255));
Create table SALESREP (salesrep INT PRIMARY KEY, salesrep_firstname Varchar(255) NOT NULL, salesrep_lastname VARCHAR(255), contact_email varchar(255), phone_numer Varchar(255), address Varchar (255));
Create table TRANSACTIONS (transaction_id INT PRIMARY KEY, transaction_date DATE, client_id INT, product_id INT, salesrep_id INT, quantity INT NOT NULL, total_price decimal(10,2), type VARchar (255), Description Varchar(255),
Foreign key (client_id) references CLIENTS (client_id), foreign key (product_id) references PRODUCTS (product_id), foreign key(salesrep_id) references SALESREP (salesrep));

Insert into CLIENTS (client_id, client_name, contact_email, phone_number, address)
values (1, 'John Doe','john.doe@email.com','1234567890','123 Main St, City A'),
(2,'Jane Smith','jane.smith@email.com','0987654321','456 Elm St, City B'),
(3,'Daniel Brown','dbrown@email.com','123-456-7890','789 Oak St, City C'),
(4,'Sam Johnson','sam.johnson@email.com','901-234-5678', '72 Salmon Sr, City C'),
(5,'Mike Brown','mike.brown@email.com','234-567-8901','123 Cedar St, City D'),
(6,'Emma Wilson','emma.wilson@email.com','890-123-4567','456 Pine St, City E'),
(7,'Olivia Jones','olivia.jones@email.com','3333333333','789 Maple St, City F'),
(8,'Liam Miller','liam.miller@email.com','4444444444','321 Birch St, City F'),
(9,'Ava Davis','ava.davis@email.com','012-345-6789','654 Walnut St, City H'),
(10,'Charlotte Garcia','charlotte.garcia@email.com','6456-789-0123','987 Spruce St, City H'),
(11,'James Martinez','james.martinez@email.com','567-890-1234', '123 Aspen St, City J'),
(12,'Isabella Hernandez','isabella.hernandez@email.com','789-012-3456','456 Cypress St, City A'),
(13,'Benjamin Clark','benjamin.clark@email.com','678-901-2345','789 Redwood St, City L');

Update CLIENTS
set phone_number = '123-456-7890'
where client_id = 1;
update CLIENTS
set phone_number = '098-765-4321'
where client_id =2;
update CLIENTS
set phone_number = '333-333-333'
where client_id =7;
update clients 
set phone_number = '444-444-444'
where client_id = 8;
update clients
set phone_number = '456-789-0123'
where client_id = 10;

Insert into PRODUCTS (product_id, product_name, unit_price, product_description)
values (1,'Laptop',1000.00,'High-end gaming laptop'),
(2,'Smartphone',800.00,'Latest model smartphone'),
(3,'Headphones', 49.00,'Noise-canceling headphones'),
(4,'Tablet',500.00,'Compact tablet with stylus support'),
(5,'Monitor',999.00,'24-inch Full HD monitor'),
(6,'Keyboard', 155.00, 'Mechanical keyboard with backlight');

insert into SALESREP(salesrep, salesrep_firstname, salesrep_lastname, contact_email, phone_numer, address)
values (1,'Grace','Red','grace.red@email.com',1112223333,'321 Maple St, City J'),
(2,'Henry','Orange','henry.orange@email.com',2223334444,'654 Cypress St, City K'),
(3,'Ivy','Purple','ivy.purple@email.com',3334445555,'987 Redwood St, City J'),
(4,'NULL','Gray','jack.gray@email.com',4445556666,'123 Aspen St, City D'),
(5,'Kevin','Silver','kevin.silver@email.com',5556667777,'456 Birch St, City K'),
(6,'Lila','Gold','lila.gold@email.com',6667778888,'789 Elm St, City O'),
(7,'Mike','Brown','mike.brown@email.com',7845378007,'123 Cedar St, City D'),
(8,'Alice','Brown','alice.brown@email.com',4445556666,'321 Pine St, City D'),
(9,'Bob','Green','bob.green@email.com',2222222222,'654 Cedar St, City E');

Update salesrep
set salesrep_firstname = 'Jack'
where salesrep = 4;

Insert into TRANSACTIONS (transaction_id, transaction_date, client_id, product_id,salesrep_id, quantity, total_price, type, description)
values(1,'2025-01-01',1,1,1,2,2000.00,'Sale','Laptop purchase'),
(2,'2025-01-03',2,2,2,1,800.00,'Sale','Smartphone purchase'),
(3,'2025-01-05',3,3,4,3,147.00,'Sale','Headphones purchase'),
(4,'2025-01-07',4,5,4,1,999.00,'Sale','Monitor purchase'),
(5,'2025-01-10',6,6,7,1,155.00,'Sale','Keyboard purchase'),
(6,'2025-01-11',7,6,6,3,465.00,'Sale','Keyboard purchase'),
(7,'2025-01-15',8,1,8,2,2000.00,'Sale','Laptop purchase'),
(8,'2025-01-20',9,5,5,1,999.99,'Sale', 'Monitor purchase'),
(9,'2025-01-21',10,6,1,1,155.00,'Sale', 'Keyboard purchase'),
(10,'2025-01-20',11,3,2,0,-49.00,'Return','Defective product'),
(11,'2025-01-23',12,2,9,1,800.00,'Sale','Valid transaction'),
(12,'2025-01-15',2,3,3,0,-49.00,'Return','Headphones purchase'),
(13,'2025-01-25',3,5,4,3,2997.00,'Sale','Monitor purchase'),
(14,'2025-01-26',4,6,6,1,155.00,'Sale','Valid transaction'),
(15,'2025-01-27',5,1,7,1,1000.00,'Sale','Laptop purchase'),
(16,'2025-01-03', 2, 6, 5, 2, 3100.00, 'Sale','Tablet purchase'),
(17,'2025-01-04', 4, 6, 4, 3, 465.00, 'Sale','Keyboard purchase'),
(18,'2025-01-25', 9, 1, 3, 2, 2000.00, 'Sale','Laptop purchase'),
(19,'2025-01-20', 12, 2, 1, 1, 800.00, 'Sale','Smartphone purchase'),
(20,'2025-01-07', 7, 3, 6, 3, 147.00, 'Sale', 'Headphones purchase'),
(21,'2025-01-01', 6, 5, 4, 1, 999.00, 'Sale', 'Monitor purchase'),
(22,'2025-01-09', 9, 6, 2, 5, 775.00, 'Sale', 'Tablet purchase'),
(23,'2025-01-25', 8, 2, 7, 1, 800.00, 'Sale', 'Smartphone purchase'),
(24,'2025-01-11', 7, 3, 1, 4, 196.00, 'Sale', 'Headphones purchase');


## Question 1
SELECT 
    client_id, client_name
FROM
    clients;

SELECT 
    client_id AS Total_clients
FROM
    clients
WHERE
    client_id = 13;
    

## Question 2
SELECT 
    AVG(unit_price) AS Average_Unit_Price
FROM
    Products;

## Question 3
SELECT 
    TRANSACTIONS.type, PRODUCTS.product_name
FROM
    TRANSACTIONS
        LEFT JOIN
    Products ON TRANSACTIONS.product_id = PRODUCTS.product_id
WHERE
    TRANSACTIONS.type = 'Return';


## Question 4
SELECT 
    transaction_date, COUNT(*) AS TRANSACTIONS
FROM
    TRANSACTIONS
GROUP BY transaction_date
ORDER BY TRANSACTIONS DESC;

## Question 5
SELECT 
    salesrep.salesrep,
    salesrep.salesrep_firstname,
    salesrep.salesrep_lastname,
    COUNT(transactions.product_id) AS products
FROM
    SALESREP
        LEFT JOIN
    TRANSACTIONS ON salesrep.salesrep = TRANSACTIONS.salesrep_id
GROUP BY salesrep.salesrep , salesrep.salesrep_firstname , salesrep.salesrep_lastname
ORDER BY products DESC;

## Question 6 
SELECT 
    sales.salesrep,
    sales.salesrep_firstname,
    sales.salesrep_lastname,
    SUM(TRANSACTIONS.total_price) AS Revenue
FROM
    salesrep AS sales
        LEFT JOIN
    TRANSACTIONS ON sales.salesrep = TRANSACTIONS.salesrep_id
GROUP BY sales.salesrep , sales.salesrep_firstname , sales.salesrep_lastname
ORDER BY revenue DESC;
