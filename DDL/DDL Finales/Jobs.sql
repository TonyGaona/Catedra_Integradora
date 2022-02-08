-- Jobs DEFINITVO

DROP TABLE IF EXISTS jobs;
CREATE TABLE jobs
SELECT DISTINCT md5(job) AS idJob, job, md5(department) AS id_department 
FROM tmp_crew
GROUP BY md5(job);
DELETE FROM jobs WHERE idJob IS NULL ;