SELECT *
FROM student;
-- 
SELECT *
FROM subject;
--Remove dupli (ran same query 2x)
SELECT id,
    COUNT(*)
FROM student
GROUP BY id
HAVING COUNT(*) > 1;
--Find duplicated 
SELECT name,
    stuid,
    ROW_NUMBER() OVER (
        PARTITION BY name
        ORDER BY stuid
    ) AS rnum
FROM student
GROUP BY stuid,
    name
ORDER BY rnum,
    name;
--Add dob and email columns 
ALTER TABLE student
ADD COLUMN dob DATE,
Add COLUMN email VARCHAR(100);
--Update dob and email columns  
UPDATE student
SET email = concat(lower(REPLACE(name, ' ', '')), '@gmail.com')
returning student.stuid,
    student.name,
    student.email;
--select count of unique distinct names
select DISTINCT name,count(name) over(PARTITION BY name) FROM student;
