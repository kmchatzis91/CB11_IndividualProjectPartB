USE [master]
GO
/****** Object:  Database [konsChatzisDB]    Script Date: 17-Sep-20 15:51:35 ******/
CREATE DATABASE [konsChatzisDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'konsChatzisDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\konsChatzisDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'konsChatzisDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\konsChatzisDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [konsChatzisDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [konsChatzisDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [konsChatzisDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [konsChatzisDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [konsChatzisDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [konsChatzisDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [konsChatzisDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [konsChatzisDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [konsChatzisDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [konsChatzisDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [konsChatzisDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [konsChatzisDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [konsChatzisDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [konsChatzisDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [konsChatzisDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [konsChatzisDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [konsChatzisDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [konsChatzisDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [konsChatzisDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [konsChatzisDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [konsChatzisDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [konsChatzisDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [konsChatzisDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [konsChatzisDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [konsChatzisDB] SET RECOVERY FULL 
GO
ALTER DATABASE [konsChatzisDB] SET  MULTI_USER 
GO
ALTER DATABASE [konsChatzisDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [konsChatzisDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [konsChatzisDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [konsChatzisDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [konsChatzisDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'konsChatzisDB', N'ON'
GO
ALTER DATABASE [konsChatzisDB] SET QUERY_STORE = OFF
GO
USE [konsChatzisDB]
GO
/****** Object:  Table [dbo].[assignmentNcourse]    Script Date: 17-Sep-20 15:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[assignmentNcourse](
	[assignmentNcourseID] [int] IDENTITY(1,1) NOT NULL,
	[AssignmentID] [int] NULL,
	[CourseID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[assignmentNcourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Assignments]    Script Date: 17-Sep-20 15:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assignments](
	[AssignmentID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](100) NULL,
	[Description] [varchar](100) NULL,
	[SubDateTime] [date] NULL,
	[PassingMark] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[AssignmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 17-Sep-20 15:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[CourseID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](100) NULL,
	[Stream] [varchar](100) NULL,
	[Type] [varchar](100) NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[studentNcourse]    Script Date: 17-Sep-20 15:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[studentNcourse](
	[studentNcourseID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [int] NULL,
	[CourseID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[studentNcourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 17-Sep-20 15:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[StudentID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](100) NULL,
	[LastName] [varchar](100) NULL,
	[DateOfBirth] [date] NULL,
	[TuitionFees] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trainerNcourse]    Script Date: 17-Sep-20 15:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trainerNcourse](
	[trainerNcourseID] [int] IDENTITY(1,1) NOT NULL,
	[TrainerID] [int] NULL,
	[CourseID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[trainerNcourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trainers]    Script Date: 17-Sep-20 15:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trainers](
	[TrainerID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](100) NULL,
	[LastName] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[TrainerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[assignmentNcourse] ON 

INSERT [dbo].[assignmentNcourse] ([assignmentNcourseID], [AssignmentID], [CourseID]) VALUES (1, 1, 8)
INSERT [dbo].[assignmentNcourse] ([assignmentNcourseID], [AssignmentID], [CourseID]) VALUES (2, 2, 7)
INSERT [dbo].[assignmentNcourse] ([assignmentNcourseID], [AssignmentID], [CourseID]) VALUES (3, 3, 6)
INSERT [dbo].[assignmentNcourse] ([assignmentNcourseID], [AssignmentID], [CourseID]) VALUES (4, 4, 5)
INSERT [dbo].[assignmentNcourse] ([assignmentNcourseID], [AssignmentID], [CourseID]) VALUES (5, 5, 4)
INSERT [dbo].[assignmentNcourse] ([assignmentNcourseID], [AssignmentID], [CourseID]) VALUES (6, 6, 3)
INSERT [dbo].[assignmentNcourse] ([assignmentNcourseID], [AssignmentID], [CourseID]) VALUES (7, 7, 2)
INSERT [dbo].[assignmentNcourse] ([assignmentNcourseID], [AssignmentID], [CourseID]) VALUES (8, 8, 1)
INSERT [dbo].[assignmentNcourse] ([assignmentNcourseID], [AssignmentID], [CourseID]) VALUES (9, 9, 10)
INSERT [dbo].[assignmentNcourse] ([assignmentNcourseID], [AssignmentID], [CourseID]) VALUES (10, 10, 9)
SET IDENTITY_INSERT [dbo].[assignmentNcourse] OFF
GO
SET IDENTITY_INSERT [dbo].[Assignments] ON 

INSERT [dbo].[Assignments] ([AssignmentID], [Title], [Description], [SubDateTime], [PassingMark]) VALUES (1, N'Project A', N'Create a Calculator app', CAST(N'2020-11-27' AS Date), 50)
INSERT [dbo].[Assignments] ([AssignmentID], [Title], [Description], [SubDateTime], [PassingMark]) VALUES (2, N'Project B', N'Create a Messenger app', CAST(N'2020-12-23' AS Date), 65)
INSERT [dbo].[Assignments] ([AssignmentID], [Title], [Description], [SubDateTime], [PassingMark]) VALUES (3, N'Project C', N'Create a Maps app', CAST(N'2020-10-12' AS Date), 75)
INSERT [dbo].[Assignments] ([AssignmentID], [Title], [Description], [SubDateTime], [PassingMark]) VALUES (4, N'Project D', N'Create a Bank app', CAST(N'2020-11-09' AS Date), 75)
INSERT [dbo].[Assignments] ([AssignmentID], [Title], [Description], [SubDateTime], [PassingMark]) VALUES (5, N'Project E', N'Analyze a given dataset', CAST(N'2021-01-10' AS Date), 50)
INSERT [dbo].[Assignments] ([AssignmentID], [Title], [Description], [SubDateTime], [PassingMark]) VALUES (6, N'Project F', N'Create a cognitive test', CAST(N'2021-02-15' AS Date), 55)
INSERT [dbo].[Assignments] ([AssignmentID], [Title], [Description], [SubDateTime], [PassingMark]) VALUES (7, N'Project G', N'Proposal', CAST(N'2021-03-20' AS Date), 60)
INSERT [dbo].[Assignments] ([AssignmentID], [Title], [Description], [SubDateTime], [PassingMark]) VALUES (8, N'Project H', N'Critical Synopsis', CAST(N'2021-04-25' AS Date), 60)
INSERT [dbo].[Assignments] ([AssignmentID], [Title], [Description], [SubDateTime], [PassingMark]) VALUES (9, N'TestAssignment1', N'TestAssignment1', CAST(N'2020-09-18' AS Date), 50)
INSERT [dbo].[Assignments] ([AssignmentID], [Title], [Description], [SubDateTime], [PassingMark]) VALUES (10, N'TestAssignment2', N'TestAssignment2', CAST(N'2020-09-18' AS Date), 75)
SET IDENTITY_INSERT [dbo].[Assignments] OFF
GO
SET IDENTITY_INSERT [dbo].[Courses] ON 

INSERT [dbo].[Courses] ([CourseID], [Title], [Stream], [Type], [StartDate], [EndDate]) VALUES (1, N'Coding BootCamp 11', N'C#', N'part-time', CAST(N'2020-09-15' AS Date), CAST(N'2021-03-15' AS Date))
INSERT [dbo].[Courses] ([CourseID], [Title], [Stream], [Type], [StartDate], [EndDate]) VALUES (2, N'Coding BootCamp 11', N'Java', N'part-time', CAST(N'2020-09-15' AS Date), CAST(N'2021-03-15' AS Date))
INSERT [dbo].[Courses] ([CourseID], [Title], [Stream], [Type], [StartDate], [EndDate]) VALUES (3, N'Coding BootCamp 11', N'Javascript', N'full-time', CAST(N'2020-09-15' AS Date), CAST(N'2020-12-15' AS Date))
INSERT [dbo].[Courses] ([CourseID], [Title], [Stream], [Type], [StartDate], [EndDate]) VALUES (4, N'Coding BootCamp 11', N'Python', N'full-time', CAST(N'2020-09-15' AS Date), CAST(N'2020-12-15' AS Date))
INSERT [dbo].[Courses] ([CourseID], [Title], [Stream], [Type], [StartDate], [EndDate]) VALUES (5, N'Neuroscience', N'Developmental Neuroscience', N'part-time', CAST(N'2020-12-15' AS Date), CAST(N'2021-06-15' AS Date))
INSERT [dbo].[Courses] ([CourseID], [Title], [Stream], [Type], [StartDate], [EndDate]) VALUES (6, N'Neuroscience', N'Research Methods and Programming', N'full-time', CAST(N'2020-12-15' AS Date), CAST(N'2021-06-15' AS Date))
INSERT [dbo].[Courses] ([CourseID], [Title], [Stream], [Type], [StartDate], [EndDate]) VALUES (7, N'Neuroscience', N'Statistical Models', N'part-time', CAST(N'2020-03-15' AS Date), CAST(N'2021-09-15' AS Date))
INSERT [dbo].[Courses] ([CourseID], [Title], [Stream], [Type], [StartDate], [EndDate]) VALUES (8, N'Neuroscience', N'Social Cognition and the Social Brain', N'full-time', CAST(N'2020-03-15' AS Date), CAST(N'2021-09-15' AS Date))
INSERT [dbo].[Courses] ([CourseID], [Title], [Stream], [Type], [StartDate], [EndDate]) VALUES (9, N'TestCourse1', N'TestCourse1', N'Full-Time', CAST(N'2020-09-18' AS Date), CAST(N'2020-09-18' AS Date))
INSERT [dbo].[Courses] ([CourseID], [Title], [Stream], [Type], [StartDate], [EndDate]) VALUES (10, N'TestCourse2', N'TestCourse2', N'Part-Time', CAST(N'2020-09-18' AS Date), CAST(N'2020-09-18' AS Date))
SET IDENTITY_INSERT [dbo].[Courses] OFF
GO
SET IDENTITY_INSERT [dbo].[studentNcourse] ON 

INSERT [dbo].[studentNcourse] ([studentNcourseID], [StudentID], [CourseID]) VALUES (1, 1, 8)
INSERT [dbo].[studentNcourse] ([studentNcourseID], [StudentID], [CourseID]) VALUES (2, 2, 7)
INSERT [dbo].[studentNcourse] ([studentNcourseID], [StudentID], [CourseID]) VALUES (3, 3, 6)
INSERT [dbo].[studentNcourse] ([studentNcourseID], [StudentID], [CourseID]) VALUES (4, 4, 5)
INSERT [dbo].[studentNcourse] ([studentNcourseID], [StudentID], [CourseID]) VALUES (5, 5, 4)
INSERT [dbo].[studentNcourse] ([studentNcourseID], [StudentID], [CourseID]) VALUES (6, 6, 3)
INSERT [dbo].[studentNcourse] ([studentNcourseID], [StudentID], [CourseID]) VALUES (7, 7, 2)
INSERT [dbo].[studentNcourse] ([studentNcourseID], [StudentID], [CourseID]) VALUES (8, 8, 1)
INSERT [dbo].[studentNcourse] ([studentNcourseID], [StudentID], [CourseID]) VALUES (9, 9, 1)
INSERT [dbo].[studentNcourse] ([studentNcourseID], [StudentID], [CourseID]) VALUES (10, 9, 2)
SET IDENTITY_INSERT [dbo].[studentNcourse] OFF
GO
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([StudentID], [FirstName], [LastName], [DateOfBirth], [TuitionFees]) VALUES (1, N'Vasileios', N'Papadopoulos', CAST(N'1996-10-17' AS Date), 9500)
INSERT [dbo].[Students] ([StudentID], [FirstName], [LastName], [DateOfBirth], [TuitionFees]) VALUES (2, N'Maria', N'Mayer', CAST(N'1990-07-30' AS Date), 4500)
INSERT [dbo].[Students] ([StudentID], [FirstName], [LastName], [DateOfBirth], [TuitionFees]) VALUES (3, N'Joel', N'Kostadinov', CAST(N'1996-05-22' AS Date), 6000)
INSERT [dbo].[Students] ([StudentID], [FirstName], [LastName], [DateOfBirth], [TuitionFees]) VALUES (4, N'Ellie', N'Miller', CAST(N'2000-03-05' AS Date), 16000)
INSERT [dbo].[Students] ([StudentID], [FirstName], [LastName], [DateOfBirth], [TuitionFees]) VALUES (5, N'Migi', N'Haveras', CAST(N'2001-12-23' AS Date), 6000)
INSERT [dbo].[Students] ([StudentID], [FirstName], [LastName], [DateOfBirth], [TuitionFees]) VALUES (6, N'Hawk', N'Eye', CAST(N'1999-06-14' AS Date), 7500)
INSERT [dbo].[Students] ([StudentID], [FirstName], [LastName], [DateOfBirth], [TuitionFees]) VALUES (7, N'Atreus', N'Kratoson', CAST(N'1998-11-09' AS Date), 5250)
INSERT [dbo].[Students] ([StudentID], [FirstName], [LastName], [DateOfBirth], [TuitionFees]) VALUES (8, N'Mary', N'Jane', CAST(N'2002-10-29' AS Date), 8450)
INSERT [dbo].[Students] ([StudentID], [FirstName], [LastName], [DateOfBirth], [TuitionFees]) VALUES (9, N'TestStudent1', N'TestStudent1', CAST(N'2020-09-18' AS Date), 1000)
INSERT [dbo].[Students] ([StudentID], [FirstName], [LastName], [DateOfBirth], [TuitionFees]) VALUES (10, N'TestStudent2', N'TestStudent2', CAST(N'2020-09-18' AS Date), 1500)
SET IDENTITY_INSERT [dbo].[Students] OFF
GO
SET IDENTITY_INSERT [dbo].[trainerNcourse] ON 

INSERT [dbo].[trainerNcourse] ([trainerNcourseID], [TrainerID], [CourseID]) VALUES (1, 1, 8)
INSERT [dbo].[trainerNcourse] ([trainerNcourseID], [TrainerID], [CourseID]) VALUES (2, 2, 7)
INSERT [dbo].[trainerNcourse] ([trainerNcourseID], [TrainerID], [CourseID]) VALUES (3, 3, 6)
INSERT [dbo].[trainerNcourse] ([trainerNcourseID], [TrainerID], [CourseID]) VALUES (4, 4, 5)
INSERT [dbo].[trainerNcourse] ([trainerNcourseID], [TrainerID], [CourseID]) VALUES (5, 5, 4)
INSERT [dbo].[trainerNcourse] ([trainerNcourseID], [TrainerID], [CourseID]) VALUES (6, 6, 3)
INSERT [dbo].[trainerNcourse] ([trainerNcourseID], [TrainerID], [CourseID]) VALUES (7, 7, 2)
INSERT [dbo].[trainerNcourse] ([trainerNcourseID], [TrainerID], [CourseID]) VALUES (8, 8, 1)
INSERT [dbo].[trainerNcourse] ([trainerNcourseID], [TrainerID], [CourseID]) VALUES (9, 9, 5)
INSERT [dbo].[trainerNcourse] ([trainerNcourseID], [TrainerID], [CourseID]) VALUES (10, 10, 6)
SET IDENTITY_INSERT [dbo].[trainerNcourse] OFF
GO
SET IDENTITY_INSERT [dbo].[Trainers] ON 

INSERT [dbo].[Trainers] ([TrainerID], [FirstName], [LastName]) VALUES (3, N'Aliki', N'Tsirozidi')
INSERT [dbo].[Trainers] ([TrainerID], [FirstName], [LastName]) VALUES (4, N'Ansgar', N'Endress')
INSERT [dbo].[Trainers] ([TrainerID], [FirstName], [LastName]) VALUES (5, N'Beatriz', N'Barth')
INSERT [dbo].[Trainers] ([TrainerID], [FirstName], [LastName]) VALUES (8, N'Dean', N'Peenutbe')
INSERT [dbo].[Trainers] ([TrainerID], [FirstName], [LastName]) VALUES (6, N'Eli', N'Wilde')
INSERT [dbo].[Trainers] ([TrainerID], [FirstName], [LastName]) VALUES (2, N'Georgios', N'Pasparakis')
INSERT [dbo].[Trainers] ([TrainerID], [FirstName], [LastName]) VALUES (7, N'Hanna', N'White')
INSERT [dbo].[Trainers] ([TrainerID], [FirstName], [LastName]) VALUES (1, N'Michalis', N'Chamilos')
INSERT [dbo].[Trainers] ([TrainerID], [FirstName], [LastName]) VALUES (9, N'TestTrainer1', N'TestTrainer1')
INSERT [dbo].[Trainers] ([TrainerID], [FirstName], [LastName]) VALUES (10, N'TestTrainer2', N'TestTrainer2')
SET IDENTITY_INSERT [dbo].[Trainers] OFF
GO
/****** Object:  Index [uniassignmentNcourse]    Script Date: 17-Sep-20 15:51:35 ******/
ALTER TABLE [dbo].[assignmentNcourse] ADD  CONSTRAINT [uniassignmentNcourse] UNIQUE NONCLUSTERED 
(
	[AssignmentID] ASC,
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uniAssignments]    Script Date: 17-Sep-20 15:51:35 ******/
ALTER TABLE [dbo].[Assignments] ADD  CONSTRAINT [uniAssignments] UNIQUE NONCLUSTERED 
(
	[Title] ASC,
	[Description] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uniCourses]    Script Date: 17-Sep-20 15:51:35 ******/
ALTER TABLE [dbo].[Courses] ADD  CONSTRAINT [uniCourses] UNIQUE NONCLUSTERED 
(
	[Title] ASC,
	[Stream] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [unistudentNcourse]    Script Date: 17-Sep-20 15:51:35 ******/
ALTER TABLE [dbo].[studentNcourse] ADD  CONSTRAINT [unistudentNcourse] UNIQUE NONCLUSTERED 
(
	[StudentID] ASC,
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uniStudents]    Script Date: 17-Sep-20 15:51:35 ******/
ALTER TABLE [dbo].[Students] ADD  CONSTRAINT [uniStudents] UNIQUE NONCLUSTERED 
(
	[FirstName] ASC,
	[LastName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [unitrainerNcourse]    Script Date: 17-Sep-20 15:51:35 ******/
ALTER TABLE [dbo].[trainerNcourse] ADD  CONSTRAINT [unitrainerNcourse] UNIQUE NONCLUSTERED 
(
	[TrainerID] ASC,
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uniTrainers]    Script Date: 17-Sep-20 15:51:35 ******/
ALTER TABLE [dbo].[Trainers] ADD  CONSTRAINT [uniTrainers] UNIQUE NONCLUSTERED 
(
	[FirstName] ASC,
	[LastName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[assignmentNcourse]  WITH CHECK ADD FOREIGN KEY([AssignmentID])
REFERENCES [dbo].[Assignments] ([AssignmentID])
GO
ALTER TABLE [dbo].[assignmentNcourse]  WITH CHECK ADD FOREIGN KEY([CourseID])
REFERENCES [dbo].[Courses] ([CourseID])
GO
ALTER TABLE [dbo].[studentNcourse]  WITH CHECK ADD FOREIGN KEY([CourseID])
REFERENCES [dbo].[Courses] ([CourseID])
GO
ALTER TABLE [dbo].[studentNcourse]  WITH CHECK ADD FOREIGN KEY([StudentID])
REFERENCES [dbo].[Students] ([StudentID])
GO
ALTER TABLE [dbo].[trainerNcourse]  WITH CHECK ADD FOREIGN KEY([CourseID])
REFERENCES [dbo].[Courses] ([CourseID])
GO
ALTER TABLE [dbo].[trainerNcourse]  WITH CHECK ADD FOREIGN KEY([TrainerID])
REFERENCES [dbo].[Trainers] ([TrainerID])
GO
/****** Object:  StoredProcedure [dbo].[assignedCoursesPerStudent]    Script Date: 17-Sep-20 15:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[assignedCoursesPerStudent]
as
begin
select S.StudentID, count(S.StudentID) as courseNum, S.FirstName, S.LastName from Students as S
join studentNcourse as sNc on S.StudentID = sNc.StudentID
join Courses as C on sNc.CourseID = C.CourseID
group by S.StudentID, S.FirstName, S.LastName, S.TuitionFees
order by S.StudentID
end
GO
/****** Object:  StoredProcedure [dbo].[assignmentsPerCourse]    Script Date: 17-Sep-20 15:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[assignmentsPerCourse]
as
begin
select C.CourseID, C.Title, C.Stream, 
A.AssignmentID, A.Title, A.Description from Courses as C
join assignmentNcourse as aNc on C.CourseID = aNc.CourseID
join Assignments as A on aNc.AssignmentID = A.AssignmentID
order by C.CourseID;
end
GO
/****** Object:  StoredProcedure [dbo].[assignmentsPerCoursePerStudent]    Script Date: 17-Sep-20 15:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[assignmentsPerCoursePerStudent]
as
begin
select S.StudentID, S.FirstName, S.LastName,
C.CourseID, C.Title, C.Stream,
A.AssignmentID, A.Title, A.Description from Students as S
join studentNcourse as sNc on S.StudentID = sNc.StudentID
join Courses as C on sNc.CourseID = C.CourseID
join assignmentNcourse as aNc on C.CourseID = aNc.CourseID
join Assignments as A on aNc.AssignmentID = A.AssignmentID
order by S.StudentID;
end
GO
/****** Object:  StoredProcedure [dbo].[insertAssignment]    Script Date: 17-Sep-20 15:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[insertAssignment] (@title varchar(100), @description varchar(100), @subdatetime date, @passingmark int)
as
begin
insert into Assignments (Title, Description, SubDateTime, PassingMark) values 
(@title, @description, @subdatetime, @passingmark)         
end
GO
/****** Object:  StoredProcedure [dbo].[insertAssignmentCourseID]    Script Date: 17-Sep-20 15:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[insertAssignmentCourseID] (@assignmentid int, @courseid int)
as
begin
insert into assignmentNcourse (AssignmentID, CourseID) values 
(@assignmentid, @courseid)          
end
GO
/****** Object:  StoredProcedure [dbo].[insertCourse]    Script Date: 17-Sep-20 15:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[insertCourse] (@title varchar(100), @stream varchar(100), @type varchar(100), @startdate date, @enddate date)
as
begin
insert into Courses (Title, Stream, Type, StartDate, EndDate) values 
(@title, @stream, @type, @startdate, @enddate)          
end
GO
/****** Object:  StoredProcedure [dbo].[insertStudent]    Script Date: 17-Sep-20 15:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[insertStudent] (@firstname varchar(100), @lastname varchar(100), @dateofbirth date, @tuitionfees int)
as
begin
insert into Students (FirstName , LastName, DateOfBirth, TuitionFees) values 
(@firstname, @lastname, @dateofbirth, @tuitionfees)          
end
GO
/****** Object:  StoredProcedure [dbo].[insertStudentCourseID]    Script Date: 17-Sep-20 15:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[insertStudentCourseID] (@studentid int, @courseid int)
as
begin
insert into studentNcourse (StudentID, CourseID) values 
(@studentid, @courseid)          
end
GO
/****** Object:  StoredProcedure [dbo].[insertTrainer]    Script Date: 17-Sep-20 15:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[insertTrainer] (@firstname varchar(100), @lastname varchar(100))
as
begin
insert into Trainers (FirstName, LastName) values 
(@firstname, @lastname)          
end
GO
/****** Object:  StoredProcedure [dbo].[insertTrainerCourseID]    Script Date: 17-Sep-20 15:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[insertTrainerCourseID] (@trainerid int, @courseid int)
as
begin
insert into trainerNcourse (TrainerID, CourseID) values 
(@trainerid, @courseid)          
end
GO
/****** Object:  StoredProcedure [dbo].[showAssignments]    Script Date: 17-Sep-20 15:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[showAssignments]
as
begin
select * from Assignments
order by AssignmentID
end
GO
/****** Object:  StoredProcedure [dbo].[showCourses]    Script Date: 17-Sep-20 15:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--show Courses
create procedure [dbo].[showCourses]
as
begin
select * from Courses
order by CourseID
end
GO
/****** Object:  StoredProcedure [dbo].[showStudents]    Script Date: 17-Sep-20 15:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[showStudents]
as
begin
select * from Students
order by StudentID
end
GO
/****** Object:  StoredProcedure [dbo].[showTrainers]    Script Date: 17-Sep-20 15:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--show Trainers
create procedure [dbo].[showTrainers]
as
begin
select * from Trainers
order by TrainerID
end
GO
/****** Object:  StoredProcedure [dbo].[studentsPerCourse]    Script Date: 17-Sep-20 15:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[studentsPerCourse]
as
begin
select C.CourseID, C.Title, C.Stream, 
S.StudentID, S.FirstName, S.LastName from Courses as C
join studentNcourse as sNc on C.CourseID = sNc.CourseID
join Students as S on sNc.StudentID = S.StudentID
order by C.CourseID;
end
GO
/****** Object:  StoredProcedure [dbo].[syntheticassignmentNcourse]    Script Date: 17-Sep-20 15:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[syntheticassignmentNcourse]
as
begin
insert into assignmentNcourse (AssignmentID, CourseID) values
(1,8), (2,7), (3,6), (4,5), (5,4), (6,3), (7,2), (8,1)
end
GO
/****** Object:  StoredProcedure [dbo].[syntheticAssignments]    Script Date: 17-Sep-20 15:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[syntheticAssignments]
as
begin
insert into Assignments (Title, Description, SubDateTime, PassingMark) values
('Project A', 'Create a Calculator app', '2020-11-27 23:59:00 PM', 50),
('Project B', 'Create a Messenger app', '2020-12-23 23:59:00 PM', 65),
('Project C', 'Create a Maps app', '2020-10-12 23:59:00 PM', 75),
('Project D', 'Create a Bank app', '2020-11-09 23:59:00 PM', 75),
('Project E', 'Analyze a given dataset', '2021-01-10 23:59:00 PM', 50),
('Project F', 'Create a cognitive test', '2021-02-15 23:59:00 PM', 55),
('Project G', 'Proposal', '2021-03-20 23:59:00 PM', 60),
('Project H', 'Critical Synopsis', '2021-04-25 23:59:00 PM', 60)
end
GO
/****** Object:  StoredProcedure [dbo].[syntheticCourses]    Script Date: 17-Sep-20 15:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[syntheticCourses]
as
begin
insert into Courses (Title, Stream, Type, StartDate, EndDate) values 
('Coding BootCamp 11', 'C#', 'part-time','2020-09-15', '2021-03-15'), 
('Coding BootCamp 11', 'Java', 'part-time', '2020-09-15', '2021-03-15'), 
('Coding BootCamp 11', 'Javascript', 'full-time', '2020-09-15', '2020-12-15'), 
('Coding BootCamp 11', 'Python', 'full-time', '2020-09-15', '2020-12-15'),
('Neuroscience', 'Developmental Neuroscience', 'part-time','2020-12-15', '2021-06-15'),
('Neuroscience', 'Research Methods and Programming', 'full-time','2020-12-15', '2021-06-15'),
('Neuroscience', 'Statistical Models', 'part-time','2020-03-15', '2021-09-15'),
('Neuroscience', 'Social Cognition and the Social Brain', 'full-time','2020-03-15', '2021-09-15')
end
GO
/****** Object:  StoredProcedure [dbo].[syntheticstudentNcourse]    Script Date: 17-Sep-20 15:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[syntheticstudentNcourse]
as
begin
insert into studentNcourse (StudentID, CourseID) values
(1,8), (2,7), (3,6), (4,5), (5,4), (6,3), (7,2), (8,1)
end
GO
/****** Object:  StoredProcedure [dbo].[syntheticStudents]    Script Date: 17-Sep-20 15:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[syntheticStudents]
as
begin
insert into Students (FirstName, LastName, DateOfBirth, TuitionFees) values 
('Vasileios', 'Papadopoulos', '1996-10-17', 9500),
('Maria', 'Mayer', '1990-07-30', 4500),
('Joel', 'Kostadinov', '1996-05-22', 6000),
('Ellie', 'Miller', '2000-03-05', 16000),
('Migi', 'Haveras', '2001-12-23', 6000),
('Hawk', 'Eye', '1999-06-14', 7500),
('Atreus', 'Kratoson', '1998-11-09', 5250),
('Mary', 'Jane', '2002-10-29', 8450)
end
GO
/****** Object:  StoredProcedure [dbo].[synthetictrainerNcourse]    Script Date: 17-Sep-20 15:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[synthetictrainerNcourse]
as
begin
insert into trainerNcourse (TrainerID, CourseID) values
(1,8), (2,7), (3,6), (4,5), (5,4), (6,3), (7,2), (8,1)
end
GO
/****** Object:  StoredProcedure [dbo].[syntheticTrainers]    Script Date: 17-Sep-20 15:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[syntheticTrainers]
as
begin
insert into Trainers (FirstName,LastName) values 
('Michalis','Chamilos'), 
('Georgios','Pasparakis'), 
('Aliki','Tsirozidi'), 
('Ansgar','Endress'),
('Beatriz','Barth'),
('Eli','Wilde'),
('Hanna','White'),
('Dean','Peenutbe')
end
GO
/****** Object:  StoredProcedure [dbo].[trainersPerCourse]    Script Date: 17-Sep-20 15:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[trainersPerCourse]
as
begin
select C.CourseID, C.Title, C.Stream,  
T.TrainerID, T.FirstName, T.LastName from Courses as C 
join trainerNcourse as tNc on C.CourseID = tNc.CourseID
join Trainers as T on tNc.TrainerID = T.TrainerID
order by C.CourseID;
end
GO
USE [master]
GO
ALTER DATABASE [konsChatzisDB] SET  READ_WRITE 
GO
