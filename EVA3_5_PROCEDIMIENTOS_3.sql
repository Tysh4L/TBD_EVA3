DELIMITER $$
DROP PROCEDURE IF EXISTS consultar_empleados;
CREATE PROCEDURE consultar_empleados(id_empleado INT)
BEGIN
	SELECT * FROM employees WHERE EMPLOYEE_ID = id_empleado;
END $$
DELIMITER ;