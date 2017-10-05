CREATE DEFINER=`root`@`localhost` PROCEDURE `addGrade`(
IN studID INTEGER, 
IN subjID INTEGER, 
IN profID INTEGER,
IN inGrade double)
BEGIN
	DECLARE result INTEGER;
    SELECT COUNT(`gradeID`) INTO result FROM gradesheet WHERE `studentID` = studID AND `subjectID` = subjID;
	
    IF (result = 0) THEN
		IF(inGrade >= 50 && inGrade <=100) THEN
			INSERT INTO `gradesheet`(`studentID`,`subjectID`,`profId`,`grade`) VALUES (studID,subjID,profId,inGrade);
		END IF;
	END IF;

END