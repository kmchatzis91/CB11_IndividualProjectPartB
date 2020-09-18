--create database konsChatzisDB;
use konsChatzisDB;

----------     Create all tables    ----------

--Courses
create table Courses 
(
CourseID int not null primary key identity (1,1),
Title varchar(100),
Stream varchar(100),
Type varchar(100),
StartDate date,
EndDate date,
constraint uniCourses unique (Title, Stream)
);

--Trainers
create table Trainers 
(
TrainerID int not null primary key identity (1,1),
FirstName varchar(100),
LastName varchar(100),
constraint uniTrainers unique (FirstName, LastName)
);

--Students
create table Students 
(
StudentID int not null primary key identity (1,1),
FirstName varchar(100),
LastName varchar(100),
DateOfBirth date,
TuitionFees int,
constraint uniStudents unique (FirstName, LastName)
);

--Assignments
create table Assignments 
(
AssignmentID int not null primary key identity (1,1),
Title varchar(100),
Description varchar(100),
SubDateTime date,
PassingMark int,
constraint uniAssignments unique (Title, Description)
);

--trainerNcourse
create table trainerNcourse 
(
trainerNcourseID int not null primary key identity (1,1),
TrainerID int,
CourseID int,
constraint unitrainerNcourse unique (TrainerID, CourseID),
foreign key (TrainerID) references Trainers(TrainerID),
foreign key (CourseID) references Courses(CourseID)
);

--studentNcourse
create table studentNcourse 
(
studentNcourseID int not null primary key identity (1,1),
StudentID int,
CourseID int,
constraint unistudentNcourse unique (StudentID, CourseID),
foreign key (StudentID) references Students(StudentID),
foreign key (CourseID) references Courses(CourseID)
);

--assignmentNcourse
create table assignmentNcourse
(
assignmentNcourseID int not null primary key identity (1,1),
AssignmentID int,
CourseID int,
constraint uniassignmentNcourse unique (AssignmentID, CourseID),
foreign key (AssignmentID) references Assignments(AssignmentID),
foreign key (CourseID) references Courses(CourseID)
);


