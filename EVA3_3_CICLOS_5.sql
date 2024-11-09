delimiter $$
CREATE FUNCTION calcular_potencia_repeat(base INT, expo INT)
RETURNS INT DETERMINISTIC
BEGIN
  DECLARE resu INT DEFAULT 1;
  DECLARE cont INT DEFAULT 1;

  REPEAT
    SET resu = resu * base;
    SET cont = cont + 1;
  UNTIL cont > expo END REPEAT;

  RETURN resu;
END$$
delimiter ;
