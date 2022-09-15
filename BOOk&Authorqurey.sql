/****** Script for SelectTopNRows command from SSMS  ******/
create table Author
(aid int primary key identity(1,1),
aname varchar(30));

create table Book
(bookid int primary key,
bookname varchar(30),
authorid int,
constraint fkaid Foreign key(authorid) references Author(aid));

insert into author (aname) values('Kanetkar'),('Balguruswami'),('kathy seria');
select * from Author;

insert into Book values(103,'ASP.net',3);
select * from book;

create table Trainer(tid int primary key identity(1,1),tname varchar(30),exp int);

insert into Trainer (tname,exp) values('Deepa',15),('Kalyani',10),('Nisha',20);
select * from Trainer;

create table Batch(bid int primary key ,bname varchar(30),trainerid int,
constraint fktid Foreign key(trainerid) references Trainer(tid));
insert into Batch values(103,'sql',2);
select * from Batch;


create table stud(sid int primary key,sname varchar(20),batchid int,
constraint kfbid foreign key(batchid) references Batch(bid));
insert into stud values(4,'Prachi',50);
select * from stud;


