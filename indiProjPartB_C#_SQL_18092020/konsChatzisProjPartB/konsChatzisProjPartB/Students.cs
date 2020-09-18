using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace konsChatzisProjPartB
{
	class Students
	{
		private string FirstName { get; set; }
		private string LastName { get; set; }
		private DateTime DateOfBirth { get; set; }
		private int TuitionFees { get; set; }

		public Students()
		{
			
		} // 1st constructor Students end //

		public void SetStudents()
		{
			Console.Clear();
			Console.WriteLine(" Ok let's make the table of Students! ");
			Console.WriteLine("\n The information about each Student you need to give is: First Name, Last Name, Date of Birth and Tuition Fees. ");
			Helper.textColor("Y", " Pay attention to the following example --> Konstantinos, Chatzis, 1994,12,31, 10000 ");
			Console.WriteLine("\n Hint: Tuition Fees cannot be < 0 or > 50000! If you give Tuition Fees < 0 or > 50000, it will be automatically converted to 0 or 50000 accordingly! \n");
			Helper.pressAnyKey();
			Helper.textColor("G", "\n Please, insert data into table: Students ");
			Console.WriteLine("\n Give student's first name (ex. Soula): ");
			FirstName = Helper.validateString();
			Console.WriteLine("\n Give student's last name (ex. Vogatsikou): ");
			LastName = Helper.validateString();
			Console.WriteLine("\n Give student's date of birth (ex. 1993,08,28): ");
			DateOfBirth = Helper.validateDateTime();
			Console.WriteLine("\n Give student's tuition fees (ex. 9500): ");
			TuitionFees = Helper.validateTuitionFees();
			DBconnection dbconn = new DBconnection();
			dbconn.InsertStudentToDataBase(FirstName, LastName, DateOfBirth, TuitionFees);

		} // public void SetStudents() end //

	} // class Students end //

} // namespace konsChatzisProjPartB end //
