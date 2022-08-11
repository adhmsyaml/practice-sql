Create Database Nasi_Kandar_CSBT;

Use Nasi_Kandar_CSBT;

/*Question 1 */

show tables;
select * from Staff;
select * from Orders;
select * from Order_details;
select * from Menu;
select * from Branch;
select * from Inventory;
select * from Salary;


Create Table Staff (
Staff_id int(100) Not Null Auto_increment,
Staff_Name varchar(255) Not Null, 
Staff_Nationality varchar(40) Not Null,
Staff_Expiry_Visa Date,
Primary Key (Staff_id));

insert into Staff values ('1001','Huzir a/l Gobind','Malaysian',null);
insert into Staff values (null,'Ajinkya Oak','Bangladesh','2023/12/03');
insert into Staff values (null,'Nur Noraisyah Maszuni binti Sanorhizam','Malaysian',null);
insert into Staff values (null,'M. Theiviya','Malaysian',null);
insert into Staff values (null,'Leow Von Tong','Malaysian',null);
insert into Staff values (null,'Hjh Ally binti Khilmi','Malaysian',null);
insert into Staff values (null,'Raju Nayar','Bangladesh','2023/12/05');
insert into Staff values (null,'Chiam Yet Hah','Malaysian',null);
insert into Staff values (null,'Muhammad Nasruddin bin Usman','Malaysian',null);
insert into Staff values (null,'Xia Zhet Leow','Malaysian',null);
insert into Staff values (null,'Noor Shayira binti Wan Sueib','Malaysian',null);
insert into Staff values (null,'Hanuman Ghose','Bangladesh','2022/09/10');
insert into Staff values (null,'M. Panchanathan','Malaysian',null);
insert into Staff values (null,'Mohammed Faiq Yahya bin Che Azhari','Malaysian',null);
insert into Staff values (null,'Ainn binti Wan Arief','Malaysian',null);
insert into Staff values (null,'Zahir Chahal','Bangladesh','2023/10/10');
insert into Staff values (null,'Nurul Darwisyah Syahmi binti Che Shahril','Malaysian',null);
insert into Staff values (null,'Wan Norfadli bin Wan Azrie','Malaysian',null);
insert into Staff values (null,'Dhanush Dewan','Bangladesh','2022/05/21');
insert into Staff values (null,'Faathihah binti Rezal','Malaysian',null);
insert into Staff values (null,'Siti Nurbaya Binte Muhamad Firdaus','Malaysian',null);
insert into Staff values (null,'Prabhat Kara ','Bangladesh','2022/04/10');
insert into Staff values (null,'Irfan Syahid Bin Mohamad Anuar','Malaysian',null);
insert into Staff values (null,'Farhan Islan Bin Ridwan Zaidi','Malaysian',null);
insert into Staff values (null,'Sharul Nizam Bin Muhamad Islan','Malaysian',null);
insert into Staff values (null,'Noh Rifqi Bin Nur Irffan','Malaysian',null);
insert into Staff values (null,'Eliza Sobia Binte Saiful Abdullah','Malaysian',null);
insert into Staff values (null,'Hakimah Adha Binte Naqib Riduan','Malaysian',null);
insert into Staff values (null,'Tushar Dhaliwalr','Bangladesh','2022/05/22');
insert into Staff values (null,'Siti Aisha Binte Hairul Anuar','Malaysian',null);
insert into Staff values (null,'Hairul Anuar Bin Azmi Noh','Malaysian',null);
insert into Staff values (null,'Afan Ali Bin Mohamad Anuar','Malaysian',null);
insert into Staff values (null,'Kamarul Asra Bin Saiful Abdullah','Malaysian',null);
insert into Staff values (null,'Izhar Izuddin Bin Abdul Hazim','Malaysian',null);
insert into Staff values (null,'Kamarul Asra Bin Muhamad Saifullah','Malaysian',null);
insert into Staff values (null,'Nur Irffan Bin Muhamad Ali','Malaysian',null);
insert into Staff values (null,'Farhan Islan Bin Hairul Azmi','Malaysian',null);
insert into Staff values (null,'Daniel Irfan Bin Noh Hairul','Malaysian',null);
insert into Staff values (null,'Baber Persaud','Bangladesh','2023/07/08');
insert into Staff values (null,'Kamarul Asra Bin Naqib Riduan','Malaysian',null);
insert into Staff values (null,'Nur Irffan Bin Mohamad Syahid','Malaysian',null);
insert into Staff values (null,'Hairul Azmi Bin Khairul Azmi','Malaysian',null);
insert into Staff values (null,'Yusoff Radin Bin Muhamad Saifullah','Malaysian',null);
insert into Staff values (null,'Noh Yacob Bin Naqib Riduan','Malaysian',null);
insert into Staff values (null,'Umar Saifullah Bin Ridwan Zaidi','Malaysian',null);
insert into Staff values (null,'Arif Raihan Bin Muhamad Saifullah','Malaysian',null);
insert into Staff values (null,'Farhan Islan Bin Mohamad Anuar','Malaysian',null);
insert into Staff values (null,'Danyial Lizam Bin Muhamad Islan','Malaysian',null);
insert into Staff values (null,'Abdul Khalim Bin Noh Yacob','Malaysian',null);
insert into Staff values (null,'Abhinav Borah','Bangladesh','2022/07/08');


