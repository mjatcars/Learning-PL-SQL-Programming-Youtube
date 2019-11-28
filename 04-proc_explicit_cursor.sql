-- procedure with cursor to print employee salary
create or replace procedure emplSal
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
END;

/*

set serveroutput on
exec emplSal;

*/