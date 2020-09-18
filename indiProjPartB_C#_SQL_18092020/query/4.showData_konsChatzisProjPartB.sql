use konsChatzisDB;

----------     Show Data     ----------

--show Courses
create procedure showCourses
as
begin
select * from Courses
order by CourseID
end

--show Trainers
create procedure showTrainers
as
begin
select * from Trainers
order by TrainerID
end

--show Students
create procedure showStudents
as
begin
select * from Students
order by StudentID
end

--show Assignments
create procedure showAssignments
as
begin
select * from Assignments
order by AssignmentID
end

-- trainers per course
create procedure trainersPerCourse
as
begin
select C.CourseID, C.Title, C.Stream,  
T.TrainerID, T.FirstName, T.LastName from Courses as C 
join trainerNcourse as tNc on C.CourseID = tNc.CourseID
join Trainers as T on tNc.TrainerID = T.TrainerID
order by C.CourseID;
end

-- students per course
create procedure studentsPerCourse
as
begin
select C.CourseID, C.Title, C.Stream, 
S.StudentID, S.FirstName, S.LastName from Courses as C
join studentNcourse as sNc on C.CourseID = sNc.CourseID
join Students as S on sNc.StudentID = S.StudentID
order by C.CourseID;
end

-- assignments per course
create procedure assignmentsPerCourse
as
begin
select C.CourseID, C.Title, C.Stream, 
A.AssignmentID, A.Title, A.Description from Courses as C
join assignmentNcourse as aNc on C.CourseID = aNc.CourseID
join Assignments as A on aNc.AssignmentID = A.AssignmentID
order by C.CourseID;
end

-- assignments per course per student
create procedure assignmentsPerCoursePerStudent
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

--list of students that belong to more than one courses
create procedure assignedCoursesPerStudent
as
begin
select S.StudentID, count(S.StudentID) as courseNum, S.FirstName, S.LastName from Students as S
join studentNcourse as sNc on S.StudentID = sNc.StudentID
join Courses as C on sNc.CourseID = C.CourseID
group by S.StudentID, S.FirstName, S.LastName, S.TuitionFees
order by S.StudentID
end

