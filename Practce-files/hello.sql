CREATE TABLE students (
    student_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER,
    course TEXT,
    marks INTEGER
);


INSERT INTO students
(student_id, name, age, course, marks)
VALUES
(1,'Rahul', 20, 'BCA', 85),
(2,'Priya', 21, 'BSc', 91),
(3,'Amit', 19, 'BCA', 76);

SELECT * FROM students;

--SHOW table;

DROP TABLE students;

CREATE DATABASE College;


DROP DATABASE College;

