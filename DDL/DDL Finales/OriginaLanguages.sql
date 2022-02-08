-- Original Languages DEFINITIVO
DROP TABLE IF EXISTS original_Language;
CREATE TABLE original_Language
SELECT DISTINCT md5(original_language) AS id_orLanguages, original_language 
FROM movie_dataset_cleaned