Create Table Orders (
Order_id int(100) Not Null Auto_increment,
Order_date Date,
Order_info varchar(255),
Staff_id int(100),
Primary key(Order_id),
foreign key (Staff_id) references Staff(Staff_id));

insert into Orders values ('2001', '2021-10-13', 'Nasi lebih', 1003);
insert into Orders values (null, '2021-11-23', 'Kurang manis', 1023);
insert into Orders values (null, '2021-09-15', 'Ayam kepak dan nasi lebih', 1012);
insert into Orders values (null, '2021-05-17', 'Kurang pedas', 1017);
insert into Orders values (null, '2021-10-16', 'Mee banyak dan kurang sayur', 1045);
insert into Orders values (null, '2021-05-09', 'Nasi lebih', 1030);
insert into Orders values (null, '2021-06-08', 'Kurang manis', 1016);
insert into Orders values (null, '2021-05-13', 'Tambah ais dan kurang manis', 1040);
insert into Orders values (null, '2021-08-20', 'Ayam kepak', 1012);
insert into Orders values (null, '2021-12-19', 'Nasi lebih', 1015);
insert into Orders values (null, '2021-12-19', 'Asing nasi dan ayam', 1015);
insert into Orders values (null, '2021-06-13', 'Nasi separuh', 1001);
insert into Orders values (null, '2021-05-24', 'Tambah ais dan kurang manis', 1048);
insert into Orders values (null, '2021-05-24', 'Kurang kuah', 1025);
insert into Orders values (null, '2021-09-03', 'Nasi lebih', 1005);
insert into Orders values (null, '2021-05-24', 'Nasi lebih', 1034);
insert into Orders values (null, '2021-05-28', 'Nasi lebih dan ayam potong kecil-kecil', 1029);
insert into Orders values (null, '2021-11-17', 'Kurang ais', 1022);
insert into Orders values (null, '2021-11-17', 'Mee banyak dan kurang kuah', 1008);
insert into Orders values (null, '2021-08-23', 'Nasi lebih', 1004);
insert into Orders values (null, '2021-06-24', 'Nasi lebih', 1046);
insert into Orders values (null, '2021-11-17', 'Kurang ais', 1013);
insert into Orders values (null, '2021-05-12', 'Ayam kepak', 1018);
insert into Orders values (null, '2021-12-19','Nasi lebih', 1031);
insert into Orders values (null, '2021-07-17', 'Kurang pedas dan ayam paha', 1007);
insert into Orders values (null, '2021-07-17', 'Nasi separuh', 1026);
insert into Orders values (null, '2021-10-08', 'Nasi lebih', 1007);
insert into Orders values (null, '2021-11-12', 'Nasi lebih', 1038);
insert into Orders values (null, '2021-11-12', 'Kurang sayur',1014);
insert into Orders values (null, '2021-05-05', 'Nasi lebih', 1020);
insert into Orders values (null, '2021-05-25', 'Kurang sayur', 1009);
insert into Orders values (null, '2021-11-17', 'Nasi lebih', 1010);
insert into Orders values (null, '2021-05-01', 'Asing nasi dan ayam', 1038);
insert into Orders values (null, '2021-05-01', 'Nasi lebih', 1002);
insert into Orders values (null, '2021-05-10', 'Tauhu separuh bakar', 1006);
insert into Orders values (null, '2021-09-20', 'Nasi lebih', 1021);
insert into Orders values (null, '2021-10-27', 'Nasi lebih', 1011);
insert into Orders values (null, '2021-05-22', 'Tambah ais', 1027);
insert into Orders values (null, '2021-07-30', 'Nasi separuh', 1024);
insert into Orders values (null, '2021-07-31', 'Ayam paha', 1028);
insert into Orders values (null, '2021-08-29', 'Nasi lebih', 1033);
insert into Orders values (null, '2021-05-30', 'Ayam kepak', 1041);
insert into Orders values (null, '2021-05-15', 'Limau lebih', 1035);
insert into Orders values (null, '2021-12-12', 'Nasi lebih', 1032);
insert into Orders values (null, '2021-12-12', 'Mee banyak dan kurang kuah', 1047);
insert into Orders values (null, '2021-05-31', 'Nasi lebih', 1036);
insert into Orders values (null, '2021-11-11', 'Nasi lebih', 1042);
insert into Orders values (null, '2021-05-02', 'Nasi lebih', 1037);
insert into Orders values (null, '2021-09-25', 'Nasi separuh dan ayam kepak', 1044);
insert into Orders values (null, '2021-09-30', 'Sambal lebih dan nasi lebih', 1043);


