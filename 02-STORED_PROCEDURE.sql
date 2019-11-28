SET SERVEROUTPUT ON
create or replace procedure topperJobs
as
    JOB_ID HR.jobs.job_id%type;
    --JOB_TITLE jobs.job_title%TYPE;
    
begin
    select JOB_ID INTO JOB_ID from jobs where job_id=(select max(job_id) from jobs);
    dbms_output.put_line('JOB_ID; '||JOB_ID);
END;


--  exec topperjobs;