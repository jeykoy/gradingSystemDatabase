CREATE TABLE course(
	courseID INTEGER AUTO_INCREMENT,
	courseName VARCHAR(40),
	courseMaxYears INTEGER,
	PRIMARY KEY(courseID)
);

CREATE TABLE professor(
	profID INTEGER AUTO_INCREMENT,
	profFirstName VARCHAR(50),
	profMiddleInitial VARCHAR(6),
	profLastName VARCHAR(50),
	PRIMARY KEY(profID)
);

CREATE TABLE student(
	studentID INTEGER AUTO_INCREMENT,
	studentFirstName VARCHAR(50),
	studentMiddleInitial VARCHAR(6),
	studentLastName VARCHAR(50),
	courseTakenID INTEGER,
	yearStanding INTEGER,
	PRIMARY KEY(studentID),
	FOREIGN KEY(courseTakenID) REFERENCES course(courseID)	
);

CREATE TABLE subject(
	subjectID INTEGER AUTO_INCREMENT,
	subjectCode VARCHAR(6) UNIQUE,
	profID INTEGER,
	courseOfClass INTEGER,
	PRIMARY KEY(subjectID),
	FOREIGN KEY(profID) REFERENCES professor(profID),
	FOREIGN KEY(courseOfClass) REFERENCES course(courseID)
);

CREATE TABLE gradesheet(
	gradeID INTEGER AUTO_INCREMENT,
	studentID INTEGER,
	subjectID INTEGER,
	profID INTEGER,
	grade DOUBLE,
	PRIMARY KEY(gradeID),
	FOREIGN KEY(studentID) REFERENCES student(studentID),
	FOREIGN KEY(subjectID) REFERENCES subject(subjectID),
	FOREIGN KEY(profID) REFERENCES professor(profID)
);


