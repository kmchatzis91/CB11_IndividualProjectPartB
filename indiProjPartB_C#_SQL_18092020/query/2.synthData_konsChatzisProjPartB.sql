use konsChatzisDB;

----------     Synthetic Data    ----------

--create synthetic data for Courses
create procedure syntheticCourses
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

--create synthetic data for Trainers
create procedure syntheticTrainers
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

--create synthetic data for Students
create procedure syntheticStudents
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

--create synthetic data for Assignments
create procedure syntheticAssignments
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

--create synthetic data for trainerNcourse
create procedure synthetictrainerNcourse
as
begin
insert into trainerNcourse (TrainerID, CourseID) values
(1,8), (2,7), (3,6), (4,5), (5,4), (6,3), (7,2), (8,1)
end

--create synthetic data for studentNcourse
create procedure syntheticstudentNcourse
as
begin
insert into studentNcourse (StudentID, CourseID) values
(1,8), (2,7), (3,6), (4,5), (5,4), (6,3), (7,2), (8,1)
end

--create synthetic data for assignmentNcourse
create procedure syntheticassignmentNcourse
as
begin
insert into assignmentNcourse (AssignmentID, CourseID) values
(1,8), (2,7), (3,6), (4,5), (5,4), (6,3), (7,2), (8,1)
end