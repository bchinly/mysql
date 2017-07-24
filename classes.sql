DROP TABLE IF EXISTS classes;

CREATE TABLE classes(
	name VARCHAR(30) NOT NULL,
	class_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
);

INSERT INTO classes VALUES
('English', NULL), ('Speech', NULL), ('Literature', NULL),
('Algebra', NULL), ('Geometry', NULL), ('Trigonometry', NULL),
('Calculus', NULL), ('Earth Science', NULL), ('Biology', NULL),
('Chemistry', NULL), ('Physics', NULL), ('History', NULL), ('Art', NULL), ('Gym', NULL);
