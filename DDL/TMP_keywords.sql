-- TMP KEY WORDS
-- Borrar si existe una versión anterior (re-crear el procedimiento)
DROP PROCEDURE IF EXISTS Json2Relational_Key_words ;
DELIMITER //
CREATE PROCEDURE Json2Relational_Key_words()
BEGIN
	DECLARE a INT Default 0 ;
	
	-- crear tabla temporal para almacenar datos de Key_words que están en JSON
	DROP TABLE IF EXISTS tmp_Key_Words ;
	CREATE TABlE tmp_Key_Words (id_movie INT, keyWords VARCHAR (100) );
	
	-- ciclo repetitivo para ir cargando datos desde el arreglo JSON hacia la tabla temporal
  simple_loop: LOOP
-- cargando datos del objeto JSON en la tabla temporal 
		INSERT INTO tmp_Key_Words (id_movie, keyWords)  
		SELECT id as id_Movie, 
				JSON_EXTRACT(CONCAT('["',REPLACE (REPLACE (keywords, '"', ' '), ' ', '","'), '"]'), CONCAT("$[",a,"]")) AS keyWords
		FROM movie_dataset_cleaned m ; 
			SET a=a+1;	
     	IF a=20 THEN
            LEAVE simple_loop;
      END IF;
   END LOOP simple_loop;
   -- limpieza de registros nulos
   -- xyz tuplas en tmp_spoken_languages
   DELETE FROM tmp_Key_Words WHERE keyWords IS NULL ;
   -- xyz tuplas en tmp_spoken_languages
END //
DELIMITER ;
Call Json2Relational_Key_words();
