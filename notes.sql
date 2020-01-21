DROP DATABASE IF EXISTS	students_db;
CREATE DATABASE students_db;
USE students_db;

CREATE TABLE student (
	student_id INT AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    major VARCHAR(20),
    PRIMARY KEY(student_id)
);

DESCRIBE student;

DROP TABLE student;

ALTER TABLE student ADD gpa DECIMAL(3, 2);
ALTER TABLE student DROP COLUMN gpa;

INSERT INTO student(name, major) VALUES ('Jack', 'Biology');
INSERT INTO student(name, major) VALUES ('Kate', 'Sociology');
INSERT INTO student(name) VALUES ('Claire');
INSERT INTO student(name, major) VALUES ('Jack', 'Biology');
INSERT INTO student(name, major) VALUES ('Mike', 'Computer Science');
SELECT * FROM student;

UPDATE student SET major = 'Bio' WHERE major = 'Biology';
UPDATE student SET major = 'comp sci' WHERE major = 'Computer Science';

DELETE FROM student WHERE student_id = 1;