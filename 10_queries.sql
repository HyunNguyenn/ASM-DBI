--diem cua tung bai assessment
SELECT s.StudentName, ms.AssessmentID, ms.VALUE 
FROM Mark_Students ms INNER JOIN Students s ON s.StudentID = ms.StudentID
ORDER BY ms.VALUE desc

--thong tin va diem cua tung hoc sinh
SELECT * 
FROM Students s INNER JOIN Mark_Students ms ON s.StudentID = ms.StudentID

--tong bai assessment cua tung hoc sinh
SELECT s.StudentName,ms.StudentID,COUNT(ms.AssessmentID) AS [Total Assessment]
FROM Mark_Students ms INNER JOIN Students s ON s.StudentID = ms.StudentID
WHERE ms.VALUE >= 5
GROUP BY ms.StudentID,s.StudentName

--so bai assessment hoc sinh da lam va tong diem cua ca 2 bai
SELECT s.StudentName,ms.StudentID,COUNT(ms.AssessmentID) AS [Number of Assessment],SUM(ms.VALUE) AS [Total Point of All Assessment]
FROM Mark_Students ms INNER JOIN Students s ON s.StudentID = ms.StudentID
WHERE ms.VALUE >= 5
GROUP BY ms.StudentID,s.StudentName
HAVING SUM(ms.VALUE) > 2

--tong diem cua assessment mooi hoc sinh va diem lon hon 5
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

--tim mon hoc nam trong ki 3 va co ten la 'LAB211'
SELECT s.SubjectID,s.SubjectName
FROM Assessment a INNER JOIN Result r ON a.ResultID = r.ResultID
					INNER JOIN Subjects s ON a.SubjectID = s.SubjectID
WHERE a.SemesterID = 3 AND s.SubjectName = 'LAB211'
ORDER BY s.SubjectID

--tim nhom hoc sinh co chu nghiem la Sonnt
SELECT l.LectureName, s.StudentName
FROM Lecture l INNER JOIN Group_Students gs ON l.LectureID = gs.LectureID
				INNER JOIN Students s ON gs.StudentID = s.StudentID
WHERE l.LectureName = 'Sonnt'

--tim ra thong tin cua assessment nam trong ki 3 va co id ket qua la 3
SELECT *
FROM Assessment a1 INNER JOIN Assessment a2 ON a1.AssessmentID = a2.AssessmentID
WHERE a2.SemesterID = 3 AND a1.ResultID = 3

--TRIGGER : xoa diem cua hoc sinh sau do thay bang diem moi
CREATE TRIGGER xoa_diem ON Mark_Students
AFTER DELETE
AS
	BEGIN
		INSERT INTO Mark_Students (StudentID,AssessmentID,VALUE)
		VALUES (1,1,1)
	END

DELETE FROM Mark_Students
WHERE StudentID = 1

SELECT * FROM Mark_Students

--STORE PROCEDURE: thong tin va chu nhiem cua tung hoc sinh
CREATE PROCEDURE info_student AS
SELECT s.StudentID,s.StudentName,s.Gender,s.[Date of birth],s.Address,l.LectureName 
FROM Students s INNER JOIN Group_Students gs ON s.StudentID = gs.StudentID
				INNER JOIN Lecture l ON gs.LectureID = l.LectureID
ORDER BY s.[Date of birth]

EXEC info_student

--INDEX