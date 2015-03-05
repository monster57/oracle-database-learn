create or replace view production_employees as 
select id, name from employee where dept_id = 2001;

create or replace view sales_employees as 
select id, name from employee where dept_id = 2002;


ALTER TABLE manager_id ADD (salary number(10) );
ALTER TABLE EMPLOYEE ADD(MANAGER_ID NUMBER(10),FOREIGN KEY (MANAGER_ID) REFERENCES EMPLOYEE(ID));


create table emp_table as select * from employee where 1=2;

create table manager as select e.id , e.name , e.mgr_id from employee e;

	select e.id , e.name , m.name from employee e join employee m on(e.mgr_id  = m.id)

	select e.id , e.name , d.dept_name , m.name from employee e join employee m on(e.mgr_id = m.id) join department d on(e.dept_id = e.id);
	select e.id , e.name , d.dept_name , m.name from employee e , employee m , department d where e.mgr_id = m.id and e.dept_id = d.id
	select d.id from department d minus select distinct e.dept_id from employee e;
	select distinct e.dept_id from employee e;
	select unique(e.dept_id) from employee e;
	select max(e.salary) from employee e ; 
	select count(*) from employee where gender = 'M';
	select count(*) from employee where gender = 'F';
	select gender ,count(*) from employee group by gender;
	select pan_number , count(*) from employee group by pan_number;
	select d.dept_name , max(e.salary) from employee e , department d where e.dept_id = d.id group by d.dept_name;
	select e.name , e.salary from employee e group by e.name having salary = max(e.salary);


