use HCL;

create table Author
(aid int primary key identity(1,1),
aname varchar(30));

create table Book
(bookid int primary key,
bookname varchar(30),
authorid int,constraint fkaid Foreign key(authorid) references Author(aid));

insert into author (aname) values('Martin'),('Thoms');
select * from Author;

delete from author where aid =1;

insert into Book values(105,'spring',2);

select * from book;

alter table book drop constraint fkaid;

alter table Book
add  Foreign key(authorid) references Author(aid)
on delete set null on update cascade;
