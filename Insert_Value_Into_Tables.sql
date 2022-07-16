--Students 
INSERT INTO Students(StudentID,StudentName,Gender,[Date of birth],Address)
VALUES (1,'Nguyen Duc Huy',1,'2002-10-22','LangSon');
INSERT INTO Students(StudentID,StudentName,Gender,[Date of birth],Address)
VALUES (2,'Le Hoang Thai',1,'2002-11-12','HaNoi');
INSERT INTO Students(StudentID,StudentName,Gender,[Date of birth],Address)
VALUES (3,'Phung Quy Quoc',1,'2002-05-11','HaNoi');
INSERT INTO Students(StudentID,StudentName,Gender,[Date of birth],Address)
VALUES (4,'Nguyen Hoang Hieu',1,'2002-06-06','BacGiang');
INSERT INTO Students(StudentID,StudentName,Gender,[Date of birth],Address)
VALUES (5,'Nguyen Huy Minh',1,'2002-07-15','QuangNinh');
INSERT INTO Students(StudentID,StudentName,Gender,[Date of birth],Address)
VALUES (6,'Nguyen Quang Minh',1,'2002-05-12','ThaiNguyen');
INSERT INTO Students(StudentID,StudentName,Gender,[Date of birth],Address)
VALUES (7,'Bui Viet Anh',1,'2002-01-07','HaGiang');
INSERT INTO Students(StudentID,StudentName,Gender,[Date of birth],Address)
VALUES (8,'Dao Duy Hung',1,'2002-04-18','PhuTho');
INSERT INTO Students(StudentID,StudentName,Gender,[Date of birth],Address)
VALUES (9,'Vu Xuan Truong',1,'2002-12-29','HaNam');
--Lecture
INSERT INTO Lecture(LectureID,LectureName)
VALUES (1,'Sonnt');
INSERT INTO Lecture(LectureID,LectureName)
VALUES (2,'Hailt');
INSERT INTO Lecture(LectureID,LectureName)
VALUES (3,'Tuanvm');
INSERT INTO Lecture(LectureID,LectureName)
VALUES (4,'chidp');
--Semester
INSERT INTO Semester(SemesterID,SemesterName)
VALUES (1,'Winter');
INSERT INTO Semester(SemesterID,SemesterName)
VALUES (2,'Summer');
INSERT INTO Semester(SemesterID,SemesterName)
VALUES (3,'Spring');
INSERT INTO Semester(SemesterID,SemesterName)
VALUES (4,'Autumn');
--Result
INSERT INTO Result(ResultID,[GRADE CATEGORY],[GRADE ITEM],WEIGHT)
VALUES (1,'Quiz 1','Quiz 1','8.0%');
INSERT INTO Result(ResultID,[GRADE CATEGORY],[GRADE ITEM],WEIGHT)
VALUES (2,'Quiz 2','Quiz 2','7.0%');
INSERT INTO Result(ResultID,[GRADE CATEGORY],[GRADE ITEM],WEIGHT)
VALUES (3,'Activity','Activity','10%');
INSERT INTO Result(ResultID,[GRADE CATEGORY],[GRADE ITEM],WEIGHT)
VALUES (4,'Group Assignment','Group Assignment','15.0%');
INSERT INTO Result(ResultID,[GRADE CATEGORY],[GRADE ITEM],WEIGHT)
VALUES (5,'Group Project','Group Project','30.0%');
INSERT INTO Result(ResultID,[GRADE CATEGORY],[GRADE ITEM],WEIGHT)
VALUES (6,'Final Exam','Final Exam','30.0%');
--Subject
INSERT INTO Subjects(SubjectID,SubjectName)
VALUES (1,'PRO192');
INSERT INTO Subjects(SubjectID,SubjectName)
VALUES (2,'LAB211');
INSERT INTO Subjects(SubjectID,SubjectName)
VALUES (3,'CSD201');
INSERT INTO Subjects(SubjectID,SubjectName)
VALUES (4,'DBI202');
--Assessment
INSERT INTO Assessment(AssessmentID,SubjectID,SemesterID,ResultID)
VALUES(1,1,1,1);
INSERT INTO Assessment(AssessmentID,SubjectID,SemesterID,ResultID)
VALUES(2,2,2,1);
INSERT INTO Assessment(AssessmentID,SubjectID,SemesterID,ResultID)
VALUES(3,4,3,1);
INSERT INTO Assessment(AssessmentID,SubjectID,SemesterID,ResultID)
VALUES(4,3,4,1);
INSERT INTO Assessment(AssessmentID,SubjectID,SemesterID,ResultID)
VALUES(5,2,3,2);
INSERT INTO Assessment(AssessmentID,SubjectID,SemesterID,ResultID)
VALUES(6,1,2,2);
INSERT INTO Assessment(AssessmentID,SubjectID,SemesterID,ResultID)
VALUES(7,3,1,2);
INSERT INTO Assessment(AssessmentID,SubjectID,SemesterID,ResultID)
VALUES(8,1,3,2);
INSERT INTO Assessment(AssessmentID,SubjectID,SemesterID,ResultID)
VALUES(9,2,2,3);
INSERT INTO Assessment(AssessmentID,SubjectID,SemesterID,ResultID)
VALUES(10,4,4,4);
INSERT INTO Assessment(AssessmentID,SubjectID,SemesterID,ResultID)
VALUES(11,3,4,4);
INSERT INTO Assessment(AssessmentID,SubjectID,SemesterID,ResultID)
VALUES(12,2,1,4);
INSERT INTO Assessment(AssessmentID,SubjectID,SemesterID,ResultID)
VALUES(13,3,2,3);
INSERT INTO Assessment(AssessmentID,SubjectID,SemesterID,ResultID)
VALUES(14,2,3,3);
INSERT INTO Assessment(AssessmentID,SubjectID,SemesterID,ResultID)
VALUES(15,1,1,3);
--Group_Student
INSERT INTO Group_Students(StudentID,LectureID,AssessmentID)
VALUES (1,1,1);
INSERT INTO Group_Students(StudentID,LectureID,AssessmentID)
VALUES (2,1,2);
INSERT INTO Group_Students(StudentID,LectureID,AssessmentID)
VALUES (3,1,3);
INSERT INTO Group_Students(StudentID,LectureID,AssessmentID)
VALUES (4,2,4);
INSERT INTO Group_Students(StudentID,LectureID,AssessmentID)
VALUES (5,2,5);
INSERT INTO Group_Students(StudentID,LectureID,AssessmentID)
VALUES (6,2,6);
INSERT INTO Group_Students(StudentID,LectureID,AssessmentID)
VALUES (7,3,7);
INSERT INTO Group_Students(StudentID,LectureID,AssessmentID)
VALUES (8,3,8);
INSERT INTO Group_Students(StudentID,LectureID,AssessmentID)
VALUES (9,4,9);
INSERT INTO Group_Students(StudentID,LectureID,AssessmentID)
VALUES (1,3,10);
INSERT INTO Group_Students(StudentID,LectureID,AssessmentID)
VALUES (3,4,11);
INSERT INTO Group_Students(StudentID,LectureID,AssessmentID)
VALUES (5,4,12);
INSERT INTO Group_Students(StudentID,LectureID,AssessmentID)
VALUES (7,4,13);
INSERT INTO Group_Students(StudentID,LectureID,AssessmentID)
VALUES (9,2,14);
INSERT INTO Group_Students(StudentID,LectureID,AssessmentID)
VALUES (4,3,15);
--Mark_Student
INSERT INTO Mark_Students(StudentID,AssessmentID,VALUE)
VALUES (1,1,7);
INSERT INTO Mark_Students(StudentID,AssessmentID,VALUE)
VALUES (2,2,8);
INSERT INTO Mark_Students(StudentID,AssessmentID,VALUE)
VALUES (3,3,5);
INSERT INTO Mark_Students(StudentID,AssessmentID,VALUE)
VALUES (4,4,6);
INSERT INTO Mark_Students(StudentID,AssessmentID,VALUE)
VALUES (5,5,3);
INSERT INTO Mark_Students(StudentID,AssessmentID,VALUE)
VALUES (6,6,7);
INSERT INTO Mark_Students(StudentID,AssessmentID,VALUE)
VALUES (7,7,8);
INSERT INTO Mark_Students(StudentID,AssessmentID,VALUE)
VALUES (8,8,2);
INSERT INTO Mark_Students(StudentID,AssessmentID,VALUE)
VALUES (9,9,9);
INSERT INTO Mark_Students(StudentID,AssessmentID,VALUE)
VALUES (2,10,2);
INSERT INTO Mark_Students(StudentID,AssessmentID,VALUE)
VALUES (3,11,3);
INSERT INTO Mark_Students(StudentID,AssessmentID,VALUE)
VALUES (5,12,6);
INSERT INTO Mark_Students(StudentID,AssessmentID,VALUE)
VALUES (7,13,5);
INSERT INTO Mark_Students(StudentID,AssessmentID,VALUE)
VALUES (1,14,5);
INSERT INTO Mark_Students(StudentID,AssessmentID,VALUE)
VALUES (4,15,7);