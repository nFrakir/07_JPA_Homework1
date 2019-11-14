CREATE DATABASE univercity;
SET GLOBAL time_zone="+2:0";

CREATE TABLE students (
	id INT NOT NULL AUTO_INCREMENT,
	sirname VARCHAR(255),
	PRIMARY KEY (id)
);

CREATE TABLE courses (
	id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE courses_students (
	course_id INT NOT NULL,
    student_id INT NOT NULL,
    FOREIGN KEY (course_id) REFERENCES courses(id) ON DELETE CASCADE,
    FOREIGN KEY (student_id) REFERENCES students(id) ON DELETE CASCADE,
    CONSTRAINT courses_students_pk PRIMARY KEY(course_id, student_id));

INSERT INTO students VALUES
	(DEFAULT, "Hensen"),
    (DEFAULT, "Broden"),
    (DEFAULT, "Taurenen"),
    (DEFAULT, "Johanson"),
    (DEFAULT, "Adams"),
    (DEFAULT, "Ross"),
    (DEFAULT, "Patterson"),
    (DEFAULT, "Jagger"),
    (DEFAULT, "Smolsky");
INSERT INTO courses VALUES
	(DEFAULT, "Vocal"),
    (DEFAULT, "Acoustic guitar"),
    (DEFAULT, "Bass guitar"),
    (DEFAULT, "Keyboards");    
INSERT INTO courses_students VALUES 
	(1, 1),
    (1, 2),
    (1, 4),
    (1, 5),
    (1, 9),
    (2, 9),
    (2, 8),
    (2, 6),
    (2, 3),
    (3, 1),
    (3, 2),
    (3, 6),
    (3, 7),
    (3, 8),
    (4, 2),
    (4, 3);
    
CREATE VIEW `courses_attending_view` AS
SELECT
	course_id,
    COUNT(student_id) AS student_cnt,
    courses.title
FROM courses_students
LEFT JOIN courses ON courses_students.course_id = courses.id
GROUP BY courses_students.course_id;

SELECT * FROM courses_attending_view;