Create Table Order_details (
Order_detail_id int(100) Not Null Auto_increment,
Order_id int (100),
menu_id int (100),
Quantity int (50),
primary key (Order_detail_id),
foreign key (Order_id) references Orders(Order_id),
foreign key (menu_id) references Menu(menu_id));

insert Order_details values ('3001',2004, 4001, 2);
insert Order_details values (null, 2003, 4001, 1);
insert Order_details values (null, 2023, 4032, 1);
insert Order_details values (null, 2012, 4004, 1);
insert Order_details values (null, 2017, 4011, 2);
insert Order_details values (null, 2045, 4017, 1);
insert Order_details values (null, 2030, 4008, 2);
insert Order_details values (null, 2016, 4039, 1);
insert Order_details values (null, 2040, 4046, 1);
insert Order_details values (null, 2039, 4001, 1);
insert Order_details values (null, 2015, 4003, 2);
insert Order_details values (null, 2015, 4004, 1);
insert Order_details values (null, 2001, 4008, 1);
insert Order_details values (null, 2048, 4002, 2);
insert Order_details values (null, 2025, 4002, 1);
insert Order_details values (null, 2005, 4007, 2);
insert Order_details values (null, 2034, 4017, 2);
insert Order_details values (null, 2029, 4001, 3);
insert Order_details values (null, 2022, 4050, 1);
insert Order_details values (null, 2008, 4016, 1);
insert Order_details values (null, 2004, 4004, 2);
insert Order_details values (null, 2046, 4002, 1);
insert Order_details values (null, 2013, 4033, 1);
insert Order_details values (null, 2018, 4012, 2);
insert Order_details values (null, 2031, 4003, 3);
insert Order_details values (null, 2007, 4011, 1);
insert Order_details values (null, 2026, 4007, 1);
insert Order_details values (null, 2007, 4003, 3);
insert Order_details values (null, 2038, 4003, 2);
insert Order_details values (null, 2014, 4002, 4);
insert Order_details values (null, 2020, 4005, 2);
insert Order_details values (null, 2009, 4018, 1);
insert Order_details values (null, 2010, 4001, 2);
insert Order_details values (null, 2038, 4004, 1);
insert Order_details values (null, 2002, 4001, 2);
insert Order_details values (null, 2006, 4020, 3);
insert Order_details values (null, 2021, 4001, 1);
insert Order_details values (null, 2011, 4003, 2);
insert Order_details values (null, 2027, 4043, 2);
insert Order_details values (null, 2024, 4002, 1);
insert Order_details values (null, 2028, 4004, 3);
insert Order_details values (null, 2033, 4001, 2);
insert Order_details values (null, 2041, 4007, 1);
insert Order_details values (null, 2035, 4038, 2);
insert Order_details values (null, 2032, 4006, 1);
insert Order_details values (null, 2047, 4016, 2);
insert Order_details values (null, 2036, 4003, 1);
insert Order_details values (null, 2042, 4002, 3);
insert Order_details values (null, 2037, 4007, 2);
insert Order_details values (null, 2044, 4001, 1);


