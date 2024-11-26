DELIMITER $$
CREATE FUNCTION ultimo_id()
RETURNS INT DETERMINISTIC READS SQL DATA
BEGIN
	DECLARE maxid INT;
    SELECT max(id) INTO maxid FROM productos;
    RETURN maxid;
END $$
DELIMITER ;

/**
CREATE TABLE productos(id INT, nombre VARCHAR(50));
INSERT INTO PRODUCTOS(id, nombre) VALUES(1, "papas");
SELECT * FOM productos;
SELECT ultimo_id();
CALL insertar_producto("REFRESCO");

**/