Microsoft Windows [Version 10.0.26200.6899]
(c) Microsoft Corporation. All rights reserved.

C:\xampp\mysql\bin>mysql -u root -h localhost
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 8
Server version: 10.4.32-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| customer_db        |
| exam_invigilator   |
| information_schema |
| mysql              |
| performance_schema |
| personnel_db       |
| phpmyadmin         |
| pscompany_db       |
| students           |
| test               |
+--------------------+
10 rows in set (0.102 sec)

MariaDB [(none)]> create database Details;
Query OK, 1 row affected (0.001 sec)

MariaDB [(none)]> use details;
Database changed
MariaDB [details]> cretae table users(
    ->
    -> \c
MariaDB [details]> create table orders(
    -> order_id bigint not null primary key,
    -> user_id bigint not null,
    -> foreign key(user\c
MariaDB [details]> create table users(
    -> user_id bigint not null primary key,
    -> mail text,
    -> created_at timestamp);\c
Query OK, 0 rows affected (0.087 sec)

MariaDB [details]> create table users(
    -> user_id bigint not null primary key,
    -> email text,
    -> created_at timestamp);
ERROR 1050 (42S01): Table 'users' already exists
MariaDB [details]> use Details;
Database changed
MariaDB [Details]> create table users(
    -> user_id bigint not null primary key,
    -> email text,
    -> created_at timestamp);
ERROR 1050 (42S01): Table 'users' already exists
MariaDB [Details]> TRUNCATE TABLE users;
Query OK, 0 rows affected (0.217 sec)

MariaDB [Details]> create table users(
    -> user_id bigint not null primary key,
    -> email text,
    -> created_at timestamp);
ERROR 1050 (42S01): Table 'users' already exists
MariaDB [Details]> show tables;
+-------------------+
| Tables_in_details |
+-------------------+
| users             |
+-------------------+
1 row in set (0.001 sec)

MariaDB [Details]> desc users;
+------------+------------+------+-----+---------------------+-------------------------------+
| Field      | Type       | Null | Key | Default             | Extra                         |
+------------+------------+------+-----+---------------------+-------------------------------+
| user_id    | bigint(20) | NO   | PRI | NULL                |
                     |
| mail       | text       | YES  |     | NULL                |
                     |
| created_at | timestamp  | NO   |     | current_timestamp() | on update current_timestamp() |
+------------+------------+------+-----+---------------------+-------------------------------+
3 rows in set (0.011 sec)

MariaDB [Details]> create table orders(
    -> order_id bigint not null primary key,
    -> user_id bigint not null,
    -> foreign key(user_id) references users(user_id));
Query OK, 0 rows affected (0.144 sec)

MariaDB [Details]> desc orders;
+----------+------------+------+-----+---------+-------+
| Field    | Type       | Null | Key | Default | Extra |
+----------+------------+------+-----+---------+-------+
| order_id | bigint(20) | NO   | PRI | NULL    |       |
| user_id  | bigint(20) | NO   | MUL | NULL    |       |
+----------+------------+------+-----+---------+-------+
2 rows in set (0.024 sec)

MariaDB [Details]> alter table users change column mail email text;
Query OK, 0 rows affected (0.205 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [Details]> desc users;
+------------+------------+------+-----+---------------------+-------------------------------+
| Field      | Type       | Null | Key | Default             | Extra                         |
+------------+------------+------+-----+---------------------+-------------------------------+
| user_id    | bigint(20) | NO   | PRI | NULL                |
                     |
| email      | text       | YES  |     | NULL                |
                     |
| created_at | timestamp  | NO   |     | current_timestamp() | on update current_timestamp() |
+------------+------------+------+-----+---------------------+-------------------------------+
3 rows in set (0.011 sec)

MariaDB [Details]> create table Student_details(
    -> id int(20) not null primary key,
    -> name varchar(20) not null,
    -> course varchar(20) not null);
Query OK, 0 rows affected (17.263 sec)

MariaDB [Details]> desc Student_details;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| id     | int(20)     | NO   | PRI | NULL    |       |
| name   | varchar(20) | NO   |     | NULL    |       |
| course | varchar(20) | NO   |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
3 rows in set (0.021 sec)

MariaDB [Details]> create table Student_marks(
    -> id int(20) not null,
    -> marks int(20) not null,
    -> foreign key(id) refernces Student_details(id));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'refernces Student_details(id))' at line 4
MariaDB [Details]>  create table Student_marks(
    -> id int(20) not null,
    -> marks int(20) not null,
    -> foreign key(id) references Student_details(id));
Query OK, 0 rows affected (0.110 sec)

MariaDB [Details]> desc Student_marks;
+-------+---------+------+-----+---------+-------+
| Field | Type    | Null | Key | Default | Extra |
+-------+---------+------+-----+---------+-------+
| id    | int(20) | NO   | MUL | NULL    |       |
| marks | int(20) | NO   |     | NULL    |       |
+-------+---------+------+-----+---------+-------+
2 rows in set (0.011 sec)

MariaDB [Details]> insert into Student_details(
    -> \c
MariaDB [Details]> insert into Student_details(id,name,course)
    -> values
    -> (2041,"Tom","Java"),
    -> (2204,"Jhon","C++"),
    -> (2043,"Alice","Python"),
    -> (2032,"Bob","Oracle");
Query OK, 4 rows affected (0.115 sec)
Records: 4  Duplicates: 0  Warnings: 0

MariaDB [Details]> select * from Student_details;
+------+-------+--------+
| id   | name  | course |
+------+-------+--------+
| 2032 | Bob   | Oracle |
| 2041 | Tom   | Java   |
| 2043 | Alice | Python |
| 2204 | Jhon  | C++    |
+------+-------+--------+
4 rows in set (0.000 sec)

MariaDB [Details]> insert into Student_marks(id,marks)
    -> values
    -> (2041,65),
    -> (2204,55),
    -> (2043,73),
    -> (2032,62);
Query OK, 4 rows affected (0.040 sec)
Records: 4  Duplicates: 0  Warnings: 0

MariaDB [Details]> select * from Student_marks;
+------+-------+
| id   | marks |
+------+-------+
| 2041 |    65 |
| 2204 |    55 |
| 2043 |    73 |
| 2032 |    62 |
+------+-------+
4 rows in set (0.000 sec)

MariaDB [Details]> show databases;
+--------------------+
| Database           |
+--------------------+
| customer_db        |
| details            |
| exam_invigilator   |
| information_schema |
| mysql              |
| performance_schema |
| personnel_db       |
| phpmyadmin         |
| pscompany_db       |
| students           |
| test               |
+--------------------+
11 rows in set (0.001 sec)

MariaDB [Details]> use pscompany_db;
Database changed
MariaDB [pscompany_db]> desc pscompany_db;
ERROR 1146 (42S02): Table 'pscompany_db.pscompany_db' doesn't exist
MariaDB [pscompany_db]> show tables;
+------------------------+
| Tables_in_pscompany_db |
+------------------------+
| products               |
+------------------------+
1 row in set (0.001 sec)

MariaDB [pscompany_db]> desc products;
+-------------+---------------+------+-----+---------+-------+
| Field       | Type          | Null | Key | Default | Extra |
+-------------+---------------+------+-----+---------+-------+
| productID   | int(11)       | NO   | PRI | NULL    |       |
| productCode | char(3)       | NO   |     | NULL    |       |
| name        | varchar(30)   | NO   |     | NULL    |       |
| quantity    | int(11)       | NO   |     | NULL    |       |
| price       | decimal(10,2) | NO   |     | NULL    |       |
+-------------+---------------+------+-----+---------+-------+
5 rows in set (0.047 sec)

MariaDB [pscompany_db]> select*from products;
+-----------+-------------+-----------+----------+-------+
| productID | productCode | name      | quantity | price |
+-----------+-------------+-----------+----------+-------+
|      1001 | PEN         | Pen Red   |     5000 |  1.23 |
|      1002 | PEN         | Pen Blue  |     8000 |  1.25 |
|      1003 | PEN         | Pen Black |     2000 |  1.24 |
+-----------+-------------+-----------+----------+-------+
3 rows in set (0.000 sec)

MariaDB [pscompany_db]> create table suppliers(
    -> supplier_id bigint not null auto_ingrement,
    -> name varchar(30) not null,
    -> phone char(8) not null,
    -> primary key (supplier_id));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '
name varchar(30) not null,
phone char(8) not null,
primary key (supplier_id))' at line 2
MariaDB [pscompany_db]> create table suppliers(
    -> supplier_id bigint not null auto_increment,
    -> name varchar(30) not null,
    -> phone char(8) not null,
    -> primary key (supplier_id));
Query OK, 0 rows affected (0.089 sec)

MariaDB [pscompany_db]> desc suppliers;
+-------------+-------------+------+-----+---------+----------------+
| Field       | Type        | Null | Key | Default | Extra          |
+-------------+-------------+------+-----+---------+----------------+
| supplier_id | bigint(20)  | NO   | PRI | NULL    | auto_increment |
| name        | varchar(30) | NO   |     | NULL    |                |
| phone       | char(8)     | NO   |     | NULL    |                |
+-------------+-------------+------+-----+---------+----------------+
3 rows in set (0.011 sec)

MariaDB [pscompany_db]> insert into suppliers(suppliers_id,name,phone)
    -> values
    -> (501,"ABC Traders",88881111),
    -> (501,"ABC Traders",88881111),
    -> ("ABC Traders",88882222),
    -> ("ABC Traders",88883333);
ERROR 1054 (42S22): Unknown column 'suppliers_id' in 'field list'
MariaDB [pscompany_db]> insert into suppliers(suppliers_id,name,phone)
    -> values
    -> (501,"ABC Traders",88881111),
    -> ("","ABC Traders",88883333);
ERROR 1054 (42S22): Unknown column 'suppliers_id' in 'field list'
MariaDB [pscompany_db]> insert into suppliers(suppliers_id,name,phone)
    -> values
    -> (501,"ABC Traders",88881111),
    -> (502,"ABC Traders",88882222),
    -> (503,"ABC Traders",88883333),
    -> \c
MariaDB [pscompany_db]> insert into suppliers(suppliers_id,name,phone)
    -> (501,"ABC Traders",88881111),
    -> (502,"XYZ Corp",88882222),
    -> (503,"QQ Corp",88883333),
    -> (504,"RK Groups",88884444),
    -> (505,"MN Traders",88885555);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '501,"ABC Traders",88881111),
(502,"XYZ Corp",88882222),
(503,"QQ Corp",888833...' at line 2
MariaDB [pscompany_db]> insert into suppliers(supplier_id,name,phone)
    -> values
    -> (501,"ABC Traders",88881111),
    -> (502,"XYZ Corp",88882222),
    -> (503,"QQ Corp",88883333),
    -> (504,"RK Groups",88884444),
    -> (505,"MN Traders",88885555);
Query OK, 5 rows affected (0.057 sec)
Records: 5  Duplicates: 0  Warnings: 0

MariaDB [pscompany_db]> select*from suppliers;
+-------------+-------------+----------+
| supplier_id | name        | phone    |
+-------------+-------------+----------+
|         501 | ABC Traders | 88881111 |
|         502 | XYZ Corp    | 88882222 |
|         503 | QQ Corp     | 88883333 |
|         504 | RK Groups   | 88884444 |
|         505 | MN Traders  | 88885555 |
+-------------+-------------+----------+
5 rows in set (0.001 sec)

MariaDB [pscompany_db]> create table products_suppliers(
    -> productID bigint not null primary key,
    -> supplier\c
MariaDB [pscompany_db]> create table products_suppliers(
    -> product_id bigint not null primary key,
    -> supplier_id bigint not null auto_increment,
    -> foreign key(supplier_id) references suppliers(supplier_id));
Query OK, 0 rows affected (0.149 sec)

MariaDB [pscompany_db]> desc products_suppliers;
+-------------+------------+------+-----+---------+----------------+
| Field       | Type       | Null | Key | Default | Extra          |
+-------------+------------+------+-----+---------+----------------+
| product_id  | bigint(20) | NO   | PRI | NULL    |                |
| supplier_id | bigint(20) | NO   | MUL | NULL    | auto_increment |
+-------------+------------+------+-----+---------+----------------+
2 rows in set (0.049 sec)

MariaDB [pscompany_db]> alter table suppliers
    -> auto_increment = 601;
Query OK, 0 rows affected (0.336 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [pscompany_db]> select*from suppliers;
+-------------+-------------+----------+
| supplier_id | name        | phone    |
+-------------+-------------+----------+
|         501 | ABC Traders | 88881111 |
|         502 | XYZ Corp    | 88882222 |
|         503 | QQ Corp     | 88883333 |
|         504 | RK Groups   | 88884444 |
|         505 | MN Traders  | 88885555 |
+-------------+-------------+----------+
5 rows in set (0.001 sec)

MariaDB [pscompany_db]> alter table suppliers
    -> auto_increment = 502;
Query OK, 0 rows affected (0.055 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [pscompany_db]> select*from suppliers;
+-------------+-------------+----------+
| supplier_id | name        | phone    |
+-------------+-------------+----------+
|         501 | ABC Traders | 88881111 |
|         502 | XYZ Corp    | 88882222 |
|         503 | QQ Corp     | 88883333 |
|         504 | RK Groups   | 88884444 |
|         505 | MN Traders  | 88885555 |
+-------------+-------------+----------+
5 rows in set (0.000 sec)

MariaDB [pscompany_db]> alter table suppliers
    -> auto_increment = 601;
Query OK, 0 rows affected (0.074 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [pscompany_db]> insert into suppliers(name,phone)
    -> values
    -> ("AFC Corp",88886666);
Query OK, 1 row affected (0.057 sec)

MariaDB [pscompany_db]> select*from suppliers;
+-------------+-------------+----------+
| supplier_id | name        | phone    |
+-------------+-------------+----------+
|         501 | ABC Traders | 88881111 |
|         502 | XYZ Corp    | 88882222 |
|         503 | QQ Corp     | 88883333 |
|         504 | RK Groups   | 88884444 |
|         505 | MN Traders  | 88885555 |
|         601 | AFC Corp    | 88886666 |
+-------------+-------------+----------+
6 rows in set (0.000 sec)

MariaDB [pscompany_db]> delete from suppliers where supplier_id = 601;
Query OK, 1 row affected (0.573 sec)

MariaDB [pscompany_db]> select*from suppliers;
+-------------+-------------+----------+
| supplier_id | name        | phone    |
+-------------+-------------+----------+
|         501 | ABC Traders | 88881111 |
|         502 | XYZ Corp    | 88882222 |
|         503 | QQ Corp     | 88883333 |
|         504 | RK Groups   | 88884444 |
|         505 | MN Traders  | 88885555 |
+-------------+-------------+----------+
5 rows in set (0.000 sec)

MariaDB [pscompany_db]> select*from products;
+-----------+-------------+-----------+----------+-------+
| productID | productCode | name      | quantity | price |
+-----------+-------------+-----------+----------+-------+
|      1001 | PEN         | Pen Red   |     5000 |  1.23 |
|      1002 | PEN         | Pen Blue  |     8000 |  1.25 |
|      1003 | PEN         | Pen Black |     2000 |  1.24 |
+-----------+-------------+-----------+----------+-------+
3 rows in set (0.000 sec)

MariaDB [pscompany_db]> select*from products order by phone desc;
ERROR 1054 (42S22): Unknown column 'phone' in 'order clause'
MariaDB [pscompany_db]> select*from products order by price desc;
+-----------+-------------+-----------+----------+-------+
| productID | productCode | name      | quantity | price |
+-----------+-------------+-----------+----------+-------+
|      1002 | PEN         | Pen Blue  |     8000 |  1.25 |
|      1003 | PEN         | Pen Black |     2000 |  1.24 |
|      1001 | PEN         | Pen Red   |     5000 |  1.23 |
+-----------+-------------+-----------+----------+-------+
3 rows in set (0.000 sec)

MariaDB [pscompany_db]> select supplier_id from products distinct;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'distinct' at line 1
MariaDB [pscompany_db]> select phone as phone_number from suppliers;
+--------------+
| phone_number |
+--------------+
| 88881111     |
| 88882222     |
| 88883333     |
| 88884444     |
| 88885555     |
+--------------+
5 rows in set (0.001 sec)

MariaDB [pscompany_db]> select concat_ws(',',"name,"productCode);
ERROR 1583 (42000): Incorrect parameters in the call to native function 'concat_ws'
MariaDB [pscompany_db]> create database world;
Query OK, 1 row affected (0.001 sec)

MariaDB [pscompany_db]> use world;
Database changed
MariaDB [world]> create table country(
    -> code bigint not null primary key,
    -> name varchar(20) not null,
    -> continent varchar(20) not null,
    -> population bigint not null);
Query OK, 0 rows affected (0.094 sec)

MariaDB [world]> desc country;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| code       | bigint(20)  | NO   | PRI | NULL    |       |
| name       | varchar(20) | NO   |     | NULL    |       |
| continent  | varchar(20) | NO   |     | NULL    |       |
| population | bigint(20)  | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.024 sec)

MariaDB [world]> insert into country(code,name,continent,population)
    -> values
    -> (91,"India","Asia","Southern Asia",500000),
    -> (94,"Sri_lanka","Asia","Southern Asia",130000),
    -> (1,"Canada","America","North America",150000);
ERROR 1136 (21S01): Column count doesn't match value count at row 1
MariaDB [world]> insert into country(code,name,continent,region,populati
on)\c
MariaDB [world]> alter table add column region varchar(20) not null after population;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'add column region varchar(20) not null after population' at line 1
MariaDB [world]> alter table country add column region varchar(20) not null after population;
Query OK, 0 rows affected (0.073 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [world]> desc country;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| code       | bigint(20)  | NO   | PRI | NULL    |       |
| name       | varchar(20) | NO   |     | NULL    |       |
| continent  | varchar(20) | NO   |     | NULL    |       |
| population | bigint(20)  | NO   |     | NULL    |       |
| region     | varchar(20) | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
5 rows in set (0.012 sec)

MariaDB [world]> insert into country(code,name,continent,population)
    -> values
    -> (91,"India","Asia","Southern Asia",500000),
    -> (94,"Sri_lanka","Asia","Southern Asia",130000),
    -> (1,"Canada","America","North America",150000);
ERROR 1136 (21S01): Column count doesn't match value count at row 1
MariaDB [world]> alter table country modify column region before populat
ion;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'before population' at line 1
MariaDB [world]> alter table country modify column region varchar(20) noy null before population;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'null before population' at line 1
MariaDB [world]> alter table country modify column region varchar(20) not null before population;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'before population' at line 1
MariaDB [world]> alter table country modify column region varchar(20) not null before population;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'before population' at line 1
MariaDB [world]> alter table country modify column region varchar(20) not null before population;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'before population' at line 1
MariaDB [world]> use pscompany_db;
Database changed
MariaDB [pscompany_db]> select name,price from products where name like'pen Blue%';
+----------+-------+
| name     | price |
+----------+-------+
| Pen Blue |  1.25 |
+----------+-------+
1 row in set (0.000 sec)

MariaDB [pscompany_db]> use world;
Database changed
MariaDB [world]> alter table country change column region region varchar
(20) not null after continent;
Query OK, 0 rows affected (0.089 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [world]> desc country;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| code       | bigint(20)  | NO   | PRI | NULL    |       |
| name       | varchar(20) | NO   |     | NULL    |       |
| continent  | varchar(20) | NO   |     | NULL    |       |
| region     | varchar(20) | NO   |     | NULL    |       |
| population | bigint(20)  | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
5 rows in set (0.013 sec)

MariaDB [world]> insert into country(code,name,continent,population)
    -> values
    -> (91,"India","Asia","Southern Asia",500000),
    -> (94,"Sri_lanka","Asia","Southern Asia",130000),
    -> (1,"Canada","America","North America",150000);
ERROR 1136 (21S01): Column count doesn't match value count at row 1
MariaDB [world]> use pscompany_db;
Database changed
MariaDB [pscompany_db]> insert into country(code,name,continent,region,p
opulation)
    -> values
    -> (91,"India","Asia","Southern Asia",500000),
    -> (94,"Sri_lanka","Asia","Southern Asia",130000),
    -> (1,"Canada","America","North America",150000);
ERROR 1146 (42S02): Table 'pscompany_db.country' doesn't exist
MariaDB [pscompany_db]> use world;
Database changed
MariaDB [world]> insert into country(code,name,continent,region,population)
    -> values
    -> (91,"India","Asia","Southern Asia",500000),
    -> (94,"Sri_lanka","Asia","Southern Asia",130000),
    -> (1,"Canada","America","North America",150000);
Query OK, 3 rows affected (10.944 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [world]> select*from country;
+------+-----------+-----------+---------------+------------+
| code | name      | continent | region        | population |
+------+-----------+-----------+---------------+------------+
|    1 | Canada    | America   | North America |     150000 |
|   91 | India     | Asia      | Southern Asia |     500000 |
|   94 | Sri_lanka | Asia      | Southern Asia |     130000 |
+------+-----------+-----------+---------------+------------+
3 rows in set (0.000 sec)

MariaDB [world]> use pscompany_db
Database changed
MariaDB [pscompany_db]> show tables;
+------------------------+
| Tables_in_pscompany_db |
+------------------------+
| products               |
| products_suppliers     |
| suppliers              |
+------------------------+
3 rows in set (0.001 sec)

MariaDB [pscompany_db]> desc products;
+-------------+---------------+------+-----+---------+-------+
| Field       | Type          | Null | Key | Default | Extra |
+-------------+---------------+------+-----+---------+-------+
| productID   | int(11)       | NO   | PRI | NULL    |       |
| productCode | char(3)       | NO   |     | NULL    |       |
| name        | varchar(30)   | NO   |     | NULL    |       |
| quantity    | int(11)       | NO   |     | NULL    |       |
| price       | decimal(10,2) | NO   |     | NULL    |       |
+-------------+---------------+------+-----+---------+-------+
5 rows in set (0.014 sec)

MariaDB [pscompany_db]> select*from products;
+-----------+-------------+-----------+----------+-------+
| productID | productCode | name      | quantity | price |
+-----------+-------------+-----------+----------+-------+
|      1001 | PEN         | Pen Red   |     5000 |  1.23 |
|      1002 | PEN         | Pen Blue  |     8000 |  1.25 |
|      1003 | PEN         | Pen Black |     2000 |  1.24 |
+-----------+-------------+-----------+----------+-------+
3 rows in set (0.000 sec)

MariaDB [pscompany_db]> select from products where not price>0.50;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'from products where not price>0.50' at line 1
MariaDB [pscompany_db]> select*from products where not price>0.50;
Empty set (0.001 sec)

MariaDB [pscompany_db]> select*from products where price>0.50;
+-----------+-------------+-----------+----------+-------+
| productID | productCode | name      | quantity | price |
+-----------+-------------+-----------+----------+-------+
|      1001 | PEN         | Pen Red   |     5000 |  1.23 |
|      1002 | PEN         | Pen Blue  |     8000 |  1.25 |
|      1003 | PEN         | Pen Black |     2000 |  1.24 |
+-----------+-------------+-----------+----------+-------+
3 rows in set (0.000 sec)

MariaDB [pscompany_db]> select*from products where name in ('pen red','p
en black');
+-----------+-------------+-----------+----------+-------+
| productID | productCode | name      | quantity | price |
+-----------+-------------+-----------+----------+-------+
|      1001 | PEN         | Pen Red   |     5000 |  1.23 |
|      1003 | PEN         | Pen Black |     2000 |  1.24 |
+-----------+-------------+-----------+----------+-------+
2 rows in set (0.001 sec)

MariaDB [pscompany_db]> select*from products where price between 1.25 an
d 2.0;
+-----------+-------------+----------+----------+-------+
| productID | productCode | name     | quantity | price |
+-----------+-------------+----------+----------+-------+
|      1002 | PEN         | Pen Blue |     8000 |  1.25 |
+-----------+-------------+----------+----------+-------+
1 row in set (0.001 sec)

MariaDB [pscompany_db]> select*from products order by price limit 2;
+-----------+-------------+-----------+----------+-------+
| productID | productCode | name      | quantity | price |
+-----------+-------------+-----------+----------+-------+
|      1001 | PEN         | Pen Red   |     5000 |  1.23 |
|      1003 | PEN         | Pen Black |     2000 |  1.24 |
+-----------+-------------+-----------+----------+-------+
2 rows in set (0.001 sec)

MariaDB [pscompany_db]> select*from products limit 3 order by productCode;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'order by productCode' at line 1
MariaDB [pscompany_db]> select*from products order by productCode limit 3;
+-----------+-------------+-----------+----------+-------+
| productID | productCode | name      | quantity | price |
+-----------+-------------+-----------+----------+-------+
|      1001 | PEN         | Pen Red   |     5000 |  1.23 |
|      1002 | PEN         | Pen Blue  |     8000 |  1.25 |
|      1003 | PEN         | Pen Black |     2000 |  1.24 |
+-----------+-------------+-----------+----------+-------+
3 rows in set (0.000 sec)

MariaDB [pscompany_db]> select*from products order by productCode limit 3 offset 1;
+-----------+-------------+-----------+----------+-------+
| productID | productCode | name      | quantity | price |
+-----------+-------------+-----------+----------+-------+
|      1002 | PEN         | Pen Blue  |     8000 |  1.25 |
|      1003 | PEN         | Pen Black |     2000 |  1.24 |
+-----------+-------------+-----------+----------+-------+
2 rows in set (0.000 sec)

MariaDB [pscompany_db]> select count productID from products;
ERROR 1054 (42S22): Unknown column 'count' in 'field list'
MariaDB [pscompany_db]> select count (productID) from products;
ERROR 1630 (42000): FUNCTION pscompany_db.count does not exist. Check the 'Function Name Parsing and Resolution' section in the Reference Manual
MariaDB [pscompany_db]> select count(*) from products where price>1.0;
+----------+
| count(*) |
+----------+
|        3 |
+----------+
1 row in set (0.001 sec)

MariaDB [pscompany_db]> select count(*) from products;
+----------+
| count(*) |
+----------+
|        3 |
+----------+
1 row in set (0.001 sec)

MariaDB [pscompany_db]> select max(price),min(price) from products;
+------------+------------+
| max(price) | min(price) |
+------------+------------+
|       1.25 |       1.23 |
+------------+------------+
1 row in set (0.000 sec)

MariaDB [pscompany_db]> delete from products where productID = 1002;
Query OK, 1 row affected (0.080 sec)

MariaDB [pscompany_db]> select*from products;
+-----------+-------------+-----------+----------+-------+
| productID | productCode | name      | quantity | price |
+-----------+-------------+-----------+----------+-------+
|      1001 | PEN         | Pen Red   |     5000 |  1.23 |
|      1003 | PEN         | Pen Black |     2000 |  1.24 |
+-----------+-------------+-----------+----------+-------+
2 rows in set (0.000 sec)

MariaDB [pscompany_db]> world > world_backup.sql
    -> ^A\c
MariaDB [pscompany_db]>MariaDB [pscompany_db]> update products set name = "pen gereen" where pr
oductID = 1001;
Query OK, 1 row affected (0.056 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [pscompany_db]> select*from products;
+-----------+-------------+------------+----------+-------+
| productID | productCode | name       | quantity | price |
+-----------+-------------+------------+----------+-------+
|      1001 | PEN         | pen gereen |     5000 |  1.23 |
|      1003 | PEN         | Pen Black  |     2000 |  1.24 |
+-----------+-------------+------------+----------+-------+
2 rows in set (0.000 sec)

MariaDB [pscompany_db]>
