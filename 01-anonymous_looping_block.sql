SET SERVEROUTPUT ON
DECLARE
    i NUMBER;
BEGIN
    i := 1;
    LOOP
        dbms_output.put_line(i);
        i := i + 1;
        EXIT WHEN i > 5;
    END LOOP;

END;