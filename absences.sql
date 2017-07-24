DROP TABLE IF EXISTS absences;

CREATE TABLE absences(
	student_id INT UNSIGNED NOT NULL,
	date DATE NOT NULL,
	PRIMARY KEY(student_id, date)
);

INSERT INTO absences VALUES
	(6, '2014-08-29'),
	(1, '2014-08-29'),
	(4, '2014-08-27');