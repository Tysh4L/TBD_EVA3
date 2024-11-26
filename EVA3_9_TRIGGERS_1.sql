CREATE DEFINER = CURRENT_USER TRIGGER `tbd_e3`.`pruebas_AFTER_INSERT_1` AFTER INSERT ON `pruebas` FOR EACH ROW
BEGIN
	set @contador = @contador + 1;
END
