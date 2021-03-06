DROP TABLE IF EXISTS students;

CREATE TABLE students(
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	email VARCHAR(60) NULL,
	street VARCHAR(50) NOT NULL,
	city VARCHAR(40) NOT NULL,
	state CHAR(2) NOT NULL DEFAULT "PA",
	zip MEDIUMINT UNSIGNED NOT NULL,
	phone VARCHAR(20) NOT NULL,
	birth_date DATE NOT NULL,
	sex ENUM('M', 'F') NOT NULL,
	date_entered TIMESTAMP,
	lunch_cost FLOAT NULL,
	student_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
);

INSERT INTO students VALUE('Dale', 'Cooper', 'dcooper@aol.com', '123 Main St', 'Yakima', 'WA', 98901, '792-223-8901', "1959-2-22",'M', NOW(), 3.50, NULL);

INSERT INTO students VALUES('Harry', 'Truman', 'htruman@aol.com', '202 South St', 'Vancouver', 'WA', 98660, '792-223-9810', "1946-1-24", 'M', NOW(), 3.50, NULL);

 INSERT INTO students VALUES('Shelly', 'Johnson', 'sjohnson@aol.com', '9 Pond Rd', 'Sparks', 'NV', 89431, '792-223-6734', "1970-12-12", 'F', NOW(), 3.50, NULL);

INSERT INTO students VALUES('Bobby', 'Briggs', 'bbriggs@aol.com', '14 12th St', 'San Diego', 'CA', 92101, '792-223-6178', "1967-5-24",'M', NOW(), 3.50, NULL);

INSERT INTO students VALUES('Donna', 'Hayward', 'dhayward@aol.com', '120 16th St', 'Davenport', 'IA', 52801, '792-223-2001', "1970-3-24",'F', NOW(), 3.50, NULL);

INSERT INTO students VALUES('Audrey', 'Horne', 'ahorne@aol.com', '342 19th St', 'Detroit', 'MI', 48222, '792-223-2001', "1965-2-1", 'F', NOW(), 3.50, NULL);

INSERT INTO students VALUES('James', 'Hurley', 'jhurley@aol.com', '2578 Cliff St', 'Queens', 'NY', 11427, '792-223-1890', "1967-1-2", 'M', NOW(), 3.50, NULL);

INSERT INTO students VALUES('Lucy', 'Moran', 'lmoran@aol.com','178 Dover St', 'Hollywood', 'CA', 90078, '792-223-9678', "1954-11-27", 'F', NOW(), 3.50, NULL);

INSERT INTO students VALUES('Tommy', 'Hill', 'thill@aol.com','672 High Plains', 'Tucson', 'AZ', 85701, '792-223-1115', "1951-12-21", 'M', NOW(), 3.50, NULL);

INSERT INTO students VALUES('Andy', 'Brennan', 'abrennan@aol.com','281 4th St', 'Jacksonville', 'NC', 28540, '792-223-8902', "1960-12-27",'M', NOW(), 3.50, NULL);