Create Table Menu (
menu_id int(100) Not Null Auto_increment,
primary key (menu_id),
Food_info varchar(50),
Food_price decimal(10,2) Not Null);

insert into Menu values (4001, "Nasi Kandar Ayam", 10);
insert into Menu values (null, "Nasi Kandar Daging", 10);
insert into Menu values (null, "Nasi Kandar Kambing", 12);
insert into Menu values (null, "Nasi Beriani Ayam", 14);
insert into Menu values (null, "Nasi Beriani Daging", 14);
insert into Menu values (null, "Nasi Beriani Kambing", 16);
insert into Menu values (null, "Beriani Gam Ayam", 17);
insert into Menu values (null, "Beriani Gam Kambing", 18);
insert into Menu values (null, "Nasi Beriani Kosong", 5);
insert into Menu values (null, "Ayam Masak Beriani", 9);
insert into Menu values (null, "Ayam Masak Merah", 9);
insert into Menu values (null, "Ayam Goreng Berempah", 9);
insert into Menu values (null, "Daging Masak Beriani", 9);
insert into Menu values (null, "Kambing Masak Beriani", 11);
insert into Menu values (null, "Kambing Goreng Rosemary", 20);
insert into Menu values (null, "Mee Bandung", 9);
insert into Menu values (null, "Mee Rebus", 7);
insert into Menu values (null, "Laksa Johor", 9);
insert into Menu values (null, "Rojak Petis", 5);
insert into Menu values (null, "Tauhu Bakar", 5);
insert into Menu values (null, "Waldorf Salad", 5);
insert into Menu values (null, "Buah Potong", 4);
insert into Menu values (null, "Kuih Puteri Dua Sebilik", 1);
insert into Menu values (null, "Kuih Melayu", 1);
insert into Menu values (null, "Tapai", 2);
insert into Menu values (null, "Ice-Cream", 3);
insert into Menu values (null, "Jelly Kelapa", 3);
insert into Menu values (null, "Dadih", 2);
insert into Menu values (null, "Creme Caramel", 3);
insert into Menu values (null, "Ice-Cream Cake", 6);
insert into Menu values (null, "Chocolate Cupcake", 3);
insert into Menu values (null, "Teh Tarik", 2);
insert into Menu values (null, "Milo", 3);
insert into Menu values (null, "Kopi", 2);
insert into Menu values (null, "Kopi-O", 2);
insert into Menu values (null, "Teh", 2);
insert into Menu values (null, "Teh-O", 2);
insert into Menu values (null, "Teh Limau", 2);
insert into Menu values (null, "Nescafe", 2);
insert into Menu values (null, "Air Mineral", 2);
insert into Menu values (null, "Roselle Juice", 3);
insert into Menu values (null, "Asam Boi", 4);
insert into Menu values (null, "Coke", 3);
insert into Menu values (null, "Float", 4);
insert into Menu values (null, "Neslo", 3);
insert into Menu values (null, "Watermelon Juice", 7);
insert into Menu values (null, "Orange Juice", 7);
insert into Menu values (null, "Mango Juice", 7);
insert into Menu values (null, "Apple Juice", 7);
insert into Menu values (null, "Pineapple Juice", 7);


