create database projek;
use projek;

create table EMPLOYEE (
employee_id int(100) not null auto_increment,
primary key (employee_id),
employee_name varchar(255),
employee_status varchar(255));

create table CUSTOMER (
customer_id  int(100) not null auto_increment,
primary key(customer_id),
customer_phone int(100) not null,
table_num  int(50));

create table MENU (
menu_id int(100) not null auto_increment,
primary key (menu_id),
menu_info varchar(255),
price decimal(10,2) not null);

create table ORDERS (
order_id int(100) not null auto_increment,
primary key (order_id),
order_date date,
order_info varchar(255),
employee_id int(100),
foreign key (employee_id) references EMPLOYEE (employee_id));

Create Table ORDERS_DETAIL (
order_detail_id int(100) Not Null Auto_increment,
primary key (order_detail_id),
order_id int(100),
foreign key (order_id) references ORDERS (order_id),
menu_id int(100),
foreign key (menu_id) references MENU (menu_id),
customer_id int(100),
foreign key (customer_id) references CUSTOMER (customer_id),
quantity int(100) not null);


create table STOCK (
stock_id int(100) not null auto_increment,
primary key (stock_id),
stock_info varchar(255) not null,
current_stock varchar(255),
stock_date date not null,
employee_id int(100),
foreign key (employee_id) references EMPLOYEE (employee_id));



create table SALARY (
salary_id int(100) not null auto_increment,
primary key (salary_id),
salary_month varchar(40) not null,
employee_id int(100),
foreign key (employee_id) references EMPLOYEE (employee_id),
employee_account varchar(255),
ammount decimal(10,2) not null);

/* Inserting data into table EMPLOYEE */
insert into EMPLOYEE values ('6001','Kamarul Asra Bin Saiful Abdullah','Non-Student');
insert into EMPLOYEE values (null,'Nur Noraisyah Maszuni binti Sanorhizam','Student');
insert into EMPLOYEE values (null,'Hjh Ally binti Khilmi','Non-Student');
insert into EMPLOYEE values (null,'Muhammad Nasruddin bin Usman','Non-Student');
insert into EMPLOYEE values (null,'Noor Shayira binti Wan Sueib','Student');
insert into EMPLOYEE values (null,'Mohammed Faiq Yahya bin Che Azhari','Non-Student');
insert into EMPLOYEE values (null,'Ainn binti Wan Arief','Non-Student');
insert into EMPLOYEE values (null,'Nurul Darwisyah Syahmi binti Che Shahril','Student');
insert into EMPLOYEE values (null,'Wan Norfadli bin Wan Azrie','Non-Student');
insert into EMPLOYEE values (null,'Faathihah binti Rezal''Student','Non-Student');
insert into EMPLOYEE values (null,'Siti Nurbaya Binte Muhamad Firdaus','Student');
insert into EMPLOYEE values (null,'Irfan Syahid Bin Mohamad Anuar','Student');
insert into EMPLOYEE values (null,'Farhan Islan Bin Ridwan Zaidi','Student');
insert into EMPLOYEE values (null,'Sharul Nizam Bin Muhamad Islan','Non-Student');
insert into EMPLOYEE values (null,'Noh Rifqi Bin Nur Irffan','Student');
insert into EMPLOYEE values (null,'Eliza Sobia Binte Saiful Abdullah','Non-Student');
insert into EMPLOYEE values (null,'Hakimah Adha Binte Naqib Riduan','Non-Student');
insert into EMPLOYEE values (null,'Siti Aisha Binte Hairul Anuar','Student');
insert into EMPLOYEE values (null,'Hairul Anuar Bin Azmi Noh','Non-Student');
insert into EMPLOYEE values (null,'Afan Ali Bin Mohamad Anuar,','Non-Student');

/* Inserting data into table CUSTOMER */
insert into CUSTOMER values (3001,013-637629065,1);
insert into CUSTOMER values (null,019-254421982,2);
insert into CUSTOMER values (null,011-839288914,3);
insert into CUSTOMER values (null,012-438560669,2);
insert into CUSTOMER values (null,013-175222586,4);
insert into CUSTOMER values (null,012-533277433,4);
insert into CUSTOMER values (null,011-665753196,3);
insert into CUSTOMER values (null,013-164413942,3);
insert into CUSTOMER values (null,019-133303144,5);
insert into CUSTOMER values (null,017-708451446,2);
insert into CUSTOMER values (null,012-859865295,1);
insert into CUSTOMER values (null,013-329362947,2);
insert into CUSTOMER values (null,011-722231679,1);
insert into CUSTOMER values (null,017-693430820,2);
insert into CUSTOMER values (null,017-405663667,5);
insert into CUSTOMER values (null,019-706648691,4);
insert into CUSTOMER values (null,013-150392383,5);
insert into CUSTOMER values (null,012-202706983,5);
insert into CUSTOMER values (null,011-853507265,3);
insert into CUSTOMER values (null,013-955369308,1);

