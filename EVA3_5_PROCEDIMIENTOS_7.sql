DELIMITER $$
DROP PROCEDURE IF EXISTS insertar_producto;
CREATE PROCEDURE insertar_producto(IN nombre VARCHAR(50))
BEGIN
	DECLARE nuevo_id INT;
    SET nuevo_id = ultimo_id() + 1;
    INSERT INTO productos VALUE(nuevo_id, nombre);
END $$
DELIMITER ;