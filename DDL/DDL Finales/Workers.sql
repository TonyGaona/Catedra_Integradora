-- Workres DEFINITVO
DROP TABLE IF EXISTS workers;
CREATE TABLE workers
SELECT DISTINCT md5(`name`)AS idWorker,`name`,gender
FROM tmp_crew;
DELETE FROM workers WHERE idWorker IS NULL ;