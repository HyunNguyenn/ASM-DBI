CREATE TABLE Students(
   StudentID		INT			 NOT NULL,
   StudentName		VARCHAR (20) NOT NULL,
   Gender           BIT			 NOT NULL,
   [Date of birth]  DATE         NOT NULL,
   [Address]		VARCHAR(20)  NOT NULL,
   PRIMARY KEY (StudentID)
);

CREATE TABLE Lecture(
   LectureID		INT			 NOT NULL,
   LectureName		VARCHAR (20) NOT NULL,
   PRIMARY KEY (LectureID)
);

CREATE TABLE Subjects(
   SubjectID		INT			 NOT NULL,
   SubjectName		VARCHAR (20) NOT NULL,
   PRIMARY KEY (SubjectID),
);

CREATE TABLE Result(
   ResultID			INT				NOT NULL,
   [GRADE CATEGORY]	VARCHAR(50)		NOT NULL,
   [GRADE ITEM]		VARCHAR(50)		NOT NULL,
   [WEIGHT]			VARCHAR(50)		NOT NULL,
   PRIMARY KEY (ResultID),
);

CREATE TABLE Semester(
   SemesterID		INT			 NOT NULL,
   SemesterName		VARCHAR (20) NOT NULL,
   PRIMARY KEY (SemesterID),
);

CREATE TABLE Assessment(
   AssessmentID				INT			 NOT NULL,
   SubjectID				INT			 NOT NULL,
   SemesterID				INT			 NOT NULL,
   ResultID					INT			 NOT NULL,
   Category					VARCHAR(50)  NOT NULL,
   [Type]					VARCHAR(10)  NOT NULL,
   Part						INT			 NOT NULL,
   [Weight]					VARCHAR(10)  NOT NULL,
   [Completion Criteria]	VARCHAR(10)	 NOT NULL,
   Duration					VARCHAR(15)  NOT NULL,
   LO						INT,
   [Question Type]			TEXT		 NOT NULL,
   [No Question]			INT,
   [Knowledge and Skill]	VARCHAR(150) NOT NULL,
   [Grading Guide]			TEXT		 NOT NULL,
   Note						VARCHAR(2000),
   PRIMARY KEY (AssessmentID),
   FOREIGN KEY (SubjectID) REFERENCES Subjects (SubjectID),
   FOREIGN KEY (ResultID) REFERENCES Result (ResultID),
   FOREIGN KEY (SemesterID) REFERENCES Semester (SemesterID),
);

CREATE TABLE Group_Students(
   StudentID		INT			 NOT NULL,
   LectureID		INT			 NOT NULL,
   AssessmentID		INT			 NOT NULL,
   PRIMARY KEY (StudentID,LectureID),
   FOREIGN KEY (StudentID) REFERENCES Students (StudentID),
   FOREIGN KEY (LectureID) REFERENCES Lecture (LectureID),
   FOREIGN KEY (AssessmentID) REFERENCES Assessment (AssessmentID)
);

CREATE TABLE Mark_Students(
   StudentID		INT			 NOT NULL,
   AssessmentID		INT			 NOT NULL,
   [VALUE]			FLOAT		 NOT NULL,
   COMMENT			VARCHAR(200),
   PRIMARY KEY (StudentID),
   FOREIGN KEY (StudentID) REFERENCES Students (StudentID),
   FOREIGN KEY (AssessmentID) REFERENCES Assessment (AssessmentID),
);