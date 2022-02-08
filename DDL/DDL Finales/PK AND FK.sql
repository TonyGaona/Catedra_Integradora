-- PRIMARY KEY

ALTER TABLE director ADD primary key(directorID);
ALTER TABLE genres ADD primary key(genreID);
ALTER TABLE movie_genres ADD primary key(id_movie,genreID);
ALTER TABLE original_language ADD primary key(id_orLanguages);
ALTER TABLE original_language ADD primary key(id_orLanguages);
ALTER TABLE cast ADD primary key(id_cast);
ALTER TABLE movie_cast ADD primary key(id_movie,id_cast);
ALTER TABLE keywords ADD primary key(id_keywords);
ALTER TABLE movie_keywords ADD primary key(id_movie,id_keywords);
ALTER TABLE movie ADD primary key(id_movie);
ALTER TABLE production_countries ADD primary key(iso_3166_1);
ALTER TABLE movie_pcountries ADD primary key(id_movie,iso_3166_1);
ALTER TABLE spoken_langugages ADD primary key(iso_639_1);
ALTER TABLE movie_slanguages ADD primary key(id_movie,iso_639_1);
ALTER TABLE production_companies ADD primary key(id_production_companies);
ALTER TABLE movie_pcompanies ADD primary key(id_movie,id_production_companies);
ALTER TABLE crew ADD primary key(id_crew,credit_id);
ALTER TABLE workers ADD primary key(idWorker);
ALTER TABLE jobs ADD primary key(idJob);
ALTER TABLE departments ADD primary key(id_department);

-- FOREING KEY
ALTER TABLE  crew ADD FOREIGN KEY(idJob)references jobs(idJob);
ALTER TABLE  crew ADD FOREIGN KEY(id_movie)references movie(id_movie);
ALTER TABLE  crew ADD FOREIGN KEY(idWorker)references workers(idWorker);
ALTER TABLE  movie ADD FOREIGN KEY(id_director)references director(directorID);
ALTER TABLE  movie ADD FOREIGN KEY(id_orLanguage)references original_language(id_orLanguages);
ALTER TABLE  jobs ADD FOREIGN KEY(id_department)references departments(id_department);




