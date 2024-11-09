CREATE FUNCTION sumatoria_while(num INT)
RETURNS INT DETERMINISTIC
BEGIN
  DECLARE sumatoria INT DEFAULT 0;
  DECLARE cont INT DEFAULT 1;
 
  WHILE cont <= num DO
    SET sumatoria = sumatoria + cont;
    SET cont = cont + 1;
  END WHILE;
  
  RETURN sumatoria;
END