Create Table Branch (
Branch_id int(100) Not Null Auto_Increment,
primary key (Branch_id),
Branch_Location varchar(50) Not Null,
Staff_id int(100),
foreign key (Staff_id) references Staff(Staff_id));

insert into Branch values ('5001','Kuantan, Pahang', 1001 );
insert into Branch values (null, 'Kuala Terengganu, Terengganu', 1002);
insert into Branch values (null, 'Bukit Petaling, Perlis', 1003);
insert into Branch values (null, 'Bandar Sungai Buaya, Johor', 1004);
insert into Branch values (null, 'Batu Ferringhi, Penang', 1005);
insert into Branch values (null, 'Kangar, Perlis', 1006);
insert into Branch values (null, 'Kota Bharu, Kelantan', 1007);
insert into Branch values (null, 'Johor Bharu, Johor', 1008);
insert into Branch values (null, 'Ipoh, Perak', 1009);
insert into Branch values (null, 'Alor Setar, Kedah', 1010);
insert into Branch values (null, 'Wangsa Maju, Kuala Lumpur', 1011);
insert into Branch values (null, 'Seremban, Negeri Sembilan', 1012);
insert into Branch values (null, 'George Town, Pulau Pinang', 1013);
insert into Branch values (null, 'Merlimau, Melaka', 1014);
insert into Branch values (null, 'Shah Alam, Selangor', 1015);
insert into Branch values (null, 'Kuching, Sarawak', 1016);
insert into Branch values (null, 'Kota Kinabalu, Sabah', 1017);
insert into Branch values (null, 'Gombak, Kuala Lumpur', 1018);
insert into Branch values (null, 'Raub, Pahang', 1019);
insert into Branch values (null, 'Kajang, Selangor', 1020);
insert into Branch values (null, 'Kuantan, Pahang', 1021);
insert into Branch values (null, 'Kuala Terengganu, Terengganu', 1022);
insert into Branch values (null, 'Bukit Petaling, Perlis', 1023);
insert into Branch values (null, 'Bandar Sungai Buaya, Johor', 1024);
insert into Branch values (null, 'Batu Ferringhi, Penang', 1025);
insert into Branch values (null, 'Kangar, Perlis', 1026);
insert into Branch values (null, 'Kota Bharu, Kelantan', 1027);
insert into Branch values (null, 'Johor Bharu, Johor', 1028);
insert into Branch values (null, 'Ipoh, Perak', 1029);
insert into Branch values (null, 'Alor Setar, Kedah', 1030);
insert into Branch values (null, 'Wangsa Maju, Kuala Lumpur', 1031);
insert into Branch values (null, 'Seremban, Negeri Sembilan', 1032);
insert into Branch values (null, 'George Town, Pulau Pinang', 1033);
insert into Branch values (null, 'Merlimau, Melaka', 1034);
insert into Branch values (null, 'Shah Alam, Selangor', 1035);
insert into Branch values (null, 'Kuching, Sarawak', 1036);
insert into Branch values (null, 'Gombak, Kuala Lumpur', 1037);
insert into Branch values (null, 'Raub, Pahang', 1038);
insert into Branch values (null, 'Gombak, Kuala Lumpur', 1039);
insert into Branch values (null, 'Raub, Pahang', 1040);
insert into Branch values (null, 'Kajang, Selangor', 1041);
insert into Branch values (null, 'Kota Kinabalu, Sabah', 1036);
insert into Branch values (null, 'Merlimau, Melaka ', 1037);
insert into Branch values (null, 'George Town, Pulau Pinang ', 1038);
insert into Branch values (null, 'Seremban, Negeri Sembilan', 1039);
insert into Branch values (null, 'Wangsa Maju, Kuala Lumpur', 1040);
insert into Branch values (null, 'Alor Setar, Kedah ', 1041);
insert into Branch values (null, 'Ipoh, Perak ', 1042);
insert into Branch values (null, 'Johor Bharu, Johor ', 1043);
insert into Branch values (null, 'Kota Bharu, Kelantan ', 1044);
insert into Branch values (null, 'Kangar, Perlis', 1045);
insert into Branch values (null, 'Bandar Sungai Buaya, Johor ', 1046);
insert into Branch values (null, 'Batu Ferringhi,  Penang ', 1047);
insert into Branch values (null, 'Bukit Petaling, Perlis ', 1048);
insert into Branch values (null, 'Bandar Sungai Buaya, Johor ', 1049);
insert into Branch values (null, 'Bukit Petaling, Perlis ', 1050);


