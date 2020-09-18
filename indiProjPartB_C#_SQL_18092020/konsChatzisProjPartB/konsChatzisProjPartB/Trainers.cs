using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace konsChatzisProjPartB
{
	class Trainers
	{
		private string FirstName { get; set; }
		private string LastName { get; set; }

		public Trainers()
		{

		} // 1st constructor Trainers end //

		public void SetTrainers()
		{
			Console.Clear();
			Console.WriteLine(" Ok let's make the table of Trainers! ");
			Console.WriteLine("\n The information about each Trainer you need to give is: First Name and Last Name. ");
			Helper.textColor("Y", " Pay attention to the following example --> Michalis, Chamilos \n");
			Helper.pressAnyKey();
			Helper.textColor("G", "\n Please, insert data into table: Trainers ");
			Console.WriteLine("\n Give trainer's first name (ex. Michalis): ");
			FirstName = Helper.validateString();
			Console.WriteLine("\n Give trainer's last name (ex. Chamilos): ");
			LastName = Helper.validateString();
			DBconnection dbconn = new DBconnection();
			dbconn.InsertTrainerToDataBase(FirstName, LastName);

		} // public void SetTrainers() end //

	} // class Trainers end //

} // namespace konsChatzisProjPartB end //
