-- Genres DEFINITIVO
DROP TABLE IF EXISTS movie_Genres;
CREATE TABLE movie_Genres
SELECT id_movie, md5(genres) AS genreID 
FROM tmp_genres
WHERE genres != '""';

DROP TABLE IF EXISTS genres;
CREATE TABLE genres
SELECT DISTINCT  md5(genres) AS genreID, genres
FROM tmp_genres
WHERE genres != '""';