/* Inserting data into table MENU */
insert into MENU values (4001, "Ice-Cream", 1);
insert into MENU values (null, "Jelly Kelapa", 3);
insert into MENU values (null, "Dadih", 2);
insert into MENU values (null, "Creme Caramel", 3);
insert into MENU values (null, "Ice-Cream Cake", 6);
insert into MENU values (null, "Chocolate Cupcake", 3);
insert into MENU values (null, "Teh Tarik", 2);
insert into MENU values (null, "Milo", 3);
insert into MENU values (null, "Kopi", 2);
insert into MENU values (null, "Kopi-O", 2);
insert into MENU values (null, "Teh", 2);
insert into MENU values (null, "Teh-O", 2);
insert into MENU values (null, "Teh Limau", 2);
insert into MENU values (null, "Nescafe", 2);
insert into MENU values (null, "Watermelon Juice", 3);
insert into MENU values (null, "Orange Juice", 3);
insert into MENU values (null, "Mango Juice", 3);
insert into MENU values (null, "Apple Juice", 3);
insert into MENU values (null, "Pineapple Juice", 3);
insert into MENU values (null, "Float", 4);
insert into MENU values (null, "Mee Bandung", 5);
insert into MENU values (null, "Mee Rebus", 5);
insert into MENU values (null, "Laksa Johor", 5);
insert into MENU values (null, "Rojak Petis", 5);
insert into MENU values (null, "Mee Goreng", 3);
insert into MENU values (null, "Nasi Goreng Ayam", 6);
insert into MENU values (null, "Nasi Goreng Daging", 8);
insert into MENU values (null, "Nasi Lemak Kambing", 8);
insert into MENU values (null, "Nasi Lemak Ayam", 5);
insert into MENU values (null, "Nasi Lemak Daging", 8);

/* Inserting data into table ORDERS */
insert into ORDERS values ('1001', '2021-12-12', 'Nasi lebih', 6003);
insert into ORDERS values (null, '2021-12-12', 'Kurang manis', 6013);
insert into ORDERS values (null, '2021-12-12', 'Ayam kepak dan nasi lebih', 6012);
insert into ORDERS values (null, '2021-12-12', 'Kurang pedas', 6017);
insert into ORDERS values (null, '2021-12-13', 'Mee banyak dan kurang sayur', 6015);
insert into ORDERS values (null, '2021-12-13', 'Nasi lebih', 6010);
insert into ORDERS values (null, '2021-12-13', 'Kurang manis', 6016);
insert into ORDERS values (null, '2021-12-13', 'Tambah ais dan kurang manis', 6020);
insert into ORDERS values (null, '2021-12-14', 'Ayam kepak', 6012);
insert into ORDERS values (null, '2021-12-19', 'Nasi lebih', 6015);
insert into ORDERS values (null, '2021-12-19', 'Asing nasi dan ayam', 6016);
insert into ORDERS values (null, '2022-01-13', 'Nasi separuh', 6001);
insert into ORDERS values (null, '2022-01-24', 'Tambah ais dan kurang manis', 6018);
insert into ORDERS values (null, '2022-01-24', 'Kurang kuah', 6012);
insert into ORDERS values (null, '2022-01-24', 'Nasi lebih', 6005);
insert into ORDERS values (null, '2022-01-24', 'Nasi lebih', 6014);
insert into ORDERS values (null, '2022-01-28', 'Nasi lebih dan ayam potong kecil-kecil', 6019);
insert into ORDERS values (null, '2022-02-17', 'Kurang ais', 6002);
insert into ORDERS values (null, '2022-02-17', 'Mee banyak dan kurang kuah', 6008);
insert into ORDERS values (null, '2022-02-23', 'Nasi lebih', 6004);

