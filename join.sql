use hcl;

select * from book;
select * from author;

select * from book cross join author;
select bookname,aname from book inner join author on book.authorid=author.aid;
select bookname,aname from book left join author on book.authorid=author.aid;
select bookname,aname from book right join author on book.authorid=author.aid;
select bookname,aname from book full join author on book.authorid=author.aid;

use hr;
select * From employees;

select first_name,department_name from employees inner join departments on employees.
department_id=departments.department_id;

select first_name,department_name,job_title
from employees e inner join departments d 
on e.department_id=d.department_id
inner join jobs j on e.job_id=j.job_id;