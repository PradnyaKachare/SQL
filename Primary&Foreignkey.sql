/****** Script for SelectTopNRows command from SSMS  ******/


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


