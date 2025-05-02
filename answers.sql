Quiz 1:
Achieving 1NF (First Normal Form)

CREATE table ProductDetail(

OrderID int,
CustomerName VARCHAR(100),
Products VARCHAR(50)
);

INSERT INTO ProductDetail(OrderID,CustomerName,Products)
VALUES(101,'John Doe', 'Laptop'),
(101,'John Doe','Mouse'),
(102,'Jane Smith','Tablet'),
(102,'Jane Smith','Keyboard'),
(102,'Jane Smith','Mouse'),
(103,'Emily Clark','Phone');

QUiz 2: 
Achieving 2NF (second Normal Form)

create table orders(
OrderID INT Primary KEY,
CustomerName varchar(100)
);

insert into orders(OrderID,CustomerName)
values(101,'John Doe'),
(102,'Jane Smith'),
(103,'Emily Clark');

create table OrderDetails(
OrderID int,
Product Varchar(100),
Quantity int,
foreign key (OrderID) references orders(OrderID)
);

insert into OrderDetails(OrderID,Product,Quantity)
values(101,'Laptop',2),
(101,'Mouse',1),
(102,'Tablet',3),
(102,'Keyboard',1),
(102,'Mouse',2),
(103,'Phone',1);
