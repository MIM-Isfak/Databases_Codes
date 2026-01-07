Microsoft Windows [Version 10.0.26200.6899]
(c) Microsoft Corporation. All rights reserved.

C:\Users\DcsUser>cd ..

C:\Users>cd ..

C:\>cd cd xampp
The system cannot find the path specified.

C:\>cd xampp

C:\xampp>cd mysql

C:\xampp\mysql>cd bin

C:\xampp\mysql\bin>mysql -u -h localhost
ERROR 1045 (28000): Access denied for user '-h'@'localhost' (using password: NO)

C:\xampp\mysql\bin>mysql -u root -h localhost
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 9
Server version: 10.4.32-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> select version();
+-----------------+
| version()       |
+-----------------+
| 10.4.32-MariaDB |
+-----------------+
1 row in set (0.000 sec)

MariaDB [(none)]> select version(), current_date;
+-----------------+--------------+
| version()       | current_date |
+-----------------+--------------+
| 10.4.32-MariaDB | 2025-12-18   |
+-----------------+--------------+
1 row in set (0.000 sec)

MariaDB [(none)]>  select version();select row();
+-----------------+
| version()       |
+-----------------+
| 10.4.32-MariaDB |
+-----------------+
1 row in set (0.000 sec)

ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')' at line 1
MariaDB [(none)]> select version();select now();
+-----------------+
| version()       |
+-----------------+
| 10.4.32-MariaDB |
+-----------------+
1 row in set (0.000 sec)

+---------------------+
| now()               |
+---------------------+
| 2025-12-18 09:41:10 |
+---------------------+
1 row in set (0.000 sec)

MariaDB [(none)]> select (4+3)*5
    -> Bye
Ctrl-C -- exit!

C:\xampp\mysql\bin>musql -u root -h localhost
'musql' is not recognized as an internal or external command,
operable program or batch file.

C:\xampp\mysql\bin>mysql -u root -h localhost
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 10
Server version: 10.4.32-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> select (4+3)*5;
+---------+
| (4+3)*5 |
+---------+
|      35 |
+---------+
1 row in set (0.000 sec)

MariaDB [(none)]> select sin(pi());
+------------------------+
| sin(pi())              |
+------------------------+
| 1.2246467991473532e-16 |
+------------------------+
1 row in set (0.001 sec)

MariaDB [(none)]> select sin(pi()/4);
+--------------------+
| sin(pi()/4)        |
+--------------------+
| 0.7071067811865476 |
+--------------------+
1 row in set (0.000 sec)

MariaDB [(none)]> select version()
    -> ,
    -> now();
+-----------------+---------------------+
| version()       | now()               |
+-----------------+---------------------+
| 10.4.32-MariaDB | 2025-12-18 09:47:47 |
+-----------------+---------------------+
1 row in set (0.000 sec)

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| exam_invigilator   |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+
6 rows in set (0.066 sec)

MariaDB [(none)]> use test;
Database changed
MariaDB [test]> show tables;
Empty set (0.001 sec)

MariaDB [test]> use mysql;show tables;
Database changed
+---------------------------+
| Tables_in_mysql           |
+---------------------------+
| column_stats              |
| columns_priv              |
| db                        |
| event                     |
| func                      |
| general_log               |
| global_priv               |
| gtid_slave_pos            |
| help_category             |
| help_keyword              |
| help_relation             |
| help_topic                |
| index_stats               |
| innodb_index_stats        |
| innodb_table_stats        |
| plugin                    |
| proc                      |
| procs_priv                |
| proxies_priv              |
| roles_mapping             |
| servers                   |
| slow_log                  |
| table_stats               |
| tables_priv               |
| time_zone                 |
| time_zone_leap_second     |
| time_zone_name            |
| time_zone_transition      |
| time_zone_transition_type |
| transaction_registry      |
| user                      |
+---------------------------+
31 rows in set (0.001 sec)

MariaDB [mysql]> describe servers;
+-------------+----------+------+-----+---------+-------+
| Field       | Type     | Null | Key | Default | Extra |
+-------------+----------+------+-----+---------+-------+
| Server_name | char(64) | NO   | PRI |         |       |
| Host        | char(64) | NO   |     |         |       |
| Db          | char(64) | NO   |     |         |       |
| Username    | char(80) | NO   |     |         |       |
| Password    | char(64) | NO   |     |         |       |
| Port        | int(4)   | NO   |     | 0       |       |
| Socket      | char(64) | NO   |     |         |       |
| Wrapper     | char(64) | NO   |     |         |       |
| Owner       | char(64) | NO   |     |         |       |
+-------------+----------+------+-----+---------+-------+
9 rows in set (0.015 sec)

