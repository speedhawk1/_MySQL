DROP DATABASE IF EXISTS demo;
CREATE DATABASE demo;

DROP TABLE IF EXISTS demo.student;
CREATE TABLE demo.student (
  id     INT AUTO_INCREMENT PRIMARY KEY, -- Java int
  sno    CHAR(3) COMMENT 'student number',
  name   VARCHAR(10),
  dob    DATE COMMENT 'dob - date of birth',
  age    INT(3),
  height DOUBLE(3, 2) NOT NULL
)
  COMMENT '学生表';

SHOW FULL COLUMNS FROM demo.student;

ALTER TABLE demo.student AUTO_INCREMENT = 10000;

DESC demo.student; -- desc describe 描述


INSERT INTO demo.student VALUES (NULL, '001', '张三', '1090-1-1', 18, 1.81);
INSERT INTO demo.student VALUES (NULL, '002', '李四', '1090-1-1', 18, 1.80);


SELECT * -- 约束
FROM demo.student;

UPDATE demo.student
SET height = 1.82
WHERE sno = '001';

DROP TABLE IF EXISTS demo.course;
CREATE TABLE demo.course (
  id    INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(20) COMMENT 'course title',
  score INT(1) COMMENT '学分'
)
  COMMENT '课程表';

SHOW FULL COLUMNS FROM demo.course;

INSERT INTO demo.course VALUES (NULL, 'HTML', 1);
INSERT INTO demo.course VALUES (NULL, 'CSS', 2);
INSERT INTO demo.course VALUES (NULL, 'Java SE', 3);

SELECT *
FROM demo.course;

DROP TABLE IF EXISTS demo.student_course;
CREATE TABLE demo.student_course (
  id        INT AUTO_INCREMENT PRIMARY KEY,
  studentId INT COMMENT 'student id',
  courseId  INT COMMENT 'course id',
  grade     INT(3) COMMENT 'test grade'
)
  COMMENT '学生课程表';

ALTER TABLE demo.student_course
ADD CONSTRAINT student_course_studentId
FOREIGN KEY (studentId)
REFERENCES demo.student (id);

ALTER TABLE demo.student_course
ADD CONSTRAINT student_course_courseId
FOREIGN KEY (courseId)
REFERENCES demo.course (id);

SELECT *
FROM demo.student;

SELECT *
FROM demo.course;

SELECT *
FROM demo.student_course;

INSERT INTO demo.student_course VALUES (NULL, 1, 2, NULL);
INSERT INTO demo.student_course VALUES (NULL, 2, 2, NULL);
INSERT INTO demo.student_course VALUES (NULL, 3, NULL, NULL);
INSERT INTO demo.student_course VALUES (NULL, NULL, 1, NULL);
