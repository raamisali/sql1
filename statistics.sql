USE Practice1


SELECT AVG(Grade) FROM Grades 

SELECT COUNT(StudentID) as num FROM Grades 


--- Setting variables equal to the values of average Grades and number of Student IDs

DECLARE @average FLOAT
SET @average = (SELECT AVG(Grade) FROM Grades)



DECLARE @num int
SET @num = (SELECT COUNT(StudentID) as num FROM Grades )

-- Inserting values from variables average and num into the table ClassStatistics to show the Average grade and Number of Students

INSERT INTO ClassStatistics (Average, NumberOfStudents)
VALUES (@average, @num)

