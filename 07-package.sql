**************** Package Specification *************************
CREATE or replace PACKAGE empl 
AS
PROCEDURE emplSal;
procedure updateSalary(newSalary number);
END empl;


**************** Package Body *************************
CREATE OR REPLACE PACKAGE BODY empl 
AS 
procedure emplSal
is
    CURSOR c1 IS
    SELECT
        department_name ,
        employee_id,
        salary
    FROM
        employees
        NATURAL JOIN departments;

    rec1 c1%rowtype;
BEGIN
    FOR rec1 IN c1 LOOP
        dbms_output.put_line(rec1.department_name
                             || ' '
                             || rec1. employee_id
                             || ' '
                             || rec1.salary);
    END LOOP;
END emplSal;

procedure updateSalary(newSalary number)
as
var_rows number;
begin
update employees set SALARY=newSalary where SALARY =1111111111;
if SQL%FOUND then
   var_rows :=SQL%ROWCOUNT;
   dbms_output.put_line('The fees of '|| var_rows || ' students was updated');
else
   dbms_output.put_line('Some issue in updating');
end if;
end updateSalary;

end empl;


/* -------------------------------

set serveroutput on
exec empl.emplSal;

set serveroutput on
exec empl.updateSalary(1000)
select * from employees

-------------------------------- */
