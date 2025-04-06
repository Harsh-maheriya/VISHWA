 
 -- COMPANY DATABASE
 INSERT INTO EMPLOYEE (SSN,FNAME,LNAME,BDATE,DNO)
 VALUES (123234345,'Pankaj','Jain','1975-01-13',5);

 UPDATE EMPLOYEE
 
 SET SUPERSSN = 123456789
 WHERE SSN = 123234345;

 INSERT INTO DEPARTMENT (DNAME,DNO)
 VALUES ('Marketing',11);

 UPDATE DEPARTMENT
 SET MGRSSN = 888665555
 WHERE DNO = 11;

 UPDATE DEPARTMENT
 SET MGRSTARTDATE = '2005-05-11'
 WHERE DNO = 11;

 INSERT INTO EMPLOYEE (FNAME,LNAME,SSN,BDATE,SEX,SALARY,DNO)
 VALUES ('Harsh','Maheriya',202301470,'1995-03-11','M',13000000,11);
 INSERT INTO EMPLOYEE (FNAME,LNAME,SSN,BDATE,SEX,SALARY,DNO)
 VALUES ('Akshat','Bhatt',202301460,'1995-05-01','M',1500000000,11);

 INSERT INTO PROJECT (PNAME,PNO,DNO)
 VALUES ('ERP Implementation',9,11);

 INSERT INTO WORKS_ON (ESSN,PNO,HOURS)
 VALUES (202301460,9,40),
 (202301470,9,40);

 UPDATE EMPLOYEE
 SET SALARY = SALARY*(1.08)
 WHERE DNO = 5;

 DELETE FROM EMPLOYEE
 WHERE SSN = 123234345;

 -- SALES DATABASE
 

 -- DDL SCRIPT 
 CREATE TABLE customer (
    cust_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    city VARCHAR(100),
    state VARCHAR(100),
    pin VARCHAR(10),
    email VARCHAR(255) UNIQUE
);

CREATE TABLE items (
    item_code INT PRIMARY KEY,
    item_name VARCHAR(255) NOT NULL,
    category_id INT,
    saleprice DECIMAL(10,2) NOT NULL,
    qty_in_stock INT NOT NULL,
    reorderlevel INT NOT NULL,
    averagepurchaseprice DECIMAL(10,2) NOT NULL
);

CREATE TABLE invoice (
    invno INT PRIMARY KEY,
    invdate DATE NOT NULL,
    customerid INT,
    FOREIGN KEY (customerid) REFERENCES customer(cust_id) ON DELETE CASCADE
);

CREATE TABLE invoicedetails (
    invno INT,
    itemcode INT,
    qty INT NOT NULL,
    rate DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (invno, itemcode),
    FOREIGN KEY (invno) REFERENCES invoice(invno) ON DELETE CASCADE,
    FOREIGN KEY (itemcode) REFERENCES items(item_code) ON DELETE CASCADE
);

-- 1
INSERT INTO customer (cust_id, name, city, state, pin, email) VALUES
(1, 'Anish', 'Bhopal', 'Madhya Pradesh', '560001', 'Anish21@gmail.com'),
(2, 'Dev', 'Pune', 'Maharashtra', '232301', 'Dev33@gmail.com'),
(3, 'Tom', 'Diu', 'Gujarat', '384523', 'TomatDiu@gmail.com'),
(4, 'Riya', 'Bengaluru', 'Karnataka', '768787', 'Riya123@gmail.com'),
(5, 'Harsh', 'Jaipur', 'Rajasthan', '654001', 'Harsh21@gmail.com');

--2
INSERT INTO items (item_code, item_name, category_id, saleprice, qty_in_stock, reorderlevel, averagepurchaseprice) VALUES
(11100, 'Milk', 1, 25, 50, 1, 23),
(11101, 'Cheese', 1, 30, 20, 1, 26),
(11102, 'Lassi', 1, 12, 50, 2, 11),
(11103, 'Apple', 2, 15, 100, 1, 10),
(11104, 'Tomato', 2, 7, 120, 1, 6),
(11105, 'Earphone', 3, 50, 35, 3, 42),
(11106, 'Charger', 3, 150, 5, 3, 125),
(11107, 'Mobile', 3, 10000, 3, 3, 7900),
(11108, 'T-shirt', 4, 250, 25, 2, 220),
(11109, 'Purse', 4, 100, 40, 3, 85);

-- 3
INSERT INTO invoice (invno, invdate, customerid)
VALUES
(1, '2019-12-11', 104),
(2, '2020-02-21', 102),
(3, '2019-08-15', 101),
(4, '2019-11-30', 105),
(5, '2019-03-31', 103);

