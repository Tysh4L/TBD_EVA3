delimiter $$
CREATE FUNCTION sumatoria_repeat(num INT)
RETURNS INT DETERMINISTIC
BEGIN
  DECLARE sumatoria INT DEFAULT 0;
  DECLARE cont INT DEFAULT 1;
  
  REPEAT
    SET sumatoria = sumatoria + cont;
    SET cont = cont + 1;
  UNTIL cont > num END REPEAT;
  
  RETURN sumatoria;
END$$
delimiter ;