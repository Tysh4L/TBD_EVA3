DELIMITER $$
DROP PROCEDURE IF EXISTS agregar_pais;	
CREATE PROCEDURE agregar_pais(IN id VARCHAR(2), IN nombre VARCHAR(40))
BEGIN
	INSERT INTO countries(country_id, country_name, region_id)
    VALUE(id, nombre, 1);
END $$
DELIMITER ;