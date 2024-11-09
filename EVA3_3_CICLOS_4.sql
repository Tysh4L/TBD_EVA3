delimiter $$
CREATE FUNCTION calcular_potencia_loop(base INT, expo INT)
RETURNS INT DETERMINISTIC
BEGIN
  DECLARE resu INT DEFAULT 1;
  DECLARE cont INT DEFAULT 1;
  
  miciclo: LOOP
    IF cont > expo THEN
      LEAVE miciclo;
    END IF;
    
    SET resu = resu * base;
    SET cont = cont + 1;
    
    
  END LOOP miciclo;
  
  RETURN resu;

END$$
delimiter ;