CREATE DEFINER=`root`@`localhost` TRIGGER `pruebas_BEFORE_INSERT` BEFORE INSERT ON `pruebas` FOR EACH ROW BEGIN
	set new.nombre = generar_rfc2();
END