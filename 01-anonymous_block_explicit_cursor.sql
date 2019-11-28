-- print average saleray in a department
set serveroutput on
DECLARE
    CURSOR c1 IS
    SELECT
        department_name ,
        AVG(SALARY) AS average_salary
    FROM
        employees
        NATURAL JOIN departments
    GROUP BY
        department_name;

    rec1 c1%rowtype;
BEGIN
    FOR rec1 IN c1 LOOP
        dbms_output.put_line(rec1.department_name
                             || ' '
                             || rec1.average_salary);
    END LOOP;
END;
