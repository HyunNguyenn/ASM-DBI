USE [Final_ASM]
GO
/****** Object:  Table [dbo].[Assessment]    Script Date: 7/19/2022 9:38:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assessment](
	[AssessmentID] [int] NOT NULL,
	[SubjectID] [int] NOT NULL,
	[SemesterID] [int] NOT NULL,
	[ResultID] [int] NOT NULL,
 CONSTRAINT [PK_Assessment] PRIMARY KEY CLUSTERED 
(
	[AssessmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group_Students]    Script Date: 7/19/2022 9:38:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group_Students](
	[StudentID] [int] NOT NULL,
	[LectureID] [int] NOT NULL,
	[AssessmentID] [int] NOT NULL,
 CONSTRAINT [PK_Group_Students] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC,
	[LectureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lecture]    Script Date: 7/19/2022 9:38:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecture](
	[LectureID] [int] NOT NULL,
	[LectureName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Lecture] PRIMARY KEY CLUSTERED 
(
	[LectureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mark_Students]    Script Date: 7/19/2022 9:38:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mark_Students](
	[StudentID] [int] NOT NULL,
	[AssessmentID] [int] NOT NULL,
	[VALUE] [float] NOT NULL,
	[COMMENT] [varchar](200) NULL,
 CONSTRAINT [PK_Mark_Students] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC,
	[AssessmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Result]    Script Date: 7/19/2022 9:38:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Result](
	[ResultID] [int] NOT NULL,
	[GRADE CATEGORY] [varchar](50) NOT NULL,
	[GRADE ITEM] [varchar](50) NOT NULL,
	[WEIGHT] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Result] PRIMARY KEY CLUSTERED 
(
	[ResultID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Semester]    Script Date: 7/19/2022 9:38:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Semester](
	[SemesterID] [int] NOT NULL,
	[SemesterName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Semester] PRIMARY KEY CLUSTERED 
(
	[SemesterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 7/19/2022 9:38:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[StudentID] [int] NOT NULL,
	[StudentName] [nvarchar](50) NOT NULL,
	[Gender] [bit] NOT NULL,
	[Date of birth] [date] NOT NULL,
	[Address] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 7/19/2022 9:38:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjects](
	[SubjectID] [int] NOT NULL,
	[SubjectName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Subjects] PRIMARY KEY CLUSTERED 
(
	[SubjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Assessment] ([AssessmentID], [SubjectID], [SemesterID], [ResultID]) VALUES (1, 1, 1, 1)
INSERT [dbo].[Assessment] ([AssessmentID], [SubjectID], [SemesterID], [ResultID]) VALUES (2, 2, 2, 1)
INSERT [dbo].[Assessment] ([AssessmentID], [SubjectID], [SemesterID], [ResultID]) VALUES (3, 4, 3, 1)
INSERT [dbo].[Assessment] ([AssessmentID], [SubjectID], [SemesterID], [ResultID]) VALUES (4, 3, 4, 1)
INSERT [dbo].[Assessment] ([AssessmentID], [SubjectID], [SemesterID], [ResultID]) VALUES (5, 2, 3, 2)
INSERT [dbo].[Assessment] ([AssessmentID], [SubjectID], [SemesterID], [ResultID]) VALUES (6, 1, 2, 2)
INSERT [dbo].[Assessment] ([AssessmentID], [SubjectID], [SemesterID], [ResultID]) VALUES (7, 3, 1, 2)
INSERT [dbo].[Assessment] ([AssessmentID], [SubjectID], [SemesterID], [ResultID]) VALUES (8, 1, 3, 2)
INSERT [dbo].[Assessment] ([AssessmentID], [SubjectID], [SemesterID], [ResultID]) VALUES (9, 2, 2, 3)
INSERT [dbo].[Assessment] ([AssessmentID], [SubjectID], [SemesterID], [ResultID]) VALUES (10, 4, 4, 4)
INSERT [dbo].[Assessment] ([AssessmentID], [SubjectID], [SemesterID], [ResultID]) VALUES (11, 3, 4, 4)
INSERT [dbo].[Assessment] ([AssessmentID], [SubjectID], [SemesterID], [ResultID]) VALUES (12, 2, 1, 4)
INSERT [dbo].[Assessment] ([AssessmentID], [SubjectID], [SemesterID], [ResultID]) VALUES (13, 3, 2, 3)
INSERT [dbo].[Assessment] ([AssessmentID], [SubjectID], [SemesterID], [ResultID]) VALUES (14, 2, 3, 3)
INSERT [dbo].[Assessment] ([AssessmentID], [SubjectID], [SemesterID], [ResultID]) VALUES (15, 1, 1, 3)
GO
INSERT [dbo].[Group_Students] ([StudentID], [LectureID], [AssessmentID]) VALUES (1, 1, 1)
INSERT [dbo].[Group_Students] ([StudentID], [LectureID], [AssessmentID]) VALUES (1, 3, 10)
INSERT [dbo].[Group_Students] ([StudentID], [LectureID], [AssessmentID]) VALUES (2, 1, 2)
INSERT [dbo].[Group_Students] ([StudentID], [LectureID], [AssessmentID]) VALUES (3, 1, 3)
INSERT [dbo].[Group_Students] ([StudentID], [LectureID], [AssessmentID]) VALUES (3, 4, 11)
INSERT [dbo].[Group_Students] ([StudentID], [LectureID], [AssessmentID]) VALUES (4, 2, 4)
INSERT [dbo].[Group_Students] ([StudentID], [LectureID], [AssessmentID]) VALUES (4, 3, 15)
INSERT [dbo].[Group_Students] ([StudentID], [LectureID], [AssessmentID]) VALUES (5, 2, 5)
INSERT [dbo].[Group_Students] ([StudentID], [LectureID], [AssessmentID]) VALUES (5, 4, 12)
INSERT [dbo].[Group_Students] ([StudentID], [LectureID], [AssessmentID]) VALUES (6, 2, 6)
INSERT [dbo].[Group_Students] ([StudentID], [LectureID], [AssessmentID]) VALUES (7, 3, 7)
INSERT [dbo].[Group_Students] ([StudentID], [LectureID], [AssessmentID]) VALUES (7, 4, 13)
INSERT [dbo].[Group_Students] ([StudentID], [LectureID], [AssessmentID]) VALUES (8, 3, 8)
INSERT [dbo].[Group_Students] ([StudentID], [LectureID], [AssessmentID]) VALUES (9, 2, 14)
INSERT [dbo].[Group_Students] ([StudentID], [LectureID], [AssessmentID]) VALUES (9, 4, 9)
GO
INSERT [dbo].[Lecture] ([LectureID], [LectureName]) VALUES (1, N'Sonnt')
INSERT [dbo].[Lecture] ([LectureID], [LectureName]) VALUES (2, N'Hailt')
INSERT [dbo].[Lecture] ([LectureID], [LectureName]) VALUES (3, N'Tuanvm')
INSERT [dbo].[Lecture] ([LectureID], [LectureName]) VALUES (4, N'chidp')
GO
INSERT [dbo].[Mark_Students] ([StudentID], [AssessmentID], [VALUE], [COMMENT]) VALUES (1, 1, 1, NULL)
INSERT [dbo].[Mark_Students] ([StudentID], [AssessmentID], [VALUE], [COMMENT]) VALUES (2, 2, 8, NULL)
INSERT [dbo].[Mark_Students] ([StudentID], [AssessmentID], [VALUE], [COMMENT]) VALUES (2, 10, 2, NULL)
INSERT [dbo].[Mark_Students] ([StudentID], [AssessmentID], [VALUE], [COMMENT]) VALUES (3, 3, 5, NULL)
INSERT [dbo].[Mark_Students] ([StudentID], [AssessmentID], [VALUE], [COMMENT]) VALUES (3, 11, 3, NULL)
INSERT [dbo].[Mark_Students] ([StudentID], [AssessmentID], [VALUE], [COMMENT]) VALUES (4, 4, 6, NULL)
INSERT [dbo].[Mark_Students] ([StudentID], [AssessmentID], [VALUE], [COMMENT]) VALUES (4, 15, 7, NULL)
INSERT [dbo].[Mark_Students] ([StudentID], [AssessmentID], [VALUE], [COMMENT]) VALUES (5, 5, 3, NULL)
INSERT [dbo].[Mark_Students] ([StudentID], [AssessmentID], [VALUE], [COMMENT]) VALUES (5, 12, 6, NULL)
INSERT [dbo].[Mark_Students] ([StudentID], [AssessmentID], [VALUE], [COMMENT]) VALUES (6, 6, 7, NULL)
INSERT [dbo].[Mark_Students] ([StudentID], [AssessmentID], [VALUE], [COMMENT]) VALUES (7, 7, 8, NULL)
INSERT [dbo].[Mark_Students] ([StudentID], [AssessmentID], [VALUE], [COMMENT]) VALUES (7, 13, 5, NULL)
INSERT [dbo].[Mark_Students] ([StudentID], [AssessmentID], [VALUE], [COMMENT]) VALUES (8, 8, 2, NULL)
INSERT [dbo].[Mark_Students] ([StudentID], [AssessmentID], [VALUE], [COMMENT]) VALUES (9, 9, 9, NULL)
GO
INSERT [dbo].[Result] ([ResultID], [GRADE CATEGORY], [GRADE ITEM], [WEIGHT]) VALUES (1, N'Quiz 1', N'Quiz 1', N'8.0%')
INSERT [dbo].[Result] ([ResultID], [GRADE CATEGORY], [GRADE ITEM], [WEIGHT]) VALUES (2, N'Quiz 2', N'Quiz 2', N'7.0%')
INSERT [dbo].[Result] ([ResultID], [GRADE CATEGORY], [GRADE ITEM], [WEIGHT]) VALUES (3, N'Activity', N'Activity', N'10%')
INSERT [dbo].[Result] ([ResultID], [GRADE CATEGORY], [GRADE ITEM], [WEIGHT]) VALUES (4, N'Group Assignment', N'Group Assignment', N'15.0%')
INSERT [dbo].[Result] ([ResultID], [GRADE CATEGORY], [GRADE ITEM], [WEIGHT]) VALUES (5, N'Group Project', N'Group Project', N'30.0%')
INSERT [dbo].[Result] ([ResultID], [GRADE CATEGORY], [GRADE ITEM], [WEIGHT]) VALUES (6, N'Final Exam', N'Final Exam', N'30.0%')
GO
INSERT [dbo].[Semester] ([SemesterID], [SemesterName]) VALUES (1, N'Winter')
INSERT [dbo].[Semester] ([SemesterID], [SemesterName]) VALUES (2, N'Summer')
INSERT [dbo].[Semester] ([SemesterID], [SemesterName]) VALUES (3, N'Spring')
INSERT [dbo].[Semester] ([SemesterID], [SemesterName]) VALUES (4, N'Autumn')
GO
INSERT [dbo].[Students] ([StudentID], [StudentName], [Gender], [Date of birth], [Address]) VALUES (1, N'Nguyen Duc Huy', 1, CAST(N'2002-10-22' AS Date), N'LangSon')
INSERT [dbo].[Students] ([StudentID], [StudentName], [Gender], [Date of birth], [Address]) VALUES (2, N'Le Hoang Thai', 1, CAST(N'2002-11-12' AS Date), N'HaNoi')
INSERT [dbo].[Students] ([StudentID], [StudentName], [Gender], [Date of birth], [Address]) VALUES (3, N'Phung Quy Quoc', 1, CAST(N'2002-05-11' AS Date), N'HaNoi')
INSERT [dbo].[Students] ([StudentID], [StudentName], [Gender], [Date of birth], [Address]) VALUES (4, N'Nguyen Hoang Hieu', 1, CAST(N'2002-06-06' AS Date), N'BacGiang')
INSERT [dbo].[Students] ([StudentID], [StudentName], [Gender], [Date of birth], [Address]) VALUES (5, N'Nguyen Huy Minh', 1, CAST(N'2002-07-15' AS Date), N'QuangNinh')
INSERT [dbo].[Students] ([StudentID], [StudentName], [Gender], [Date of birth], [Address]) VALUES (6, N'Nguyen Quang Minh', 1, CAST(N'2002-05-12' AS Date), N'ThaiNguyen')
INSERT [dbo].[Students] ([StudentID], [StudentName], [Gender], [Date of birth], [Address]) VALUES (7, N'Bui Viet Anh', 1, CAST(N'2002-01-07' AS Date), N'HaGiang')
INSERT [dbo].[Students] ([StudentID], [StudentName], [Gender], [Date of birth], [Address]) VALUES (8, N'Dao Duy Hung', 1, CAST(N'2002-04-18' AS Date), N'PhuTho')
INSERT [dbo].[Students] ([StudentID], [StudentName], [Gender], [Date of birth], [Address]) VALUES (9, N'Vu Xuan Truong', 1, CAST(N'2002-12-29' AS Date), N'HaNam')
GO
INSERT [dbo].[Subjects] ([SubjectID], [SubjectName]) VALUES (1, N'PRO192')
INSERT [dbo].[Subjects] ([SubjectID], [SubjectName]) VALUES (2, N'LAB211')
INSERT [dbo].[Subjects] ([SubjectID], [SubjectName]) VALUES (3, N'CSD201')
INSERT [dbo].[Subjects] ([SubjectID], [SubjectName]) VALUES (4, N'DBI202')
GO
ALTER TABLE [dbo].[Assessment]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Result] FOREIGN KEY([ResultID])
REFERENCES [dbo].[Result] ([ResultID])
GO
ALTER TABLE [dbo].[Assessment] CHECK CONSTRAINT [FK_Assessment_Result]
GO
ALTER TABLE [dbo].[Assessment]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Semester] FOREIGN KEY([SemesterID])
REFERENCES [dbo].[Semester] ([SemesterID])
GO
ALTER TABLE [dbo].[Assessment] CHECK CONSTRAINT [FK_Assessment_Semester]
GO
ALTER TABLE [dbo].[Assessment]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Subjects] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subjects] ([SubjectID])
GO
ALTER TABLE [dbo].[Assessment] CHECK CONSTRAINT [FK_Assessment_Subjects]
GO
ALTER TABLE [dbo].[Group_Students]  WITH CHECK ADD  CONSTRAINT [FK_Group_Students_Assessment1] FOREIGN KEY([AssessmentID])
REFERENCES [dbo].[Assessment] ([AssessmentID])
GO
ALTER TABLE [dbo].[Group_Students] CHECK CONSTRAINT [FK_Group_Students_Assessment1]
GO
ALTER TABLE [dbo].[Group_Students]  WITH CHECK ADD  CONSTRAINT [FK_Group_Students_Lecture] FOREIGN KEY([LectureID])
REFERENCES [dbo].[Lecture] ([LectureID])
GO
ALTER TABLE [dbo].[Group_Students] CHECK CONSTRAINT [FK_Group_Students_Lecture]
GO
ALTER TABLE [dbo].[Group_Students]  WITH CHECK ADD  CONSTRAINT [FK_Group_Students_Students] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Students] ([StudentID])
GO
ALTER TABLE [dbo].[Group_Students] CHECK CONSTRAINT [FK_Group_Students_Students]
GO
ALTER TABLE [dbo].[Mark_Students]  WITH CHECK ADD  CONSTRAINT [FK_Mark_Students_Assessment] FOREIGN KEY([AssessmentID])
REFERENCES [dbo].[Assessment] ([AssessmentID])
GO
ALTER TABLE [dbo].[Mark_Students] CHECK CONSTRAINT [FK_Mark_Students_Assessment]
GO
ALTER TABLE [dbo].[Mark_Students]  WITH CHECK ADD  CONSTRAINT [FK_Mark_Students_Students] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Students] ([StudentID])
GO
ALTER TABLE [dbo].[Mark_Students] CHECK CONSTRAINT [FK_Mark_Students_Students]
GO
/****** Object:  StoredProcedure [dbo].[info_student]    Script Date: 7/19/2022 9:38:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[info_student] AS
SELECT s.StudentID,s.StudentName,s.Gender,s.[Date of birth],s.Address,l.LectureName 
FROM Students s INNER JOIN Group_Students gs ON s.StudentID = gs.StudentID
				INNER JOIN Lecture l ON gs.LectureID = l.LectureID
ORDER BY s.[Date of birth]
GO
