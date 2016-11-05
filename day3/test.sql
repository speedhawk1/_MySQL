SELECT *
FROM demo.new_student;

DESC demo.new_student;

DELETE FROM demo.new_student;

TRUNCATE TABLE demo.new_student;

INSERT INTO demo.new_student VALUES (NULL, '001', '张三', '1090-1-1', 18, 1.81, 'M', 'test...');

SELECT *
FROM demo.student_course;

DELETE FROM demo.student_course;

DESC demo.student_course;

CREATE INDEX ind_name ON demo.new_student (name);

SELECT *
FROM demo.new_student;

DROP INDEX ind_name ON demo.new_student;

SHOW INDEX FROM demo.new_student;

INSERT INTO demo.new_student (name, height) VALUE ('somebody', 1.2);

DESC demo.new_student;

UPDATE demo.new_student
SET name = '李四', height = 1.71
WHERE id = 2;

DELETE FROM demo.new_student
WHERE id = 2;
