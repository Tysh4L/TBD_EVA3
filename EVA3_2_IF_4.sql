delimiter $$
create function conversion_temp(formula int, valor int)
returns int deterministic
begin
	declare resu int;
    if formula = 1 then
		set resu = valor + 273;
	elseif formula = 2 then
		set resu = valor * 1.8 + 32;
	else
		set resu = valor - 273;
	end if;
    return resu;
end$$
delimiter ;