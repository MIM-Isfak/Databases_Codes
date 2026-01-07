MariaDB [Personnel_db]> TRUNCATE TABLE PersonnelTable;
Query OK, 0 rows affected (0.172 sec)

MariaDB [Personnel_db]> INSERT INTO PersonnelTable(FirstName,LastName,Position,Department,Salary,StartDate,EndDate)
    -> values
    -> ("John","Doe","Manager","Operations",80000,"2020-01-15","2022-05-31"),
    -> ("Jennifer","Anderson","Supervisor","Finance",70000,"2019-07-01","2023-12-31"),

    -> ("Robert","Jhonsen","Technician","IT support",45000,"2021-02-20","2023-09-30"),
    -> ("Emily","Thompson","Analyst","Marketing",60000,"2022-09-10","2022-09-30"),
    ->  ("Michael","Brown","Developer","Technology",55000,"2018-03-05","2021-06-15"),
    -> ("Jessica","Smith","Assistant","HR",35000,"2021-06-01","2022-03-31");
Query OK, 7 rows affected (0.136 sec)
Records: 7  Duplicates: 0  Warnings: 0

MariaDB [Personnel_db]> select * from PersonnelTable;
+----+-----------+----------+------------+------------+----------+------------+------------+
| ID | FirstName | LastName | Position   | Department | Salary   | StartDate  | EndDate    |
+----+-----------+----------+------------+------------+----------+------------+------------+
|  1 | John      | Doe      | Manager    | Operations | 80000.00 | 2020-01-15 | 2022-05-31 |
|  2 | Jennifer  | Anderson | Supervisor | Finance    | 70000.00 | 2019-07-01 | 2023-12-31 |
|  3 | Robert    | Jhonsen  | Technician | IT support | 45000.00 | 2021-02-20 | 2023-09-30 |
|  4 | Robert    | Jhonsen  | Technician | IT support | 45000.00 | 2021-02-20 | 2023-09-30 |
|  5 | Emily     | Thompson | Analyst    | Marketing  | 60000.00 | 2022-09-10 | 2022-09-30 |
|  6 | Michael   | Brown    | Developer  | Technology | 55000.00 | 2018-03-05 | 2021-06-15 |
|  7 | Jessica   | Smith    | Assistant  | HR         | 35000.00 | 2021-06-01 | 2022-03-31 |
+----+-----------+----------+------------+------------+----------+------------+------------+
7 rows in set (0.001 sec)

MariaDB [Personnel_db]> select * from PersonnelTable where Salary>70000;
+----+-----------+----------+----------+------------+----------+------------+------------+
| ID | FirstName | LastName | Position | Department | Salary   | StartDate  | EndDate    |
+----+-----------+----------+----------+------------+----------+------------+------------+
|  1 | John      | Doe      | Manager  | Operations | 80000.00 | 2020-01-15 | 2022-05-31 |
+----+-----------+----------+----------+------------+----------+------------+------------+
1 row in set (0.001 sec)

MariaDB [Personnel_db]> delete from PersonnelTable where Id = 6;
Query OK, 1 row affected (0.042 sec)

MariaDB [Personnel_db]> select * from PersonnelTable;
+----+-----------+----------+------------+------------+----------+------------+------------+
| ID | FirstName | LastName | Position   | Department | Salary   | StartDate  | EndDate    |
+----+-----------+----------+------------+------------+----------+------------+------------+
|  1 | John      | Doe      | Manager    | Operations | 80000.00 | 2020-01-15 | 2022-05-31 |
|  2 | Jennifer  | Anderson | Supervisor | Finance    | 70000.00 | 2019-07-01 | 2023-12-31 |
|  3 | Robert    | Jhonsen  | Technician | IT support | 45000.00 | 2021-02-20 | 2023-09-30 |
|  4 | Robert    | Jhonsen  | Technician | IT support | 45000.00 | 2021-02-20 | 2023-09-30 |
|  5 | Emily     | Thompson | Analyst    | Marketing  | 60000.00 | 2022-09-10 | 2022-09-30 |
|  7 | Jessica   | Smith    | Assistant  | HR         | 35000.00 | 2021-06-01 | 2022-03-31 |
+----+-----------+----------+------------+------------+----------+------------+------------+
6 rows in set (0.001 sec)

MariaDB [Personnel_db]> delete from PersonnelTable where Id = 4;
Query OK, 1 row affected (0.034 sec)

MariaDB [Personnel_db]>  select * from PersonnelTable;
+----+-----------+----------+------------+------------+----------+------------+------------+
| ID | FirstName | LastName | Position   | Department | Salary   | StartDate  | EndDate    |
+----+-----------+----------+------------+------------+----------+------------+------------+
|  1 | John      | Doe      | Manager    | Operations | 80000.00 | 2020-01-15 | 2022-05-31 |
|  2 | Jennifer  | Anderson | Supervisor | Finance    | 70000.00 | 2019-07-01 | 2023-12-31 |
|  3 | Robert    | Jhonsen  | Technician | IT support | 45000.00 | 2021-02-20 | 2023-09-30 |
|  5 | Emily     | Thompson | Analyst    | Marketing  | 60000.00 | 2022-09-10 | 2022-09-30 |
|  7 | Jessica   | Smith    | Assistant  | HR         | 35000.00 | 2021-06-01 | 2022-03-31 |
+----+-----------+----------+------------+------------+----------+------------+------------+
5 rows in set (0.001 sec)