/* Inserting data into table ORDERS_DETAIL */
insert ORDERS_DETAIL values ('2001',1004, 4001, 3001 ,2);
insert ORDERS_DETAIL values (null, 1013, 4001, 3002 ,1);
insert ORDERS_DETAIL values (null, 1003, 4014, 3004 ,1);
insert ORDERS_DETAIL values (null, 1012, 4019, 3004 ,1);
insert ORDERS_DETAIL values (null, 1017, 4011, 3008 ,2);
insert ORDERS_DETAIL values (null, 1015, 4017, 3007 ,1);
insert ORDERS_DETAIL values (null, 1010, 4008, 3003 ,2);
insert ORDERS_DETAIL values (null, 1016, 4019, 3009 ,1);
insert ORDERS_DETAIL values (null, 1020, 4016, 3010 ,1);
insert ORDERS_DETAIL values (null, 1019, 4001, 3006 ,1);
insert ORDERS_DETAIL values (null, 1013, 4003, 3007 ,2);
insert ORDERS_DETAIL values (null, 1011, 4004, 3008 ,1);
insert ORDERS_DETAIL values (null, 1001, 4008, 3003 ,1);
insert ORDERS_DETAIL values (null, 1002, 4002, 3002 ,2);
insert ORDERS_DETAIL values (null, 1020, 4002, 3005 ,1);
insert ORDERS_DETAIL values (null, 1005, 4007, 3004 ,2);
insert ORDERS_DETAIL values (null, 1009, 4017, 3002 ,2);
insert ORDERS_DETAIL values (null, 1016, 4001, 3001 ,3);
insert ORDERS_DETAIL values (null, 1014, 4010, 3002 ,1);
insert ORDERS_DETAIL values (null, 1004, 4016, 3002 ,1);

/* Inserting data into table STOCK */
insert into  STOCK values (5001, "Daging", "55 Kilogram", '2021-12-23', 6015);
insert into  STOCK values (null, "Aiskrim Strawberi", "111 Kilogram", '2021-12-23', 6006);
insert into  STOCK values (null, "Kelapa", "166 Kilogram", '2021-12-23', 6009);
insert into  STOCK values (null, "Oren", "189 Kilogram", '2022-02-23', 6013);
insert into  STOCK values (null, "Daun Kesum", "143 Kilogram", '2022-01-23', 6017);
insert into  STOCK values (null, "Manga", "180 Kilogram", '2022-01-23', 6019);
insert into  STOCK values (null, "Telur", "107 Kilogram", '2022-02-23', 6011);
insert into  STOCK values (null, "Nanas", "186 Kilogram", '2021-12-23', 6013);
insert into  STOCK values (null, "Kacang  Panjang", "81 Kilogram", '2021-12-23', 6012);
insert into  STOCK values (null, "Susu", "70 Kilogram", '2022-01-23', 6011);
insert into  STOCK values (null, "Aiskrim Coklat", "66 Kilogram", '2022-01-23', 6014);
insert into  STOCK values (null, "Salad", "116 Kilogram", '2022-01-23', 6009);
insert into  STOCK values (null, "Daging", "193 Kilogram", '2021-12-23', 6008);
insert into  STOCK values (null, "Aiskrim Vanilla", "185 Kilogram", '2021-12-23', 6004);
insert into  STOCK values (null, "Daging", "51 Kilogram", '2022-01-23', 6005);
insert into  STOCK values (null, "Cili Kering", "79 Kilogram", '2022-01-23', 6004);
insert into  STOCK values (null, "Timun", "168 Kilogram", '2022-02-23', 6002);
insert into  STOCK values (null, "Epal Merah", "173 Kilogram", '2022-02-23', 6001);
insert into  STOCK values (null, "Tepung", "108 Kilogram", '2022-02-23', 6020);
insert into  STOCK values (null, "Mee", "157 Kilogram", '2022-02-23', 6010);

