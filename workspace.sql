SELECT first_name, last_name, state
	FROM students
	WHERE state ="wa";
	
SELECT first_name, last_name, birth_date
	FROM students
	WHERE YEAR(birth_date) >= 1965;
	
SELECT first_name, last_name, birth_date, state
	FROM students
	WHERE MONTH(birth_date) = 2 OR state="CA";
	
SELECT first_name, last_name, birth_date, state
	FROM students
	WHERE DAY(birth_date) >= 12 && (state="ca" || state= "nv");
	
SELECT last_name
	FROM students
	WHERE last_name IS NOT NULL;
	
SELECT last_name
	FROM students
	WHERE last_name IS NULL;
	
SELECT first_name, last_name, state
	FROM students
	ORDER BY state DESC, last_name ASC;
	
SELECT first_name, last_name
	FROM students
	ORDER BY last_name
	LIMIT 5;

SELECT first_name, last_name
	FROM students
	ORDER BY last_name
	LIMIT 5, 10;
	
SELECT CONCAT(first_name, " ", last_name) AS 'Name',
	CONCAT(city, " ", state) AS 'Hometown'
	FROM students;

SELECT CONCAT(first_name, ", ", last_name) AS 'Name',
	CONCAT(city, ", ", state) AS 'Hometown'
	FROM students;

SELECT last_name, first_name
	FROM students
	WHERE first_name LIKE 'D%' OR last_name LIKE '%n';
	
SELECT last_name, first_name
	FROM students
	WHERE first_name LIKE '%D%' OR last_name LIKE '%n%';
	
SELECT last_name, first_name
	FROM students
	WHERE first_name LIKE '___y';

SELECT DISTINCT state
	FROM students
	ORDER BY state;
	
SELECT COUNT(DISTINCT state)
	FROM students;
	
SELECT COUNT(*)
	FROM students;

SELECT COUNT(*)
	FROM students
	WHERE sex='M';
	
SELECT COUNT(*)
	FROM students
	GROUP BY sex; 
	
SELECT sex, COUNT(*)
	FROM students
	GROUP BY sex;
	
SELECT month(birth_date) AS 'Month', COUNT(*)
	FROM students
	GROUP BY Month
	ORDER BY Month;
	
SELECT 
	test_id AS 'Test',
	MIN(score) AS min,
	MAX(score) AS max,
	MAX(score)-MIN(score) AS 'range',
	SUM(score) AS total,
	AVG(score) AS average
	FROM scores
	GROUP BY test_id;

SELECT student_id, date, score, max_score
	FROM tests, scores
	WHERE date='2014-08-25'
	AND tests.test_id=scores.test_id;
	
SELECT scores.student_id, tests.test_id, tests.date, scores.score, tests.max_score
	FROM tests, scores
	WHERE date='2014-08-25'
	AND tests.test_id=scores.test_id;
	
SELECT CONCAT(students.first_name, " ", students.last_name) AS Name,
	tests.date,
	scores.score,
	tests.max_score
	FROM tests, scores, students
	WHERE date='2014-08-25'
	AND tests.test_id=scores.test_id
	AND scores.student_id=students.student_id;
	
SELECT students.student_id,
	CONCAT(students.first_name, " ", students.last_name) AS Name,
	COUNT(absences.date) AS Absences
	FROM students, absences
	WHERE students.student_id=absences.student_id
	GROUP BY students.student_id;
	
SELECT students.student_id,
	CONCAT(students.first_name, " ", students.last_name) AS Name,
	COUNT(absences.date) AS absences
	FROM students LEFT JOIN absences
	ON students.student_id=absences.student_id
	GROUP BY students.student_id;
	
SELECT students.first_name, students.last_name, scores.test_id, scores.score
	FROM students JOIN scores
	ON students.student_id=scores.student_id
	WHERE scores.score <= 15
	ORDER BY students.student_id;