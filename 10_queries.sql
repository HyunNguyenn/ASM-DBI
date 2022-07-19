--Mark of each assessment
SELECT s.StudentName, ms.AssessmentID, ms.VALUE 
FROM Mark_Students ms INNER JOIN Students s ON s.StudentID = ms.StudentID
ORDER BY ms.VALUE desc

--Infomation and mark of each students
SELECT * 
FROM Students s INNER JOIN Mark_Students ms ON s.StudentID = ms.StudentID

--Total assessment of each students
SELECT s.StudentName,ms.StudentID,COUNT(ms.AssessmentID) AS [Total Assessment]
FROM Mark_Students ms INNER JOIN Students s ON s.StudentID = ms.StudentID
WHERE ms.VALUE >= 5
GROUP BY ms.StudentID,s.StudentName

--Total assessment student done and total mark of them
SELECT s.StudentName,ms.StudentID,COUNT(ms.AssessmentID) AS [Number of Assessment],SUM(ms.VALUE) AS [Total Point of All Assessment]
FROM Mark_Students ms INNER JOIN Students s ON s.StudentID = ms.StudentID
WHERE ms.VALUE >= 5
GROUP BY ms.StudentID,s.StudentName
HAVING SUM(ms.VALUE) > 2

--Total mark all assessment of each students and mark value > 5
WITH t AS
(
SELECT s.StudentID, s.StudentName, ms.AssessmentID,SUM(ms.VALUE) AS [Value of Assessment]
FROM Students s, Mark_Students ms 
WHERE s.StudentID = ms.StudentID
GROUP BY s.StudentID,s.StudentName,ms.AssessmentID
)
SELECT t.StudentID, t.StudentName, t.[Value of Assessment]
FROM t, Assessment a 
WHERE t.AssessmentID = a.AssessmentID AND t.[Value of Assessment] > 5
ORDER BY t.[Value of Assessment] DESC

--Find subject in semester 3 and have name is ‘LAB211’
SELECT s.SubjectID,s.SubjectName
FROM Assessment a INNER JOIN Result r ON a.ResultID = r.ResultID
					INNER JOIN Subjects s ON a.SubjectID = s.SubjectID
WHERE a.SemesterID = 3 AND s.SubjectName = 'LAB211'
ORDER BY s.SubjectID

--Find group students have supervise is Sonnt
SELECT l.LectureName, s.StudentName
FROM Lecture l INNER JOIN Group_Students gs ON l.LectureID = gs.LectureID
				INNER JOIN Students s ON gs.StudentID = s.StudentID
WHERE l.LectureName = 'Sonnt'

--Find infomation of assessment in semester 3 and have id result is 3
SELECT *
FROM Assessment a1 INNER JOIN Assessment a2 ON a1.AssessmentID = a2.AssessmentID
WHERE a2.SemesterID = 3 AND a1.ResultID = 3

--Find student who study in autumn semester and lecture id = 4
SELECT stu.StudentID,stu.StudentName,s.SemesterName 
FROM Semester s INNER JOIN Assessment a ON s.SemesterID = a.SemesterID
				INNER JOIN Group_Students gs ON gs.AssessmentID = a.AssessmentID
				INNER JOIN Students stu ON stu.StudentID = gs.StudentID
WHERE s.SemesterName = 'Autumn' AND gs.LectureID = 4

--Find assessment of student who have highest value
SELECT TOP 1 s.StudentID,s.StudentName,ms.AssessmentID,ms.VALUE
FROM Students s INNER JOIN Mark_Students ms ON s.StudentID = ms.StudentID
ORDER BY ms.VALUE DESC

--TRIGGER : Delete mark of student and replace new mark
CREATE TRIGGER delete_mark ON Mark_Students
AFTER DELETE
AS
	BEGIN
		INSERT INTO Mark_Students (StudentID,AssessmentID,VALUE)
		VALUES (1,1,1)
	END

DELETE FROM Mark_Students
WHERE StudentID = 1

SELECT * FROM Mark_Students

--STORE PROCEDURE: Information and supervise of each students
CREATE PROCEDURE info_student AS
SELECT s.StudentID,s.StudentName,s.Gender,s.[Date of birth],s.Address,l.LectureName 
FROM Students s INNER JOIN Group_Students gs ON s.StudentID = gs.StudentID
				INNER JOIN Lecture l ON gs.LectureID = l.LectureID
ORDER BY s.[Date of birth]

EXEC info_student

--INDEX: Display infomation of mark students table
CREATE INDEX find_min_mark_student ON [Mark_Students](StudentID)
SELECT * FROM Mark_Students