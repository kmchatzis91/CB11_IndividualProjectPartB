using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace konsChatzisProjPartB
{
	class Assignments
	{
		private string Title { get; set; }
		private string Description { get; set; }
		private DateTime SubDateTime { get; set; }
		private int PassingMark { get; set; }

		public Assignments()
		{
			
		} // 1st constructor Assignment end //

		public void SetAssignments()
		{
			Console.Clear();
			Console.WriteLine(" Ok let's make the table of Assignments! ");
			Console.WriteLine("\n The information about each Assignment you need to give is: Title, Description, Submission Date, and Passing Mark. ");
			Helper.textColor("Y", " Pay attention to the following example --> Project A, Create an Email app, 2021,01,15, 65 ");
			Console.WriteLine("\n Hint: Passing Mark cannot be < 0 or > 100! If you give a Passing Mark < 0 or > 100, it will be automatically converted to 0 or 100 accordingly! \n");
			Helper.pressAnyKey();
			Helper.textColor("G", "\n Please, insert data into table: Assignments ");
			Console.WriteLine("\n Give assignment's title (ex. ProjectCB11): ");
			Title = Helper.validateString();
			Console.WriteLine("\n Give assignment's description (ex. Create a webpage): ");
			Description = Helper.validateString();
			Console.WriteLine("\n Give assignment's submission date (ex. 2020,07,27 23:59:00): ");
			SubDateTime = Helper.validateDateTime();
			Console.WriteLine("\n Give assignment's passing mark (ex. 55): ");
			PassingMark = Helper.validateMark();
			DBconnection dbconn = new DBconnection();
			dbconn.InsertAssignmentToDataBase(Title, Description, SubDateTime, PassingMark);

		} // public void SetAssignments() end //

	} // class Assignments end // 

} // namespace konsChatzisProjPartB //
