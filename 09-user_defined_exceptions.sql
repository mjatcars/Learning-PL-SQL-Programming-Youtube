DECLARE
   dept departments.department_id%type :=-23;
   name departments.department_name%type;
   ex_invalid_department_id  EXCEPTION;
BEGIN
   IF dept <= 0 THEN
      RAISE ex_invalid_department_id;
   ELSE
      SELECT  department_name into name
      FROM departments
      WHERE department_id = dept;
      DBMS_OUTPUT.PUT_LINE ('departments: '||  name);
   END IF;
EXCEPTION
   WHEN ex_invalid_department_id THEN
      dbms_output.put_line('departments number must be greater than zero!');
   WHEN no_data_found THEN
      dbms_output.put_line('No such departments!');
   WHEN others THEN
      dbms_output.put_line('Error!'); 
END;
