-- Production Countries DEFINITIVO
DROP TABLE IF EXISTS movie_Pcountries;
CREATE TABLE movie_Pcountries
SELECT id_movie, iso_3166_1 
FROM tmp_production_countries;


DROP TABLE IF EXISTS production_countries;
CREATE TABLE production_countries
SELECT DISTINCT `name`, iso_3166_1
FROM tmp_production_countries;
