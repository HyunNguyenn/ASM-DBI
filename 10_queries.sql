--ORDER BY
SELECT * 
FROM Mark_Students ms 
ORDER BY ms.VALUE desc

--INNER JOIN
SELECT * 
FROM Students s INNER JOIN Mark_Students ms ON s.StudentID = ms.StudentID

--AGGREGATE FUNCTIONS
SELECT s.StudentName,ms.StudentID,COUNT(ms.AssessmentID) AS [Total Assessment]
FROM Mark_Students ms INNER JOIN Students s ON s.StudentID = ms.StudentID
WHERE ms.VALUE >= 5
GROUP BY ms.StudentID,s.StudentName

--GROUP BY and HAVING
SELECT s.StudentName,ms.StudentID,COUNT(ms.AssessmentID) AS [Number of Assessment],SUM(ms.VALUE) AS [Total Point of All Assessment]
FROM Mark_Students ms INNER JOIN Students s ON s.StudentID = ms.StudentID
WHERE ms.VALUE >= 5
GROUP BY ms.StudentID,s.StudentName
HAVING SUM(ms.VALUE) > 2

--SUB-QUERY AS A RELATION
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
--SUB-QUERY in the WHERE clause