MariaDB [Personnel_db]> ROLLBACK;
Query OK, 0 rows affected (0.000 sec)

MariaDB [Personnel_db]>  select * from PersonnelTable;
+----+-----------+----------+------------+------------+----------+------------+------------+
| ID | FirstName | LastName | Position   | Department | Salary   | StartDate  | EndDate    |
+----+-----------+----------+------------+------------+----------+------------+------------+
|  1 | John      | Doe      | Manager    | Operations | 80000.00 | 2020-01-15 | 2022-05-31 |
|  2 | Jennifer  | Anderson | Supervisor | Finance    | 70000.00 | 2019-07-01 | 2023-12-31 |
|  3 | Robert    | Jhonsen  | Technician | IT support | 45000.00 | 2021-02-20 | 2023-09-30 |
|  5 | Emily     | Thompson | Analyst    | Marketing  | 60000.00 | 2022-09-10 | 2022-09-30 |
|  7 | Jessica   | Smith    | Assistant  | HR         | 35000.00 | 2021-06-01 | 2022-03-31 |
+----+-----------+----------+------------+------------+----------+------------+------------+
5 rows in set (0.001 sec)

MariaDB [Personnel_db]> select * from PersonnelTable limit 2 offset 3;
+----+-----------+----------+-----------+------------+----------+------------+------------+
| ID | FirstName | LastName | Position  | Department | Salary   | StartDate  | EndDate    |
+----+-----------+----------+-----------+------------+----------+------------+------------+
|  5 | Emily     | Thompson | Analyst   | Marketing  | 60000.00 | 2022-09-10 | 2022-09-30 |
|  7 | Jessica   | Smith    | Assistant | HR         | 35000.00 | 2021-06-01 | 2022-03-31 |
+----+-----------+----------+-----------+------------+----------+------------+------------+
2 rows in set (0.001 sec)

MariaDB [Personnel_db]> show databases;
+--------------------+
| Database           |
+--------------------+
| customer_db        |
| customers          |
| customers_db       |
| exam_invigilator   |
| information_schema |
| mysql              |
| performance_schema |
| personnel_db       |
| phpmyadmin         |
| student            |
| students           |
| test               |
+--------------------+
12 rows in set (0.001 sec)

MariaDB [Personnel_db]> drop student;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'student' at line 1
MariaDB [Personnel_db]> drop database student;
Query OK, 0 rows affected (8.364 sec)

MariaDB [personnel_db]> drop database customer_db;
Query OK, 0 rows affected (0.002 sec)

MariaDB [personnel_db]> show tables;
+------------------------+
| Tables_in_personnel_db |
+------------------------+
| personneltable         |
+------------------------+
1 row in set (0.001 sec)

MariaDB [personnel_db]> create database pscompany;
Query OK, 1 row affected (0.001 sec)

MariaDB [personnel_db]> use pscompany;
Database changed
MariaDB [pscompany]> create table products(
    -> ProductID int auto_increment not null,
    -> ProductCode char(3) not null,
    -> Name varchar(30) not null,
    -> quantity int(20) not null,
    -> Price decimal(10,2) not null);
ERROR 1075 (42000): Incorrect table definition; there can be only one auto column and it must be defined as a key
MariaDB [pscompany]> create table products(
    -> ProductID int auto_increment not null primary key,
    -> ProductCode char(3) not null,
    -> Name varchar(30) not null,
    -> Quantity int not null,
    -> Bye
Ctrl-C -- exit!

C:\xampp\mysql\bin>mysql -u root -h localhost
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 21
Server version: 10.4.32-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> use pscompany;
Database changed
MariaDB [pscompany]> create table products(
    -> ProductID int auto_increment not null primary key,
    -> ProductCode char(3) not null,
    -> Name varchar(30) not null,
    -> Quantity int not null,
    -> Price decimal(10,2) not null);
Query OK, 0 rows affected (0.093 sec)

MariaDB [pscompany]> desc products;
+-------------+---------------+------+-----+---------+----------------+
| Field       | Type          | Null | Key | Default | Extra          |
+-------------+---------------+------+-----+---------+----------------+
| ProductID   | int(11)       | NO   | PRI | NULL    | auto_increment |
| ProductCode | char(3)       | NO   |     | NULL    |                |
| Name        | varchar(30)   | NO   |     | NULL    |                |
| Quantity    | int(11)       | NO   |     | NULL    |                |
| Price       | decimal(10,2) | NO   |     | NULL    |                |
+-------------+---------------+------+-----+---------+----------------+
5 rows in set (0.014 sec)

MariaDB [pscompany]> inser into products(ProductID,ProductCode,Name,Quantity,Price)
    -> values
    -> (1001,"PEN","Pen Red",5000,1.23),
    -> (1002,"PEN","Pen Blue",8000,1.25),
    -> (1003,"PEN","Pen Red",5000,1.23),
    -> (1001,"PEN","Pen Red",5000,1.23),;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'inser into products(ProductID,ProductCode,Name,Quantity,Price)
values
(1001,"...' at line 1
MariaDB [pscompany]> insert into products