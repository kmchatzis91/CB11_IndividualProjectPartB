using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace konsChatzisProjPartB
{
	class Courses
	{
		private string Title { get; set; }
		private string Stream { get; set; }
		private string Type { get; set; }
		private DateTime StartDate { get; set; }
		private DateTime EndDate { get; set; }
		
		public Courses()
		{
			
		} // 1st constructor Courses end //

		public void SetCourses()
		{
			Console.Clear();
			Console.WriteLine(" Ok let's make the table of Courses! ");
			Console.WriteLine("\n The information about each Course you need to give is: Title, Stream, Type, Start Date and End Date. ");
			Helper.textColor("Y", " Pay attention to the following example --> Coding BootCamp 11, Java, Full-Time, 2020,07,15, 2020,09,15 \n");
			Helper.pressAnyKey();
			Helper.textColor("G", "\n Please, insert data into table: Courses ");
			Console.WriteLine("\n Give course's title (ex. Coding BootCamp 11): ");
			Title = Helper.validateString();
			Console.WriteLine("\n Give course's stream (ex. Java): ");
			Stream = Helper.validateString();
			Console.WriteLine("\n Give course's type (ex. Full-Time): ");
			Type = Helper.validateString();
			Console.WriteLine("\n Give course's start date (ex. 2020,07,15): ");
			StartDate = Helper.validateDateTime();
			Console.WriteLine("\n Give course's end date (ex. 2020,09,15): ");
			EndDate = Helper.validateDateTime();
			DBconnection dbconn = new DBconnection();
			dbconn.InsertCourseToDataBase(Title, Stream, Type, StartDate, EndDate);

		} // public void SetCourses() end //

	} // class Courses end //

} // namespace konsChatzisProjPartB end //