Create Table Inventory (
Inventory_id int(100) Not Null Auto_Increment,
primary key (Inventory_id),
Inventory_Info varchar(255) Not Null,
Current_Stock varchar(255),
Staff_id int(100),
foreign key (Staff_id) references Staff(Staff_id));

insert into Inventory values (6001, "Daging", "55 Kilogram", 1001);
insert into Inventory values (null, "Rempah Beriani", "104 Kilogram", 1002);
insert into Inventory values (null, "Lengkuas", "59 Kilogram", 1003);
insert into Inventory values (null, "Daging", "92 Kilogram", 1004);
insert into Inventory values (null, "Tomato", "89 Kilogram", 1005);
insert into Inventory values (null, "Ayam", "120 Kilogram", 1006);
insert into Inventory values (null, "Limau", "141 Kilogram", 1007);
insert into Inventory values (null, "Garam", "129 Kilogram", 1008);
insert into Inventory values (null, "Rempah Kari", "87 Kilogram", 1009);
insert into Inventory values (null, "Kambing", "142 Kilogram", 1010);
insert into Inventory values (null, "Rempah Kari", "63 Kilogram", 1011);
insert into Inventory values (null, "Spaghetti", "190 Kilogram", 1012);
insert into Inventory values (null, "Sardin", "102 Kilogram", 1013);
insert into Inventory values (null, "Udang", "94 Kilogram", 1014);
insert into Inventory values (null, "Beras", "145 Kilogram", 1015);
insert into Inventory values (null, "Epal Hijau", "114 Kilogram", 1016);
insert into Inventory values (null, "Taugeh", "105 Kilogram", 1017);
insert into Inventory values (null, "Butter", "174 Kilogram", 1018);
insert into Inventory values (null, "Ayam", "133 Kilogram", 1019);
insert into Inventory values (null, "Bawang Putih", "71 Kilogram", 1020);
insert into Inventory values (null, "Cili Api", "76 Kilogram", 1021);
insert into Inventory values (null, "Rempah Kari", "137 Kilogram", 1022);
insert into Inventory values (null, "Minyak Masak", "52 Kilogram", 1023);
insert into Inventory values (null, "Rempah Kari", "183 Kilogram", 1024);
insert into Inventory values (null, "Tembikai", "152 Kilogram", 1025);
insert into Inventory values (null, "Tauhu Kering", "110 Kilogram", 1026);
insert into Inventory values (null, "Gula", "123 Kilogram", 1027);
insert into Inventory values (null, "Bawang Merah", "170 Kilogram", 1028);
insert into Inventory values (null, "Rempah Beriani", "74 Kilogram", 1029);
insert into Inventory values (null, "Rempah Kari", "194 Kilogram", 1030);
insert into Inventory values (null, "Mee", "157 Kilogram", 1031);
insert into Inventory values (null, "Rempah Beriani", "171 Kilogram", 1032);
insert into Inventory values (null, "Aiskrim Strawberi", "111 Kilogram", 1033);
insert into Inventory values (null, "Kelapa", "166 Kilogram", 1034);
insert into Inventory values (null, "Oren", "189 Kilogram", 1035);
insert into Inventory values (null, "Daun Kesum", "143 Kilogram", 1036);
insert into Inventory values (null, "Manga", "180 Kilogram", 1037);
insert into Inventory values (null, "Telur", "107 Kilogram", 1038);
insert into Inventory values (null, "Nanas", "186 Kilogram", 1039);
insert into Inventory values (null, "Kacang  Panjang", "81 Kilogram", 1040);
insert into Inventory values (null, "Susu", "70 Kilogram", 1041);
insert into Inventory values (null, "Aiskrim Coklat", "66 Kilogram", 1042);
insert into Inventory values (null, "Salad", "116 Kilogram", 1043);
insert into Inventory values (null, "Daging", "193 Kilogram", 1044);
insert into Inventory values (null, "Aiskrim Vanilla", "185 Kilogram", 1045);
insert into Inventory values (null, "Daging", "51 Kilogram", 1046);
insert into Inventory values (null, "Cili Kering", "79 Kilogram", 1047);
insert into Inventory values (null, "Timun", "168 Kilogram", 1048);
insert into Inventory values (null, "Epal Merah", "173 Kilogram", 1049);
insert into Inventory values (null, "Tepung", "108 Kilogram", 1050);


