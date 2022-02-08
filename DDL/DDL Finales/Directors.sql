-- Directors DEFINITIVO
DROP TABLE IF EXISTS Director ;
CREATE TABLE Director
SELECT DISTINCT md5(director) AS directorID, director 
FROM movie_dataset_cleaned m
WHERE director != '';



