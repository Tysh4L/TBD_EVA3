delimiter $$
CREATE PROCEDURE insertar_prueba(clave int)
BEGIN
  DECLARE EXIT HANDLER FOR SQLSTATE '23000'
  BEGIN
    SELECT 'Error: Clave duplicada' as Mensaje;
  END;
  INSERT INTO prueba(id) VALUE (clave);
  SELECT 'Clave correctamente insertada' as Mensaje;
END$$
delimiter ;