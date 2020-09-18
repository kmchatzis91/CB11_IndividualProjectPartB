using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace konsChatzisProjPartB
{
	class mainApp
	{
		#region all variables
		private string ProjectName = "\n\n - - - - - - - - - - > IndividualProject_Part_B < - - - - - - - - - - \n\n";
		private string AppName = "CreateYourOwnUniversityCampus.exe";
		private string AppDescription = "Here you can create your own Database, which can contain tables of courses, trainers, students and assignments!";
		private string userChoice1 = string.Empty;
		private string userChoice2 = string.Empty;
		private string userChoice3 = string.Empty;
		private bool continueORexit = true;
		private Courses course = new Courses();
		private Trainers trainer = new Trainers();
		private Students student = new Students();
		private Assignments assignment = new Assignments();
		private DBconnection dbConn = new DBconnection();
		private DataTable DtCourses = new DataTable();
		private DataTable DtTrainers = new DataTable();
		private DataTable DtStudents = new DataTable();
		private DataTable DtAssignments = new DataTable();
		private DataTable DTtrainersPerCourse = new DataTable();
		private DataTable DTstudentsPerCourse = new DataTable();
		private DataTable DTassignmentsPerCourse = new DataTable();
		private DataTable DTassignmentsPerCoursePerStudent = new DataTable();
		private DataTable DTassignedCoursesPerStudent = new DataTable();
		#endregion

		public void startApp()
		{
			welcomeMenu();
			addData(); // add data //		   
			matchData(); // match data //		 
			showData(); // show data //
			endMenu();

		} // public void startApp() end //

		private void endMenu()
		{
			Console.Clear();
			Helper.textColor("Y", "\n\n - - - - - - - - - - > The End < - - - - - - - - - - \n\n");
			Helper.pressAnyKey();

		} // private void endMenu() end //

		private void showData() 
		{
			while (userChoice3 != "0")
			{
				mainMenu3();
				userChoice3 = Console.ReadLine();
				Console.Clear();
				if (userChoice3 == "E" || userChoice3 == "e")
					Helper.exitApp();
				else if (userChoice3 == "1") // show Courses //
					showCourses();
				else if (userChoice3 == "2") // show Trainers //
					showTrainers();
				else if (userChoice3 == "3") // show Students //
					showStudents();
				else if (userChoice3 == "4") // show Assignments //
					showAssignments();
				else if (userChoice3 == "5") // show Trainers per Course //
					showTrainersPerCourse();
				else if (userChoice3 == "6") // show Students per Course //
					showStudentsPerCourse();
				else if (userChoice3 == "7") // show Assignments per Course //
					showAssignmentsPerCourse();
				else if (userChoice3 == "8") // show Assignments per Course per Student //
					showAssignmentsPerCoursePerStudent();
				else if (userChoice3 == "9") // show Assigned Courses per Student //
					showAssignedCoursesPerStudent();
				else
				{
					if (userChoice3 != "0")
						Helper.whileError();
				}
				Console.Clear();
			}

		} // private void showData() end //

		private void matchData() 
		{
			while (userChoice2 != "0")
			{
				mainMenu2();
				userChoice2 = Console.ReadLine();
				Console.Clear();
				if (userChoice2 == "E" || userChoice2 == "e")
					Helper.exitApp();
				else if (userChoice2 == "1") // match Trainer with Course //
					matchTrainerCourse();
				else if (userChoice2 == "2") // match Student with Course //
					matchStudentCourse();
				else if (userChoice2 == "3") // // match Assignment with Course // //
					matchAssignmentCourse();
				else
				{
					if (userChoice2 != "0")
						Helper.whileError();
				}
				Console.Clear();
			}

		} // private void matchData() end //

		private void addData() 
		{
			while (userChoice1 != "0")
			{
				mainMenu1();
				userChoice1 = Console.ReadLine();
				Console.Clear();
				if (userChoice1 == "E" || userChoice1 == "e")
					Helper.exitApp();
				else if (userChoice1 == "1") // add Courses //
					addCourses();
				else if (userChoice1 == "2") // add Trainers //
					addTrainers();
				else if (userChoice1 == "3") // add Students //
					addStudents();
				else if (userChoice1 == "4") // add Assignments //
					addAssignments();
				else
				{
					if (userChoice1 != "0")
						Helper.whileError();
				}
				Console.Clear();
			}

		} // private void addData() end //

		private void showAssignedCoursesPerStudent() 
		{
			DTassignedCoursesPerStudent = dbConn.CallParameterlessProcedure("assignedCoursesPerStudent");
			Helper.textColor("Y", "\n - - - - - Table of Assigned Courses per Student ([Student] ID - Amount of Courses - First Name - Last Name) - - - - - \n");
			Helper.printDataTable(DTassignedCoursesPerStudent);
			Console.WriteLine();
			Helper.pressAnyKey();

		} // private void showAssignedCoursesPerStudent() end //

		private void showAssignmentsPerCoursePerStudent() 
		{
			DTassignmentsPerCoursePerStudent = dbConn.CallParameterlessProcedure("assignmentsPerCoursePerStudent");
			Helper.textColor("Y", "\n - - - - - Table of Assignments per Course per Student ([Student] ID - First Name - Last Name [Course] ID - Title - Stream [Assignments] ID - Title - Description) - - - - - \n");
			Helper.printDataTable(DTassignmentsPerCoursePerStudent);
			Console.WriteLine();
			Helper.pressAnyKey();

		} // private void showAssignmentsPerCoursePerStudent() end //

		private void showAssignmentsPerCourse()
		{
			DTassignmentsPerCourse = dbConn.CallParameterlessProcedure("assignmentsPerCourse");
			Helper.textColor("Y", "\n - - - - - Table of Assignments per Course ([Course] ID - Title - Stream [Assignments] ID - Title - Description) - - - - - \n");
			Helper.printDataTable(DTassignmentsPerCourse);
			Console.WriteLine();
			Helper.pressAnyKey();

		} // private void showAssignmentsPerCourse() end //

		private void showStudentsPerCourse() 
		{
			DTstudentsPerCourse = dbConn.CallParameterlessProcedure("studentsPerCourse");
			Helper.textColor("Y", "\n - - - - - Table of Students per Course ([Course] ID - Title - Stream [Student] ID - First Name - Last Name) - - - - - \n");
			Helper.printDataTable(DTstudentsPerCourse);
			Console.WriteLine();
			Helper.pressAnyKey();

		} // private void showStudentsPerCourse() end //

		private void showTrainersPerCourse() 
		{
			DTtrainersPerCourse = dbConn.CallParameterlessProcedure("trainersPerCourse");
			Helper.textColor("Y", "\n - - - - - Table of Trainers per Course ([Course] ID - Title - Stream [Trainer] ID - First Name - Last Name) - - - - - \n");
			Helper.printDataTable(DTtrainersPerCourse);
			Console.WriteLine();
			Helper.pressAnyKey();

		} // private void ShowtrainersPerCourse() end //

		private void showAssignments() 
		{
			DtAssignments = dbConn.CallParameterlessProcedure("showAssignments");
			Helper.textColor("Y", "\n - - - - - Table of Assignments (ID - Title - Description - Submission Date - Passing Mark) - - - - - \n");
			Helper.printDataTable(DtAssignments);
			Console.WriteLine();
			Helper.pressAnyKey();

		} // private void showAssignments() end //

		private void showStudents() 
		{
			DtStudents = dbConn.CallParameterlessProcedure("showStudents");
			Helper.textColor("Y", "\n - - - - - Table of Students (ID - First Name - Last Name - Date of Birth - Tuition Fees) - - - - - \n");
			Helper.printDataTable(DtStudents);
			Console.WriteLine();
			Helper.pressAnyKey();

		} // private void showStudents() end //

		private void showTrainers() 
		{
			DtTrainers = dbConn.CallParameterlessProcedure("showTrainers");
			Helper.textColor("Y", "\n - - - - - Table of Trainers (ID - First Name - Last Name) - - - - - \n");
			Helper.printDataTable(DtTrainers);
			Console.WriteLine();
			Helper.pressAnyKey();

		} // private void showTrainers() end //

		private void showCourses() 
		{
			DtCourses = dbConn.CallParameterlessProcedure("showCourses");
			Helper.textColor("Y", "\n - - - - - Table of Courses (ID - Title - Stream - Type - Start Date - End Date) - - - - - \n");
			Helper.printDataTable(DtCourses);
			Console.WriteLine();
			Helper.pressAnyKey();

		} // private void showCourses() end //

		private void mainMenu3()
		{
			Helper.textColor("Y", "\n Your data is set! \n");
			Console.WriteLine("\n To display the table of Courses select 1 "); 
			Console.WriteLine("\n To display the table of Trainers select 2 ");  
			Console.WriteLine("\n To display the table of Students select 3 "); 
			Console.WriteLine("\n To display the table of Assignments select 4 "); 
			Console.WriteLine("\n To display Trainers per Course select 5 "); 
			Console.WriteLine("\n To display Students per Course select 6 ");
			Console.WriteLine("\n To display Assignments per Course select 7 ");
			Console.WriteLine("\n To display Assignments per Course per Student select 8 ");
			Console.WriteLine("\n To display the number of assigned Courses per Student select 9 ");
			Helper.textColor("G", "\n To stop displaying data select 0 ");
			Helper.textColor("R", "\n To exit the program write 'E' or 'e' ");
			Console.WriteLine("\n\n What would you like to do? (select your input and press 'Enter') -----> ");

		} // private void mainMenu3() end //

		private void matchAssignmentCourse()
		{	
			while (continueORexit)
			{
				Helper.textColor("B", "\n Here is the table of Assignments! \n");
				showAssignments();
				Helper.textColor("B", "\n Here is the table of Courses! \n");
				showCourses();
				Console.WriteLine("\n When you are ready give Assignment ID: ");
				int AssignmentID = Helper.validateGivenID();
				Console.WriteLine("\n When you are ready give Course ID: ");
				int CourseID = Helper.validateGivenID();
				dbConn.assignmentNcourseInsert(AssignmentID, CourseID);
				Console.WriteLine("\n Would you like to match more Courses with Assignments? \n");
				continueORexit = Helper.validateBool();
				Console.Clear();
			}
			continueORexit = true;
			Console.Clear();
			
		} // private void matchAssignmentCourse() end //

		private void matchStudentCourse()
		{
			while (continueORexit) 
			{
				Helper.textColor("B", "\n Here is the table of Students! \n");
				showStudents();
				Helper.textColor("B", "\n Here is the table of Courses! \n");
				showCourses();
				Console.WriteLine("\n When you are ready give Student ID: ");
				int StudentID = Helper.validateGivenID();
				Console.WriteLine("\n When you are ready give Course ID: ");
				int CourseID = Helper.validateGivenID();
				dbConn.studentNcourseInsert(StudentID, CourseID);
				Console.WriteLine("\n Would you like to match more Courses with Students? \n");
				continueORexit = Helper.validateBool();
				Console.Clear();
			}
			continueORexit = true;
			Console.Clear();

		} // private void matchStudentCourse() //

		private void matchTrainerCourse()
		{
			while (continueORexit)
			{
				Helper.textColor("B", "\n Here is the table of Trainers! \n");
				showTrainers();
				Helper.textColor("B", "\n Here is the table of Courses! \n");
				showCourses();
				Console.WriteLine("\n When you are ready give Trainer ID: ");
				int TrainerID = Helper.validateGivenID();
				Console.WriteLine("\n When you are ready give Course ID: ");
				int CourseID = Helper.validateGivenID();
				dbConn.trainerNcourseInsert(TrainerID, CourseID);
				Console.WriteLine("\n Would you like to match more Courses with Trainers? \n");
				continueORexit = Helper.validateBool();
				Console.Clear();
			}
			continueORexit = true;
			Console.Clear();

		} // private void matchTrainerCourse() end //

		private void mainMenu2()
		{
			Helper.textColor("Y", "\n Now it's time to match the available Courses with Trainers, Students and Assignments! \n");
			Console.WriteLine("\n To match Courses with Trainers select 1 ");
			Console.WriteLine("\n To match Courses with Students select 2 ");
			Console.WriteLine("\n To match Courses with Assignments select 3 ");
			Helper.textColor("G", "\n To stop matching data select 0 ");
			Helper.textColor("R", "\n To exit the program select 'E' or 'e' ");
			Console.WriteLine("\n\n What would you like to do? (select your input and press 'Enter') -----> ");

		} // private void mainMenu2() end //

		private void addAssignments()
		{
			while (continueORexit)
			{
				assignment.SetAssignments();
				Console.Clear();
				Console.WriteLine("\n Would you like to add more Assignments? \n");
				continueORexit = Helper.validateBool();
			}
			continueORexit = true;

		} // private void addAssignments() end //

		private void addStudents()
		{
			while (continueORexit)
			{
				student.SetStudents();
				Console.Clear();
				Console.WriteLine("\n Would you like to add more Students? \n");
				continueORexit = Helper.validateBool();
			}
			continueORexit = true;

		} // private void addStudents() end //

		private void addTrainers()
		{
			while (continueORexit)
			{
				trainer.SetTrainers();
				Console.Clear();
				Console.WriteLine("\n Would you like to add more Trainers? \n");
				continueORexit = Helper.validateBool();
			}
			continueORexit = true;

		} // private void addTrainers() end //

		private void addCourses() 
		{
			while (continueORexit) 
			{
				course.SetCourses();
				Console.Clear();
				Console.WriteLine("\n Would you like to add more Courses? \n");
				continueORexit = Helper.validateBool();
			}
			continueORexit = true;

		} // private void addCourses() end //

		private void mainMenu1()
		{
			Helper.textColor("Y","\n To proceed you need to add values in your tables! \n");
			Console.WriteLine("\n To add Courses select 1 ");
			Console.WriteLine("\n To add Trainers select 2 ");
			Console.WriteLine("\n To add Students select 3 ");
			Console.WriteLine("\n To add Assignments select 4 ");
			Helper.textColor("G","\n To stop adding data select 0 ");
			Helper.textColor("R","\n To exit the program select 'E' or 'e' ");
			Console.WriteLine("\n\n What would you like to do? (select your input and press 'Enter') -----> ");

		} // private void mainMenu1() end //

		private void welcomeMenu()
		{
			Helper.textColor("Y", ProjectName);
			Console.WriteLine(" Welcome to {0} ", AppName);
			Console.WriteLine(" {0} \n", AppDescription);
			Helper.pressAnyKey();

		} // private void welcomeMenu() end //

	} // class mainApp end //

} // namespace konsChatzisProjPartB end //
