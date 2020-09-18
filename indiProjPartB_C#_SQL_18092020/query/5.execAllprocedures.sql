use konsChatzisDB;

----------     Execute all procedures(23)    ----------

--synthetic data
execute syntheticCourses
execute syntheticTrainers
execute syntheticStudents
execute syntheticAssignments
execute synthetictrainerNcourse
execute syntheticstudentNcourse
execute syntheticassignmentNcourse

--show data
execute showCourses
execute showTrainers
execute showStudents
execute showAssignments
execute trainersPerCourse
execute studentsPerCourse
execute assignmentsPerCourse
execute assignmentsPerCoursePerStudent
execute assignedCoursesPerStudent

--user insert
execute insertCourse --(@title varchar(100), @stream varchar(100), @type varchar(100), @startdate date, @enddate date)
execute insertTrainer --(@firstname varchar(100), @lastname varchar(100))
execute insertStudent --(@firstname varchar(100), @lastname varchar(100), @dateofbirth date, @tuitionfees int)
execute insertAssignment --(@title varchar(100), @description varchar(100), @subdatetime date, @passingmark int)
execute insertTrainerCourseID --(@trainerid int, @courseid int)
execute insertStudentCourseID --(@studentid int, @courseid int)
execute insertAssignmentCourseID --(@assignmentid int, @courseid int)