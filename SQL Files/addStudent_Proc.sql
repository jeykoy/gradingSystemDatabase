CREATE DEFINER=`root`@`localhost` PROCEDURE `addStudent`(
IN fn VARCHAR(50),
 IN mi VARCHAR(6), 
 IN ln VARCHAR(50), 
 IN inputCourseID INTEGER, 
 IN inYear INTEGER)
BEGIN
	DECLARE result INTEGER;
    
    SELECT `courseMaxYears` INTO result FROM `course` WHERE `courseID` = inputCourseID LIMIT 1; /* SELECT THE max year of the input course*/
    
    IF (result = 4 AND inYear <=4) THEN
		INSERT INTO student(`studentFirstName`,`studentMiddleInitial`,`studentLastName`,
        `courseTakenID`,`yearStanding`) VALUES
        (fn,mi,ln,inputCourseID,inYear);
        
	elseif(result = 5 AND inYear <=5) THEN
		INSERT INTO student(`studentFirstName`,`studentMiddleInitial`,`studentLastName`,
        `courseTakenID`,`yearStanding`) VALUES
        (fn,mi,ln,inputCourseID,inYear);
        else 
        select 'Invalid input';
    END IF;
    

END
