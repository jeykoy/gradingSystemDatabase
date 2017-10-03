CREATE DEFINER=`root`@`localhost` FUNCTION `getGrade`(studID INTEGER, subjID INTEGER) RETURNS varchar(1) CHARSET utf8
BEGIN
	DECLARE sqlGrade DOUBLE;
    
    SELECT `grade` INTO sqlGrade FROM `gradesheet` WHERE `studentID` = studID AND `subjectID` = subjID;
     IF (sqlGrade >= 95 AND sqlGrade <=100) THEN
		RETURN 'A';
	 ELSEIF (sqlGrade >=90 AND sqlGrade <= 94) THEN
		RETURN 'B';
	 ELSEIF (sqlGrade >=85 AND sqlGrade <= 89) THEN
		RETURN 'C'; 
	 ELSEIF (sqlGrade >=80 AND sqlGrade <= 84) THEN
		RETURN 'D';
	 ELSEIF (sqlGrade >=75 AND sqlGrade <= 79) THEN
		RETURN 'D';
     END IF;
RETURN 'E';
END