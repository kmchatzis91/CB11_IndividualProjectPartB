use konsChatzisDB;

----------     User Insert     ----------

--insert into Courses
create procedure insertCourse (@title varchar(100), @stream varchar(100), @type varchar(100), @startdate date, @enddate date)
as
begin
insert into Courses (Title, Stream, Type, StartDate, EndDate) values 
(@title, @stream, @type, @startdate, @enddate)          
end

--insert into Trainers
create procedure insertTrainer (@firstname varchar(100), @lastname varchar(100))
as
begin
insert into Trainers (FirstName, LastName) values 
(@firstname, @lastname)          
end

--insert into Students
create procedure insertStudent (@firstname varchar(100), @lastname varchar(100), @dateofbirth date, @tuitionfees int)
as
begin
insert into Students (FirstName , LastName, DateOfBirth, TuitionFees) values 
(@firstname, @lastname, @dateofbirth, @tuitionfees)          
end

--insert into Assignments
create procedure insertAssignment (@title varchar(100), @description varchar(100), @subdatetime date, @passingmark int)
as
begin
insert into Assignments (Title, Description, SubDateTime, PassingMark) values 
(@title, @description, @subdatetime, @passingmark)         
end

--insert TrainerCourseID
create procedure insertTrainerCourseID (@trainerid int, @courseid int)
as
begin
insert into trainerNcourse (TrainerID, CourseID) values 
(@trainerid, @courseid)          
end

--insert StudentCourseID
create procedure insertStudentCourseID (@studentid int, @courseid int)
as
begin
insert into studentNcourse (StudentID, CourseID) values 
(@studentid, @courseid)          
end

--insert AssignmentCourseID
create procedure insertAssignmentCourseID (@assignmentid int, @courseid int)
as
begin
insert into assignmentNcourse (AssignmentID, CourseID) values 
(@assignmentid, @courseid)          
end