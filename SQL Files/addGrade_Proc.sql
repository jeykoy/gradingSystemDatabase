

CREATE DEFINER=`root`@`localhost` PROCEDURE `addGrade`(IN studID INTEGER, IN subjID INTEGER, IN proID INTEGER, IN inGrade double)
BEGIN



IF(inGrade >= 50 && inGrade <=100) THEN
INSERT INTO gradesheet(`studentID`,`subjectID`,`profID`,`grade`) VALUES (studID,subjID,proID,inGrade);
END IF;
END