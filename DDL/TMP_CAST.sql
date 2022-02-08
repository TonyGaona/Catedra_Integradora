-- TMP Cast
-- Borrar si existe una versión anterior (re-crear el procedimiento)
DROP PROCEDURE IF EXISTS Json2Relational_Cast ;
DELIMITER //
CREATE PROCEDURE Json2Relational_Cast()
BEGIN
	DECLARE a INT Default 0 ;
	
	-- crear tabla temporal para almacenar datos de Cast que están en JSON
	DROP TABLE IF EXISTS tmp_Cast ;
	CREATE TABlE tmp_Cast (id_movie INT, `name` VARCHAR (100) );
	
	
	-- ciclo repetitivo para ir cargando datos desde el arreglo JSON hacia la tabla temporal
  simple_loop: LOOP
-- cargando datos del objeto JSON en la tabla temporal 
		INSERT INTO tmp_Cast (id_movie, `name`)  
		SELECT id_movie, 
			JSON_EXTRACT(CONVERT(REPLACE(REPLACE(REPLACE(CastJSon,'"Al"','"Al '),'""Doogie"','"Doogie '),'""Gunner"','"Gunner ')using utf8mb4),CONCAT("$[",a,"]")) AS `name`
		FROM TMP_CastGot ; 
			SET a=a+1;	
     	IF a=6 THEN
            LEAVE simple_loop;
      END IF;
   END LOOP simple_loop;
   DELETE FROM tmp_Cast WHERE `name` IS NULL ;
END //
DELIMITER ;
Call Json2Relational_Cast();