/* Inserting data into table SALARY */
insert into SALARY values ('7001','December','6001','272033218 Maybank','1500.00');
insert into SALARY values (null,'December','6002','272067271 Maybank','1500.00');
insert into SALARY values (null,'December ','6003','448521570 Maybank','1200.00');
insert into SALARY values (null,' January ','6004','492904703 Maybank','1200.00');
insert into SALARY values (null,' December ','6005','515433286 Maybank','1200.00');
insert into SALARY values (null,' January ','6006','453910931 Maybank','1500.00');
insert into SALARY values (null,' January ','6007','448583078 Maybank','1800.00');
insert into SALARY values (null,' December ','6008','453269055 Maybank','1200.00');
insert into SALARY values (null,' February ','6009','471667735 Maybank','1500.00');
insert into SALARY values (null,' December ','6010','492973760 Maybank','1800.00');
insert into SALARY values (null,' Januaryr ','6011','557463683 Maybank','1800.00');
insert into SALARY values (null,' December ','6012','222176912 Maybank','2000.00');
insert into SALARY values (null,' December ','6013','272051924 Maybank','2000.00');
insert into SALARY values (null,' January ','6014','601184122 Maybank','1200.00');
insert into SALARY values (null,' December ','6015','410018848 Maybank','2500.00');
insert into SALARY values (null,' February ','6016','601169092 Maybank','1500.00');
insert into SALARY values (null,' December ','6017','471660715 Maybank','1500.00');
insert into SALARY values (null,' December ','6018','453915623 Maybank','1200.00');
insert into SALARY values (null,' February ','6019','550900875 Maybank','1200.00');
insert into SALARY values (null,' February ','6020','222124216 Maybank','2000.00');

Delete from CUSTOMER where customer_id = 3011;
Delete from CUSTOMER where customer_id = 3012;
Delete from CUSTOMER where customer_id = 3013;
Delete from CUSTOMER where customer_id = 3014;
Delete from CUSTOMER where customer_id = 3015;
Delete from CUSTOMER where customer_id = 3016;
Delete from CUSTOMER where customer_id = 3017;
Delete from CUSTOMER where customer_id = 3018;
Delete from CUSTOMER where customer_id = 3019;
Delete from CUSTOMER where customer_id = 3020;

Show tables;
select * from ORDERS;
select * from ORDERS_DETAIL;
select * from CUSTOMER;
select * from MENU;
select * from STOCK;
select * from EMPLOYEE;
select * from SALARY;

/*question 1
You need to display sales statistic in the year 2021 for each proposed product. Sort the output based on highest quantity first.
*/ 

Select ORDERS_DETAIL.Order_id, ORDERS.order_date ,MENU.menu_info, count(ORDERS_DETAIL.quantity)
From ORDERS_DETAIL
join MENU on ORDERS_DETAIL.menu_id = MENU.menu_id
join ORDERS on ORDERS_DETAIL.Order_id = ORDERS.order_id
Where (Order_date between '2021-12-01' and '2022-02-28' )
group by order_date Asc
having count(ORDERS_DETAIL.quantity) > 0;


/*question 2
You need to display sales statistic in the year 2021 and 2022 for each proposed product. The data need to be displayed are menu id, order detail id, menu price, total quantity sold, and amount obtained for each product. Sort the output based on highest amount obtained first. 
*/ 

Select MENU.menu_id, ORDERS_DETAIL.Order_detail_id, MENU.price, MENU.menu_info, ORDERS_DETAIL.quantity, sum(quantity * price) as Amount
From ORDERS_DETAIL
join MENU on ORDERS_DETAIL.menu_id = MENU.menu_id
join ORDERS on ORDERS_DETAIL.Order_id = ORDERS.order_id
Where (Order_date between '2021-12-01' and '2022-02-28' )
group by (quantity * price) Asc
having count(MENU.menu_info) >= 0;

/*question 3
Which order never been take by employee? Display the employee info. 
*/ 

select * from EMPLOYEE
WHERE employee_id not in(select employee_id from ORDERS);

/*question 4
Between October 2020 until December 2020, display the same customer who made minimum two orders. 
*/ 

select CUSTOMER.customer_id, MENU.menu_info, count(ORDERS_DETAIL.quantity)
from ORDERS_DETAIL
join CUSTOMER on ORDERS_DETAIL.customer_id = CUSTOMER.customer_id
join MENU on ORDERS_DETAIL.menu_id = MENU.menu_id
join ORDERS on ORDERS_DETAIL.order_id = ORDERS.order_id
Where (Order_date between '2021-12-01' and '2022-02-28' )
group by customer_id Asc
having count(ORDERS_DETAIL.quantity) >= 2;


/*question 5
Display details for order ID (can be any possible ID). Data need to be displayed are customer id, menu info,  price, quantity ordered, and amount.
*/ 

select CUSTOMER.customer_id, MENU.menu_info, MENU.price, ORDERS_DETAIL.quantity, sum(quantity * price) as Amount
from ORDERS_DETAIL
join CUSTOMER on ORDERS_DETAIL.customer_id = CUSTOMER.customer_id
join MENU on ORDERS_DETAIL.menu_id = MENU.menu_id
group by customer_id Asc