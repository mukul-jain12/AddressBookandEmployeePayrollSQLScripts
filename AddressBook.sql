show databases;

#UC1 - Create DB
create database address_book_service;
use address_book_service;
select database();

#UC2 - Create table
create table Contacts(id int unsigned NOT NULL AUTO_INCREMENT, Name varchar(150) NOT NULL, Address varchar(150) NOT NULL, City varchar(150) NOT NULL, State varchar(150) NOT NULL, Zip int NOT NULL, PhoneNumber int NOT NULL, Email varchar(150), primary key	(id));
select * from Contacts;

#UC3 - Insert Contacts
insert into Contacts ( Name, Address, City, State, Zip, PhoneNumber, Email) VALUES ('Raju', 'Star Garage', 'Mumbai', 'Maharashtra', 230532, 8881212, 'raju@paisahipaisa.com'),('Ganshyam', 'Near Dadwadi', 'Jhalandar', 'Punjab', 230521, 2812512, 'ghanshyam@naukri.com'), ('Baburao Ganpatrao Apte', 'Star Garage', 'Mumbai', 'Maharashtra', 230532, 8881212, 'baburaoapte@stargarage.com');
select * from Contacts;

#UC4 - Update Contact using Name
UPDATE Contacts SET Address = 'Ring Road' WHERE Name in('Ganshyam');
select * from Contacts;

#UC5 - Delete Contact using Name
insert into Contacts ( Name, Address, City, State, Zip, PhoneNumber, Email) VALUES ('Anuradha', 'Laxmi Cheat Fund', 'Mumbai', 'Maharashtra', 230521, 4521542, 'anuradha@paisadouble.com');
select * from Contacts;
delete from Contacts where Name in('Anuradha');
select * from Contacts;

#UC6 - Retrieve all Contact using City or State name
select * from Contacts where City = 'Mumbai' or State = 'Punjab';

#UC7 - Count Contact in Address Book using City or State name
select count(city) from Contacts where City = 'Mumbai';

#UC8 - Sort Contacts by Person's name in given City or State
select * from Contacts where City = 'Mumbai' order by Name asc;