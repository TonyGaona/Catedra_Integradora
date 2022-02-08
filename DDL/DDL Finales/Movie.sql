-- MOVIE Definitivo
DROP TABLE IF EXISTS movie;
CREATE TABLE movie
SELECT  id AS id_movie, original_title, title, runtime, overview
, revenue, release_date,homepage,`status`,tagline,popularity
,vote_count,vote_average,`index`, budget
, md5(director) AS id_director,md5(original_language) AS id_orLanguage
FROM movie_dataset_cleaned;
