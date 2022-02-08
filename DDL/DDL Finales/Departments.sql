-- Departments DEFINITVO

DROP TABLE IF EXISTS departments;
CREATE TABLE departments
SELECT DISTINCT md5(department) AS id_department, department
FROM tmp_crew;