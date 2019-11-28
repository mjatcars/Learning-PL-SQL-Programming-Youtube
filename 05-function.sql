-- function to return average salary for a department
create or replace function avgSal(dept number)
return int
is
average_salary int;
begin
    SELECT
        avg(e.salary) into average_salary
    FROM
       employees e
    where e.department_id = dept;

return average_salary;
end;

/*

 select * from departments

 select avgSal(10) from dual;

*/
