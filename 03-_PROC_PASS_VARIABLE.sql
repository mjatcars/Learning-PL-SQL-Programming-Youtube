create or replace procedure updateSalary(newSalary number)
as
var_rows number;
begin
update employees set SALARY=newSalary where SALARY =100000;
if SQL%FOUND then
   var_rows :=SQL%ROWCOUNT;
   dbms_output.put_line('The fees of '|| var_rows || ' students was updated');
else
   dbms_output.put_line('Some issue in updating');
end if;

commit;

end;

/*
set serveroutput on
exec updateSalary(20000)

select count(*) from employees

SELECT * FROM EMPLOYEES

*/