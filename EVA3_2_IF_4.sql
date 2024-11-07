DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `conversion_tempCASE`(formula int, valor int) RETURNS int
    DETERMINISTIC
begin
	declare resu int;
CASE formula
	when 1 then set resu = valor + 273; -- Celsius a Kelvin
    when 2 then set resu = valor  * 1.8 + 32; -- Celsius a Fahrenheit
    when 3 then set resu =  valor - 273; -- Kelvin a Celsius
    else
		set resu = -1; -- Inválido
    end case;
    return resu;
end$$
DELIMITER ;
