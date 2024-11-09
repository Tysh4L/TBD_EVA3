CREATE FUNCTION dia_semana(fecha DATE) 
RETURNS varchar(10) DETERMINISTIC
BEGIN
  DECLARE dia VARCHAR(10);
  DECLARE num_dia int;
  SET num_dia = dayofweek(fecha);
  
  
  CASE num_dia
    WHEN 1 THEN SET dia = "Domingo";
    WHEN 2 THEN SET dia = "Lunes";
    WHEN 3 THEN SET dia = "Martes";
    WHEN 4 THEN SET dia = "Miercoles";
    WHEN 5 THEN SET dia = "Jueves";
    WHEN 6 THEN SET dia = "Viernes";
    WHEN 7 THEN SET dia = "Sabado";
  END CASE;
  RETURN dia;
END