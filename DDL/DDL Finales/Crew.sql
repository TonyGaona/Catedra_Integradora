-- CREW DEFINITVO

DROP TABLE IF EXISTS Crew;
CREATE TABLE Crew
SELECT id_movie,id_crew, md5(job) AS idJob,credit_id,md5(`name`)AS idWorker
FROM tmp_crew