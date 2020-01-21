DROP DATABASE IF EXISTS	students_db;
CREATE DATABASE students_db;
USE students_db;

CREATE TABLE student (
	student_id INT,
    name VARCHAR(20) NOT NULL,
    major VARCHAR(20),
    PRIMARY KEY(student_id)
);

DESCRIBE student;

DROP TABLE student;

ALTER TABLE student ADD gpa DECIMAL(3, 2);
ALTER TABLE student DROP COLUMN gpa;

INSERT INTO student VALUES (1, 'Jack', 'Biology');
INSERT INTO student VALUES (2, 'Kate', 'Sociology');
INSERT INTO student(student_id, name) VALUES (3, 'Claire');
INSERT INTO student VALUES (4, 'Jack', 'Biology');
INSERT INTO student VALUES (5, 'Mike', 'Computer Science');
SELECT * FROM student;