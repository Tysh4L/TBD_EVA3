CREATE FUNCTION sumatoria_loop(num INT)
RETURNS int DETERMINISTIC
BEGIN
  DECLARE sumatoria INT DEFAULT 0;
  DECLARE cont INT DEFAULT 1;
  
  miciclo: LOOP
    SET sumatoria = sumatoria + cont;
    SET cont = cont + 1;
    IF cont > num THEN
      LEAVE miciclo;
    END IF;
  END LOOP miciclo;
  
  RETURN sumatoria;

END