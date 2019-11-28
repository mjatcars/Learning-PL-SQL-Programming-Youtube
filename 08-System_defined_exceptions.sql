DECLARE 
  dept departments.department_id%type:=0; 
  name departments.department_name%type;
BEGIN 
  SELECT department_name into name FROM departments where department_id=dept;
  DBMS_OUTPUT.PUT_LINE ('Name: '|| name); 
  EXCEPTION 
    WHEN no_data_found THEN
      dbms_output.put_line('No such department!');
    WHEN others THEN
      dbms_output.put_line('Error!');
END;