Create Table Salary (
Salary_id int(100) Not Null Auto_Increment,
primary key (Salary_id),
Salary_Month varchar(40) Not Null,
Staff_id int(100),
foreign key (Staff_id) references Staff(Staff_id),
Staff_bank_acc varchar(50) Not Null,
Amount decimal(10,2) Not Null);

insert into Salary values ('7001','May','1001','272033218 Maybank','1800.00');
insert into Salary values (null,'May',null,'272067271 Maybank','1500.00');
insert into Salary values (null,'June',null,'448521570 Maybank','1800.00');
insert into Salary values (null,'May',null,'492904703 Maybank','2000.00');
insert into Salary values (null,'June',null,'515433286 Maybank','3000.00');
insert into Salary values (null,'July',null,'453910931 Maybank','3000.00');
insert into Salary values (null,'May',null,'448583078 Maybank','1500.00');
insert into Salary values (null,'June',null,'453269055 Maybank','2000.00');
insert into Salary values (null,'May',null,'471667735 Maybank','1800.00');
insert into Salary values (null,'June',null,'492973760 Maybank','2000.00');
insert into Salary values (null,'July',null,'557463683 Maybank','3000.00');
insert into Salary values (null,'May',null,'222176912 Maybank','1500.00');
insert into Salary values (null,'May',null,'272051924 Maybank','1800.00');
insert into Salary values (null,'June',null,'601184122 Maybank','2000.00');
insert into Salary values (null,'May',null,'410018848 Maybank','1800.00');
insert into Salary values (null,'July',null,'601169092 Maybank','1800.00');
insert into Salary values (null,'May',null,'471660715 Maybank','1500.00');
insert into Salary values (null,'June',null,'453915623 Maybank','1800.00');
insert into Salary values (null,'May',null,'550900875 Maybank','1500.00');
insert into Salary values (null,'July',null,'222124216 Maybank','2000.00');
insert into Salary values (null,'June',null,'343884190 Maybank','2000.00');
insert into Salary values (null,'June',null,'492915106 Maybank','1500.00');
insert into Salary values (null,'May',null,'471688432 Maybank','3000.00');
insert into Salary values (null,'June',null,'421885402 Maybank','2000.00');
insert into Salary values (null,'June',null,'247308673 Maybank','1800.00');
insert into Salary values (null,'July',null,'534000724 Maybank','2000.00');
insert into Salary values (null,'May',null,'543240529 Maybank','3000.00');
insert into Salary values (null,'May',null,'453935584 Maybank','3000.00');
insert into Salary values (null,'June',null,'265112952 Maybank','1500.00');
insert into Salary values (null,'June',null,'492934872 Maybank','1800.00');
insert into Salary values (null,'May',null,'518314764 Maybank','2000.00');
insert into Salary values (null,'July',null,'263547948 Maybank','2000.00');
insert into Salary values (null,'July',null,'491644078 Maybank','1800.00');
insert into Salary values (null,'July',null,'539694000 Maybank','1800.00');
insert into Salary values (null,'May',null,'492989953 Maybank','3000.00');
insert into Salary values (null,'June',null,'455691946 Maybank','1800.00');
insert into Salary values (null,'July',null,'492968727 Maybank','1800.00');
insert into Salary values (null,'July',null,'264923480 Maybank','1800.00');
insert into Salary values (null,'May',null,'601112030 Maybank','1500.00');
insert into Salary values (null,'July',null,'515853003 Maybank','1800.00');
insert into Salary values (null,'June',null,'601121930 Maybank','2000.00');
insert into Salary values (null,'July',null,'230947169 Maybank','2000.00');
insert into Salary values (null,'July',null,'455617851 Maybank','1800.00');
insert into Salary values (null,'June',null,'234848030 Maybank','1800.00');
insert into Salary values (null,'May',null,'601164554 Maybank','1800.00');
insert into Salary values (null,'July',null,'260583562 Maybank','1800.00');
insert into Salary values (null,'June',null,'349862175 Maybank','1800.00');
insert into Salary values (null,'July',null,'240646979 Maybank','1800.00');
insert into Salary values (null,'June',null,'523947098 Maybank','1800.00');
insert into Salary values (null,'July',null,'222118509 Maybank','1500.00');


