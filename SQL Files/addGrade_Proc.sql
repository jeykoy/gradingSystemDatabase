

CREATE DEFINER=`root`@`localhost` PROCEDURE `addGrade`(IN studID INTEGER, IN subjID INTEGER, IN proID INTEGER, IN inGrade double)
BEGIN

	DECLARE result INTEGER;
	
	/*	1,1,1 
		1,2,1,
	 XX 1,1,2*/
		
	SELECT count(`gradeID`) INTO result FROM gradesheet WHERE studentID = studID AND subjectID = subjID;
	
	IF !(result > 0) THEN
		IF(inGrade >= 50 && inGrade <=100) THEN
			INSERT INTO gradesheet(`studentID`,`subjectID`,`profID`,`grade`) VALUES (studID,subjID,proID,inGrade);
		END IF;
	END IF;

	
END