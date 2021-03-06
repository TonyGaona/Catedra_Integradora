DROP TABLE IF EXISTS CastGot;
CREATE TABLE TMP_CastGot
SELECT id as id_Movie,
        REPLACE(
		CONCAT ('["',
	   			IF(SpacesNumber >= 13, CONCAT(SUBSTRING_INDEX(SUBSTRING_INDEX(cast, ' ', -14), ' ', 2), '","'), '') ,
	   			IF(SpacesNumber >= 11, CONCAT(SUBSTRING_INDEX(SUBSTRING_INDEX(cast, ' ', -12), ' ', 2), '","'), '') ,
	   			IF(SpacesNumber >= 9, CONCAT(SUBSTRING_INDEX(SUBSTRING_INDEX(cast, ' ', -10), ' ', 2), '","'), '') ,
	   			IF(SpacesNumber >= 7, CONCAT(SUBSTRING_INDEX(SUBSTRING_INDEX(cast, ' ', -8), ' ', 2), '","'), '') ,	
	   			IF(SpacesNumber >= 5, CONCAT(SUBSTRING_INDEX(SUBSTRING_INDEX(cast, ' ', -6), ' ', 2), '","'), '') ,
	   			IF(SpacesNumber >=3, CONCAT(SUBSTRING_INDEX(SUBSTRING_INDEX(cast, ' ', -4), ' ', 2), '","'), '') ,
        		IF(SpacesNumber >=1, CONCAT(SUBSTRING_INDEX(cast, ' ', -2), '"'), ''), 
        ']'), 
        "=", " ") AS CastJSon	
FROM ( 
	SELECT id, cast, LENGTH(cast) - LENGTH(REPLACE(cast, ' ', '')) AS SpacesNumber FROM ( 
	SELECT id,		
	CONVERT(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE
	                (REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
	                    REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
	                        REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE
	                            (REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE
	                                (REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
	                                    REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
	                                        REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
	                                            REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE
	                                            (cast, ' Jr.', '=Jr.'), ' Jr ', '=Jr '), '. ', '.='),  ' The ', ' The='), ' the ', ' the='), 'the=Cable Guy', 'the=Cable=Guy' ), 'Tupac Amaru Shakur', 'Tupac Amaru=Shakur'),
	                                            '\\u00e1','??'),'\\u00e5','??'),'\\u00e9','??'),
           '\\u00eb','??'),'\\u00ed','??'),'\\u00e0','??'), '\\u00f1','??'),'\\u00f8','??'),'\\u042','B'),
           '\\u0438','N'),'\\u044f','??'),'\\u0421','C'), '\\u043d','H'),'\\u0440','p'),'\\u0433','r'),
           '\\u044c','b'),'\\u067e','??'),'\\u06cc','??'), '\\u0645','??'),'\\u0627','??'),'\\u0646','??'),
           '\\u0646','??'),'\\u062f','??'),'\\u00e8','??'), '\\u00f3','??'),'\\u0160','??'),'\\u0107','??'),
           '\\u0107','??'),'\\u00f6','??'),'\\u00e4','??'), '\\u00e4','??'),'\\u00e4','??'),'\\u0144','??'),
           '\\u2019','???'),'\\u00fc','??'),'\\u00c1','??'), '\\u00ea','??'),'\\u00ea','??'),'\\u00e7','??'),
           '\\u00dc','??'),'\\u0159','??'),'\\u00d8','??'), '\\u00fa','??'),'\\u010d','??'),'\\u010d','??'),
           '\\u00f0','??'),'\\u0219','??'),'\\u00d3','??'), '\\u0110','??'),'\\u0161','??'),'\\u0101','??'),
           '\\u00c5','??'),'\\u043b','??'),'\\u014c','??'), '\\u016b','??'),'\\u014d','??'),'\\u015b','??'),
           '\\u00ef','??'),'\\u021b','??'),'\\u00c9b','???'), '\\u00f4','??'),'\\u0301','??'),'\\u00fb','??'),
           '\\u00fb','??'),'\\u1ed7','???'),'\\u1ecb','???'), '\\u1ea3','???'),'\\u1ebf','???'),'\\u015f','??'),
           '\\u015ea','D'),'\\u017e','??'),'\\u00c0','??'), '\\u0131','??'),'\\u011f','??'),'\\u1ec1','???'),
           '\\u0639','??'),'\\u00ee','????'),'\\u00e6','??'), '\\u00c9','??'),'\\u00df','??'),'\\u015ea','???') using utf8mb4) AS cast
	FROM   movie_dataset_cleaned WHERE Cast <> '') t1) t2 ;
