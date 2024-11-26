CREATE DEFINER=`root`@`localhost` TRIGGER `pruebas_AFTER_DELETE` AFTER DELETE ON `pruebas` FOR EACH ROW BEGIN
	INSERT INTO bitacora(id_modificado, tabla, accion)
    value(old.id, 'pruebas', 'delete');
END