MariaDB [mysql]> select * from servers;
Empty set (0.121 sec)

MariaDB [mysql]> select user;
ERROR 1054 (42S22): Unknown column 'user' in 'field list'
MariaDB [mysql]> select field from servers;
ERROR 1054 (42S22): Unknown column 'field' in 'field list'
MariaDB [mysql]> create database students;
Query OK, 1 row affected (0.043 sec)

MariaDB [mysql]> show databases;
+--------------------+
| Database           |
+--------------------+
| exam_invigilator   |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| students           |
| test               |
+--------------------+
7 rows in set (0.001 sec)

MariaDB [mysql]> use students;
Database changed
MariaDB [students]> drop database students;
Query OK, 0 rows affected, 1 warning (0.136 sec)

MariaDB [(none)]> show database;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'database' at line 1
MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| exam_invigilator   |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+
6 rows in set (0.001 sec)

MariaDB [(none)]> create database students;
Query OK, 1 row affected (0.001 sec)

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| exam_invigilator   |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| students           |
| test               |
+--------------------+
7 rows in set (0.001 sec)

MariaDB [(none)]> use student;
ERROR 1049 (42000): Unknown database 'student'
MariaDB [(none)]> use students;
Database changed
MariaDB [students]> create table tutorial_tb1(tutorial_id INT NOT NULL AUTO_INGREMENT,tutorial_title VARCHAR(100) NOT NULL,tutorial_author VARCHAR(40) NOT NULL,submission_date DATE, PRIMARY KEY (tutorial_id) );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'tutorial_title VARCHAR(100) NOT NULL,tutorial_author VARCHAR(40) NOT NULL,sub...' at line 1
MariaDB [students]> create table tutorial_tb1(tutorial_id INT NOT NULL AUTO_INGREMENT,tutorial_title VARCHAR(100) NOT NULL,tutorial_author VARCHAR(40) NOT NULL,submission_date DATE, PRIMARY KEY( (tutorial_id) );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'tutorial_title VARCHAR(100) NOT NULL,tutorial_author VARCHAR(40) NOT NULL,sub...' at line 1
MariaDB [students]> create table tutorial_tb1(tutorial_id INT NOT NULL AUTO_INCREMENT,tutorial_title VARCHAR(100) NOT NULL,tutorial_author VARCHAR(40) NOT NULL,submission_date DATE, PRIMARY KEY (tutorial_id) );
Query OK, 0 rows affected (0.110 sec)

MariaDB [students]> show tables;
+--------------------+
| Tables_in_students |
+--------------------+
| tutorial_tb1       |
+--------------------+
1 row in set (0.001 sec)

MariaDB [students]> describe tutorial_tb1;
+-----------------+--------------+------+-----+---------+----------------+
| Field           | Type         | Null | Key | Default | Extra          |
+-----------------+--------------+------+-----+---------+----------------+
| tutorial_id     | int(11)      | NO   | PRI | NULL    | auto_increment |
| tutorial_title  | varchar(100) | NO   |     | NULL    |                |
| tutorial_author | varchar(40)  | NO   |     | NULL    |                |
| submission_date | date         | YES  |     | NULL    |                |
+-----------------+--------------+------+-----+---------+----------------+
4 rows in set (0.012 sec)

MariaDB [students]> drop table tutorial_tb1;
Query OK, 0 rows affected (0.079 sec)

MariaDB [students]> show databases;
+--------------------+
| Database           |
+--------------------+
| exam_invigilator   |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| students           |
| test               |
+--------------------+
7 rows in set (0.001 sec)

MariaDB [students]> create table tutorial_tb1(tutorial_id INT NOT NULL AUTO_INGREMENT,tutorial_title VARCHAR(100) NOT NULL,tutorial_author VARCHAR(40) NOT NULL,submission_date DATE, PRIMARY KEY (tutorial_id) )
    -> cd\
    -> \cd
    ->
    -> \c
MariaDB [students]> create table tutorial_tb1(
    -> tutorial_id INT NOT NULL AUTO_INGREMENT,
    -> tutorial_title VARCHAR(100) NOT NULL,
    -> tutorial_author VARCHAR(40) NOT NULL,
    -> submission_date DATE,
    -> PRIMARY KEY (tutorial_id) );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '
tutorial_title VARCHAR(100) NOT NULL,
tutorial_author VARCHAR(40) NOT NULL,
...' at line 2
MariaDB [students]> create table tutorial_tb1(
    -> tutorial_id INT NOT NULL AUTO_INCREMENT,
    -> tutorial_title VARCHAR(100) NOT NULL,
    -> tutorial_author VARCHAR(40) NOT NULL,
    -> submission_date DATE,
    -> PRIMARY KEY (tutorial_id) );
Query OK, 0 rows affected (55.972 sec)

MariaDB [students]>
MariaDB [students]>
MariaDB [students]>
MariaDB [students]> \c
MariaDB [students]> describe tutorial_tb1;
+-----------------+--------------+------+-----+---------+----------------+
| Field           | Type         | Null | Key | Default | Extra          |
+-----------------+--------------+------+-----+---------+----------------+
| tutorial_id     | int(11)      | NO   | PRI | NULL    | auto_increment |
| tutorial_title  | varchar(100) | NO   |     | NULL    |                |
| tutorial_author | varchar(40)  | NO   |     | NULL    |                |
| submission_date | date         | YES  |     | NULL    |                |
+-----------------+--------------+------+-----+---------+----------------+
4 rows in set (1.990 sec)

MariaDB [students]> create table Marksheet;
ERROR 1113 (42000): A table must have at least 1 column
MariaDB [students]> create table Marksheet(
    -> Student_id VARCHAR NOT NULL,
    -> Student_name VARCHAR NOT NULL,
    -> Age INT NOT NULL,
    -> NIC CHAR NOT NULL,
    -> Marks DOUBLE NOT NULL,
    -> Submission_date DATE,
    -> PRIMARY KEY (Student_id) );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'NOT NULL,
Student_name VARCHAR NOT NULL,
Age INT NOT NULL,
NIC CHAR NOT NULL,...' at line 2
MariaDB [students]> create table Marksheet(
    ->     -> Student_id VARCHAR NOT NULL,
    ->     -> Student_name VARCHAR NOT NULL,
    ->     -> Age INT NOT NULL,
    ->     -> NIC CHAR NOT NULL,
    ->     -> Marks DOUBLE NOT NULL,
    ->     -> Submission_date DATE,
    ->     -> PRIMARY KEY (Student_id) );\c
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '-> Student_id VARCHAR NOT NULL,
    -> Student_name VARCHAR NOT NULL,
    -> ...' at line 2
MariaDB [students]>  create table Marksheet(
    -> Student_id VARCHAR(20) NOT NULL,
    -> Student_name VARCHAR(100) NOT NULL,
    -> Age INT NOT NULL,
    -> NIC CHAR(12) NOT NULL,
    -> Marks DOUBLE NOT NULL,
    -> Submission_date DATE,
    -> PRIMARY KEY (Student_id) );
Query OK, 0 rows affected (0.110 sec)

MariaDB [students]> desc Marksheet;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| Student_id      | varchar(20)  | NO   | PRI | NULL    |       |
| Student_name    | varchar(100) | NO   |     | NULL    |       |
| Age             | int(11)      | NO   |     | NULL    |       |
| NIC             | char(12)     | NO   |     | NULL    |       |
| Marks           | double       | NO   |     | NULL    |       |
| Submission_date | date         | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
6 rows in set (0.012 sec)

MariaDB [students]> alter table Marksheet MODIFY column Marks INT NOT NULL;
Query OK, 0 rows affected (0.496 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [students]> desc Marksheet;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| Student_id      | varchar(20)  | NO   | PRI | NULL    |       |
| Student_name    | varchar(100) | NO   |     | NULL    |       |
| Age             | int(11)      | NO   |     | NULL    |       |
| NIC             | char(12)     | NO   |     | NULL    |       |
| Marks           | int(11)      | NO   |     | NULL    |       |
| Submission_date | date         | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
6 rows in set (0.021 sec)

MariaDB [students]> alter table Marksheet add column name varchar(20) not null after submission_date;
Query OK, 0 rows affected (0.080 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [students]> desc Marksheet;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| Student_id      | varchar(20)  | NO   | PRI | NULL    |       |
| Student_name    | varchar(100) | NO   |     | NULL    |       |
| Age             | int(11)      | NO   |     | NULL    |       |
| NIC             | char(12)     | NO   |     | NULL    |       |
| Marks           | int(11)      | NO   |     | NULL    |       |
| Submission_date | date         | YES  |     | NULL    |       |
| name            | varchar(20)  | NO   |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
7 rows in set (0.013 sec)

MariaDB [students]> alter table tutorial_tb1 add column tutorial_fee decimal(2,1) not null after tutorial_author;
Query OK, 0 rows affected (0.069 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [students]> desc tutorial_tb1;
+-----------------+--------------+------+-----+---------+----------------+
| Field           | Type         | Null | Key | Default | Extra          |
+-----------------+--------------+------+-----+---------+----------------+
| tutorial_id     | int(11)      | NO   | PRI | NULL    | auto_increment |
| tutorial_title  | varchar(100) | NO   |     | NULL    |                |
| tutorial_author | varchar(40)  | NO   |     | NULL    |                |
| tutorial_fee    | decimal(2,1) | NO   |     | NULL    |                |
| submission_date | date         | YES  |     | NULL    |                |
+-----------------+--------------+------+-----+---------+----------------+
5 rows in set (0.015 sec)

MariaDB [students]> select * from tutorial_tb1;
Empty set (0.000 sec)

MariaDB [students]> alter table tutorial_tb1 modify column tutorial_title varchar(150) null;
Query OK, 0 rows affected (0.419 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [students]> desc tutorial_tb1;
+-----------------+--------------+------+-----+---------+----------------+
| Field           | Type         | Null | Key | Default | Extra          |
+-----------------+--------------+------+-----+---------+----------------+
| tutorial_id     | int(11)      | NO   | PRI | NULL    | auto_increment |
| tutorial_title  | varchar(150) | YES  |     | NULL    |                |
| tutorial_author | varchar(40)  | NO   |     | NULL    |                |
| tutorial_fee    | decimal(2,1) | NO   |     | NULL    |                |
| submission_date | date         | YES  |     | NULL    |                |
+-----------------+--------------+------+-----+---------+----------------+
5 rows in set (0.011 sec)

MariaDB [students]> alter table tutorial_tb1 change column tutorial_fee fee decimal(2,1) null;
Query OK, 0 rows affected (0.246 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [students]> desc tutorial_tb1;
+-----------------+--------------+------+-----+---------+----------------+
| Field           | Type         | Null | Key | Default | Extra          |
+-----------------+--------------+------+-----+---------+----------------+
| tutorial_id     | int(11)      | NO   | PRI | NULL    | auto_increment |
| tutorial_title  | varchar(150) | YES  |     | NULL    |                |
| tutorial_author | varchar(40)  | NO   |     | NULL    |                |
| fee             | decimal(2,1) | YES  |     | NULL    |                |
| submission_date | date         | YES  |     | NULL    |                |
+-----------------+--------------+------+-----+---------+----------------+
5 rows in set (0.028 sec)

MariaDB [students]> alter table tutorial_tb1 rename to tutorials;
Query OK, 0 rows affected (0.052 sec)

MariaDB [students]> desc tutorials;
+-----------------+--------------+------+-----+---------+----------------+
| Field           | Type         | Null | Key | Default | Extra          |
+-----------------+--------------+------+-----+---------+----------------+
| tutorial_id     | int(11)      | NO   | PRI | NULL    | auto_increment |
| tutorial_title  | varchar(150) | YES  |     | NULL    |                |
| tutorial_author | varchar(40)  | NO   |     | NULL    |                |
| fee             | decimal(2,1) | YES  |     | NULL    |                |
| submission_date | date         | YES  |     | NULL    |                |
+-----------------+--------------+------+-----+---------+----------------+
5 rows in set (0.012 sec)

MariaDB [students]>MariaDB [students]> alter table tutorials drop column fee;
Query OK, 0 rows affected (0.287 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [students]> desc tutorials;
+-----------------+--------------+------+-----+---------+----------------+
| Field           | Type         | Null | Key | Default | Extra          |
+-----------------+--------------+------+-----+---------+----------------+
| tutorial_id     | int(11)      | NO   | PRI | NULL    | auto_increment |
| tutorial_title  | varchar(150) | YES  |     | NULL    |                |
| tutorial_author | varchar(40)  | NO   |     | NULL    |                |
| submission_date | date         | YES  |     | NULL    |                |
+-----------------+--------------+------+-----+---------+----------------+
4 rows in set (0.051 sec)

MariaDB [students]>