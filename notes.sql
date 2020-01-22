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
INSERT INTO student(name, major) VALUES ('Claire', 'Chemistry');
INSERT INTO student(name, major) VALUES ('Jack', 'Biology');
INSERT INTO student(name, major) VALUES ('Mike', 'Computer Science');
SELECT * FROM student;

UPDATE student SET major = 'Bio' WHERE major = 'Biology';
UPDATE student SET major = 'comp sci' WHERE major = 'Computer Science';

DELETE FROM student WHERE student_id = 1;

SELECT * FROM student ORDER BY student.student_id DESC;
SELECT * FROM student ORDER BY student.major, student_id;
SELECT * FROM student ORDER BY student.student_id DESC LIMIT 2;
SELECT * FROM student WHERE student.major = 'Biology';
SELECT name, major FROM student WHERE major = 'Biology' OR major = 'Chemistry';
SELECT * FROM student WHERE major <> 'Chemistry';
SELECT * FROM student WHERE major IN ('Biology', 'Chemistry');





CREATE TABLE animal(
	animal_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(15) NOT NULL,
    type VARCHAR(15) NOT NULL
);
DESCRIBE animal;

INSERT INTO animal(name, type) VALUES('George', 'Dog');
INSERT INTO animal(name, type) VALUES('Sully', 'Cat');
INSERT INTO animal(name, type) VALUES('Pop', 'Parrot');
INSERT INTO animal(name, type) VALUES('Harry', 'Hedgehog');
INSERT INTO animal(name, type) VALUES('Jim', 'Lizard');

SELECT * FROM animal;

SELECT animal.animal_id, animal.type FROM animal WHERE animal.animal_id >= 2 ORDER BY animal.animal_id DESC;
SELECT * FROM animal WHERE animal.type IN('Lizard', 'Hedgehog');