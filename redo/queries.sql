-- SELECT DISTINCT name,
--     (
--         select COUNT(name)
--         from student
--     ) AS total_names,
--     (
--         SELECT count(DISTINCT name)
--         FROM student
--     ) AS total_unique_names,
--     (
--         SELECT count(name)
--         FROM student
--         WHERE name LIKE 'A%'
--     ) AS a_names,
--     (
--         SELECT count(email)
--         from student
--         where name like 'A%'
--     ) as a_emails,
--     count(email) over() as emails,
--     count(email) over(partition by name) as total_emails_per_name
-- FROM student
-- ORDER BY name;

-- EXPLAIN ANALYZE
-- SELECT COUNT(name)
-- FROM student
-- GROUP BY name;
-- EXPLAIN ANALYZE

-- select count(name) over(partition by name) from student;
-- EXPLAIN ANALYZE

-- -- SELECT * FROM student where name = 'AASHIK H';
-- ALTER TABLE question
-- ADD COLUMN subid INT,
-- DROP CONSTRAINT question_pkey,
-- ADD PRIMARY KEY(qid, subid);

SELECT name from student order by name;
-- SELECT * FROM question;
-- SELECT * FROM marks;
-- SELECT * FROM subject;