/*question 2 DONE*/
Select * From Staff, Orders, Menu, Branch
Where (Order_date between '2021-05-01' and '2021-07-31' );


/*question 3 */
Select * From  Menu
Order by Food_price Desc limit 3;


/*question 4*/
Select Branch.Branch_Location, Staff.Staff_id, m.Food_info, count(m.menu_id) 
FROM menu as m
JOIN order_details
ON m.MENU_ID = order_details.menu_id
join orders
on order_details.order_id = orders.Order_id
join branch
on orders.staff_id = branch.staff_id
join  Staff 
on Branch.Staff_id = Staff.Staff_id
group by m.menu_id
having count(m.menu_id) > 1;

/*question 5 */
SELECT * from Staff
WHERE Staff_id NOT IN(SELECT Staff_id FROM Orders);


/*question 6 */
Select distinct Staff_Nationality, Count(Staff_Nationality)  
from Staff
group by Staff_Nationality
having count(Staff_Nationality) > 1;

/*question 7 */
SELECT menu.menu_id, food_info, food_price, Quantity, Branch_id, Branch_Location, sum(Quantity * Food_price)
FROM menu
JOIN order_details
ON MENU.MENU_ID = order_details.menu_id
join orders
on order_details.order_id = orders.Order_id
join branch
on orders.staff_id = branch.staff_id
group by Branch_Location;


/*question 8 */
Select * From Inventory
Order by Current_Stock Asc limit 3;


/*question 9 */
Select Order_details.Order_id, Menu.Food_info, count(Menu.Food_info)
From Order_details
join Menu on Order_details.menu_id = menu.menu_id
join Orders on Order_details.Order_id = Orders.Order_id
Where (Order_date between '2021-05-01' and '2021-07-31' )
group by Order_date Asc
having count(Menu.Food_info) > 1;


/*question 10 */
Select Branch_location, Count(Branch_location)  
from Branch
group by Branch_location
having count(Branch_location) > 1;
