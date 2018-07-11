CREATE OR REPLACE PROCEDURE Get_EmpName(emp_ID IN HR.EMPLOYEES.EMPLOYEE_ID%TYPE) 
IS
    emp_name    hr.employees.first_name%TYPE;
        BEGIN
            SELECT first_name INTO emp_name FROM employees WHERE employee_id = emp_ID;
            dbms_output.put_line(emp_name);
                EXCEPTION
                    WHEN NO_DATA_FOUND THEN
                        dbms_output.put_line('NO DATA FOUND');
                    WHEN PROGRAM_ERROR THEN
                        dbms_output.put_line('PL/SQL PROGRAM ERROR');
                    WHEN STORAGE_ERROR THEN
                        dbms_output.put_line('STORAGE ERROR'); 
                    WHEN SYS_INVALID_ROWID THEN
                        dbms_output.put_line('INVALID ROW ID'); 
        END Get_EmpName;