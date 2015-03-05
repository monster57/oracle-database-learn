select sysdate from dual;
drop user sms cascade;



 select e.name , d.dept_name from employee e left outer join department d on(e.dept_id = d.id);