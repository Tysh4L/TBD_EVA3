DELIMITER $$

CREATE PROCEDURE generar_rfc()
BEGIN
    DECLARE persona_id INT;
    DECLARE persona_nombre VARCHAR(50);
    DECLARE persona_apellido_pat VARCHAR(50);
    DECLARE persona_apellido_mat VARCHAR(50);
    DECLARE persona_fecha_nac DATE;
    DECLARE salir INT DEFAULT FALSE;

    -- declarar un cursor para recorrer la tabla personas
    DECLARE cursor_personas CURSOR FOR
        SELECT id, nombre, apellido_pat, apellido_mat, fecha_nac FROM personas;

    -- handler para terminar el cursor
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET salir = TRUE;

    -- abrir el cursor
    OPEN cursor_personas;

    leer_persona: LOOP
        -- leer cada fila del cursor
        FETCH cursor_personas INTO persona_id, persona_nombre, persona_apellido_pat, persona_apellido_mat, persona_fecha_nac;
        IF salir THEN
            LEAVE leer_persona;
        END IF;

        -- sacar y actualizar la clave RFC
        UPDATE personas
        SET clave_rfc = UPPER(CONCAT(
          SUBSTRING(persona_apellido_pat, 1, 2), -- primeras 2 letras del apellido paterno
          IFNULL(SUBSTRING(persona_apellido_mat, 1, 1), 'X'), -- primera letra del apellido materno o 'X' si es NULL
          SUBSTRING(persona_nombre, 1, 1), -- primera letra del nombre
          YEAR(persona_fecha_nac), -- año completo
          LPAD(MONTH(persona_fecha_nac), 2, '0'), -- mes 
          LPAD(DAY(persona_fecha_nac), 2, '0') -- dia 
        ))
        WHERE id = persona_id;
    END LOOP leer_persona;

    -- cerrar el cursor
    CLOSE cursor_personas;
END$$

DELIMITER ;
