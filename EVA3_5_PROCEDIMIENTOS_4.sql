DELIMITER $$
DROP PROCEDURE IF EXISTS contar_empleados;
CREATE PROCEDURE contar_empleados(OUT cont INT)
BEGIN
	SELECT COUNT(*) INTO cont FROM employees;
  SELECT cont;
END $$
DELIMITER ;