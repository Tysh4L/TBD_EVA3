delimiter $$
CREATE FUNCTION calcular_potencia_while(base INT, expo INT)
RETURNS INT DETERMINISTIC
BEGIN
  DECLARE resu INT DEFAULT 1;
  DECLARE cont INT DEFAULT 1;

  WHILE cont <= expo DO
    SET resu = resu * base;
    SET cont = cont + 1;
  END WHILE;

  RETURN resu;
END$$
delimiter ;
