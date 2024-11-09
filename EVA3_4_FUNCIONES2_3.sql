delimiter $$
CREATE FUNCTION generar_correo(employee_id INT)
RETURNS VARCHAR(255) DETERMINISTIC
BEGIN
  DECLARE email VARCHAR(255);
  
  SELECT CONCAT(LOWER(SUBSTRING(a.FIRST_NAME, 1, 1)), '.', LOWER(a.LAST_NAME), '@', LOWER(b.DEPARTMENT_NAME), '.com')
  INTO EMAIL
  FROM employees a
  INNER JOIN departments b ON a.DEPARTMENT_ID= b.DEPARTMENT_ID
  WHERE a.EMPLOYEE_ID = EMPLOYEE_ID;
  RETURN email;
END$$

delimiter ;