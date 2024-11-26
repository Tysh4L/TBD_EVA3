DELIMITER $$

CREATE PROCEDURE dooms_day()
BEGIN
  DECLARE emp_id INT;
  DECLARE h_d DATE;
  DECLARE j_i VARCHAR(10);
  DECLARE dep_id INT;
  DECLARE sair INT DEFAULT FALSE;
  
  DECLARE datos_emp CURSOR FOR
    SELECT employee_id, hire_date, job_id, department_id FROM employees;
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET sair = TRUE;

  OPEN datos_emp;
  
  empleados: LOOP
    FETCH datos_emp INTO emp_id, h_d, j_i, dep_id;
    IF sair THEN
      LEAVE empleados;
    END IF;
    INSERT INTO job_history (EMPLOYEE_ID, START_DATE, END_DATE, JOB_ID, DEPARTMENT_ID)
    VALUES (emp_id, h_d, CURDATE(), j_i, dep_id); 
  END LOOP;
  
  CLOSE datos_emp;
END$$

DELIMITER ;
