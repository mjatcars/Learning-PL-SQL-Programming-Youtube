-- insert trigger
CREATE OR REPLACE TRIGGER cancelInsert
before INSERT ON employees
FOR EACH ROW
begin
    if :new.salary >1000 then
     raise_application_error(-20001,'Employee salary out of range: ' || :new.salary);
    end if;
END;

-- select * from employees where rownum=1

/*

Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) 
values (10988,'Steven','King','SKIN944','515.123.4567',to_date('17-JUN-03','DD-MON-RR'),'AD_PRES',1999,null,null,90);

*/