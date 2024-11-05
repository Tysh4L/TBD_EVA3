create function mostrar_mensaje(cadena varchar(30))
returns varchar(100) deterministic
return concat("TU MENSAJE: ", cadena); 