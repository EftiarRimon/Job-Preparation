-- Create database
CREATE DATABASE IF NOT EXISTS test_db;
USE test_db;

-- Drop table if already exists (clean start)
DROP TABLE IF EXISTS customers;

-- Create table
CREATE TABLE customers (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    customer_number VARCHAR(20) NOT NULL UNIQUE,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(255),
    phone VARCHAR(50),
    street VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    postal_code VARCHAR(30),
    country VARCHAR(100) DEFAULT 'USA',
    status ENUM('active','inactive','prospect') NOT NULL DEFAULT 'active',
    price VARCHAR(100),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    

    PRIMARY KEY (id),
    UNIQUE KEY ux_customers_email (email),
    INDEX idx_last_name (last_name),
    INDEX idx_phone (phone)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Insert 10 customers
INSERT INTO customers (
    customer_number, first_name, last_name, email, phone,
    street, city, state, postal_code, country, status,price
)
VALUES
('CUST001', 'Rahim', 'Uddin', 'rahim.uddin@gmail.com', '01711111111',
 '12 Lake Road', 'Dhaka', 'Dhaka', '1205', 'Bangladesh', 'active','75'),

('CUST002', 'Karim', 'Ahmed', 'karim.ahmed@gmail.com', '01722222222',
 '45 Green Road', 'Chittagong', 'Chittagong', '4000', 'Bangladesh', 'active','96'),

('CUST003', 'Sadia', 'Islam', 'sadia.islam@gmail.com', '01733333333',
 '78 Park Street', 'Khulna', 'Khulna', '9000', 'Bangladesh', 'inactive','92'),

('CUST004', 'Nusrat', 'Jahan', 'nusrat.jahan@gmail.com', '01744444444',
 '21 River View', 'Sylhet', 'Sylhet', '3100', 'Bangladesh', 'active','93'),

('CUST005', 'rahim', 'Hossain', 'tanvir.h@gmail.com', '01755555555',
 '99 Airport Road', 'Dhaka', 'Dhaka', '1215', 'Bangladesh', 'prospect','69'),

('CUST006', 'Fahim', 'Khan', 'fahim.khan@gmail.com', '01766666666',
 '33 Stadium Road', 'Rajshahi', 'Rajshahi', '6000', 'Bangladesh', 'active','16'),

('CUST007', 'Ayesha', 'Rahman', 'ayesha.rahman@gmail.com', '01777777777',
 '55 College Road', 'Barisal', 'Barisal', '8200', 'Bangladesh', 'active','91'),

('CUST008', 'Imran', 'Sarker', 'imran.sarker@gmail.com', '01788888888',
 '11 Station Road', 'Comilla', 'Chittagong', '3500', 'Bangladesh', 'inactive','75'),

('CUST009', 'Mehedi', 'Hasan', 'mehedi.hasan@gmail.com', '01799999999',
 '66 Market Road', 'Rangpur', 'Rangpur', '5400', 'Bangladesh', 'active','39'),

('CUST010', 'Lamia', 'Akter', 'lamia.akter@gmail.com', '01800000000',
 '88 University Road', 'Dhaka', 'Dhaka', '1229', 'Bangladesh', 'prospect','53'),

('CUST011','Arif','Rahman','arif.rahman11@gmail.com','01810000011',
 '11 Main Road','Dhaka','Dhaka','1201','Bangladesh','active','80'),

('CUST012','Shila','Akter','shila.akter12@gmail.com','01810000012',
 '12 Main Road','Khulna','Khulna','9001','Bangladesh','inactive','65'),

('CUST013','Rafi','Ahmed','rafi.ahmed13@gmail.com','01810000013',
 '13 Main Road','Sylhet','Sylhet','3101','Bangladesh','active','90'),

('CUST014','Mitu','Sultana','mitu.sultana14@gmail.com','01810000014',
 '14 Main Road','Rajshahi','Rajshahi','6001','Bangladesh','prospect','72'),

('CUST015','Hasan','Karim','hasan.karim15@gmail.com','01810000015',
 '15 Main Road','Chittagong','Chittagong','4001','Bangladesh','active','95'),

('CUST016','Tania','Islam','tania.islam16@gmail.com','01810000016',
 '16 Main Road','Barisal','Barisal','8201','Bangladesh','active','88'),

('CUST017','Sabbir','Hossain','sabbir.hossain17@gmail.com','01810000017',
 '17 Main Road','Rangpur','Rangpur','5401','Bangladesh','inactive','60'),

('CUST018','Nadia','Jahan','nadia.jahan18@gmail.com','01810000018',
 '18 Main Road','Dhaka','Dhaka','1212','Bangladesh','active','77'),

('CUST019','Tanvir','Alam','tanvir.alam19@gmail.com','01810000019',
 '19 Main Road','Comilla','Chittagong','3501','Bangladesh','prospect','50'),

('CUST020','Mariam','Khan','mariam.khan20@gmail.com','01810000020',
 '20 Main Road','Sylhet','Sylhet','3102','Bangladesh','active','82'),

('CUST021','Jahid','Uddin','jahid.uddin21@gmail.com','01810000021',
 '21 Main Road','Dhaka','Dhaka','1207','Bangladesh','active','91'),

('CUST022','Rima','Begum','rima.begum22@gmail.com','01810000022',
 '22 Main Road','Khulna','Khulna','9002','Bangladesh','inactive','55'),

('CUST023','Nayeem','Hasan','nayeem.hasan23@gmail.com','01810000023',
 '23 Main Road','Rajshahi','Rajshahi','6002','Bangladesh','active','87'),

('CUST024','Farhana','Akter','farhana.akter24@gmail.com','01810000024',
 '24 Main Road','Dhaka','Dhaka','1215','Bangladesh','prospect','73'),

('CUST025','Sakib','Ahmed','sakib.ahmed25@gmail.com','01810000025',
 '25 Main Road','Chittagong','Chittagong','4002','Bangladesh','active','97'),

('CUST026','Jannat','Islam','jannat.islam26@gmail.com','01810000026',
 '26 Main Road','Rangpur','Rangpur','5402','Bangladesh','active','85'),

('CUST027','Rakib','Hossain','rakib.hossain27@gmail.com','01810000027',
 '27 Main Road','Barisal','Barisal','8202','Bangladesh','inactive','66'),

('CUST028','Maya','Sarker','maya.sarker28@gmail.com','01810000028',
 '28 Main Road','Dhaka','Dhaka','1209','Bangladesh','active','79'),

('CUST029','Rashed','Khan','rashed.khan29@gmail.com','01810000029',
 '29 Main Road','Sylhet','Sylhet','3103','Bangladesh','prospect','58'),

('CUST030','Liza','Rahman','liza.rahman30@gmail.com','01810000030',
 '30 Main Road','Comilla','Chittagong','3502','Bangladesh','active','92'),

('CUST031','Mamun','Ali','mamun.ali31@gmail.com','01810000031',
 '31 Main Road','Dhaka','Dhaka','1220','Bangladesh','active','89'),

('CUST032','Rupa','Khatun','rupa.khatun32@gmail.com','01810000032',
 '32 Main Road','Khulna','Khulna','9003','Bangladesh','inactive','62'),

('CUST033','Shawon','Mia','shawon.mia33@gmail.com','01810000033',
 '33 Main Road','Rajshahi','Rajshahi','6003','Bangladesh','active','84'),

('CUST034','Nila','Sultana','nila.sultana34@gmail.com','01810000034',
 '34 Main Road','Dhaka','Dhaka','1217','Bangladesh','prospect','71'),

('CUST035','Asif','Chowdhury','asif.chowdhury35@gmail.com','01810000035',
 '35 Main Road','Chittagong','Chittagong','4003','Bangladesh','active','96'),
 ('CUST036','Abida','Sultana','','01646454772',
'1003 Block C','Dhaka','Dhaka','1206','Bangladesh','active','99');

SELECT * FROM customers;

select first_name, email, phone from customers;
select distinct city,first_name from customers;
select * FROM customers ORDER BY postal_code DESC;
SELECT * from customers ORDER BY city, first_name;
SELECT * from customers ORDER BY city asc,first_name desc;
select * FROM customers where city='Dhaka' AND first_name LIKE 'R%';

SELECT * from customers
WHERE country='Bangladesh'
and city ='Dhaka'
and id>5;

SELECT * from customers
where country='Bangladesh'
and (first_name like 'A%' OR first_name like 'R%');

SELECT * FROM customers where not city='Dhaka';



UPDATE customers 
SET email = NULL 
WHERE customer_number = 'CUST036';

update customers

set first_name= 'Eftiare', last_name='Rimon'
WHERE customer_number='CUST035';

UPDATE customers
set city='Dhaka'
where city='Chittagong'

delete from customers
where customer_number="CUST028"


select * from customers
limit 3

select * from customers
where  city='Dhaka' or city ='Comilla'

select * from customers
order by city

create table person(
    ID int NOT NULL,
    LAST_NAME varchar(255) NOT NULL,
    FIRST_NAME varchar(255) NOT NULL,
    AGE int NOT NULL,
    primary key(ID)
);

