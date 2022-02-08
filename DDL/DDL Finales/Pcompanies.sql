-- Production Companies DEFINITIVO
DROP TABLE IF EXISTS movie_pCompanies;
CREATE TABLE movie_pCompanies
SELECT id_movie, id_production_companies 
FROM tmp_production_companies;


DROP TABLE IF EXISTS production_companies;
CREATE TABLE production_companies
SELECT DISTINCT id_production_companies, `name`
FROM tmp_production_companies;