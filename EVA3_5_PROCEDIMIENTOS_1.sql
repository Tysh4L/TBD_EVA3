DELIMITER $$
CREATE FUNCTION contar_empleados()
RETURNS INT READS SQL DATA
BEGIN
	DECLARE cont INT;
    SELECT count(*) INTO cont FROM employees;
    RETURN cont;
END $$
DELIMITER ;