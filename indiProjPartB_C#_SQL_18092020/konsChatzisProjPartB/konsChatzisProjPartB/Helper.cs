using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace konsChatzisProjPartB
{
	static class Helper
	{
		public static DateTime validateDateTime()
		{
			DateTime validDateTime = new DateTime();
			bool isValid = false;
			string input = string.Empty;
			while (!isValid)
			{
				input = Console.ReadLine();
				isValid = DateTime.TryParse(input, out validDateTime);
				if (!isValid)
					dtMessage();
			}
			return validDateTime;

		} // public static DateTime validateDateTime() end //

		public static string validateString()
		{
			string validString = string.Empty;
			bool isValid = false;
			while (!isValid)
			{
				validString = Console.ReadLine();
				if ((string.IsNullOrEmpty(validString)) || (string.IsNullOrWhiteSpace(validString)))
				{
					strMessage();
					isValid = false;
				}
				else
					isValid = true;
			}
			return validString;

		} // public static string validateString() end //

		public static bool validateBool()
		{
			bool isValid = false;
			string userChoice = string.Empty;
			bool userAnswer = false;
			yesORno();
			while (!isValid)
			{
				userChoice = Console.ReadLine();
				if ((userChoice == "y") || (userChoice == "Y"))
				{
					isValid = true;
					userAnswer = true;
				}
				else if ((userChoice == "n") || (userChoice == "N"))
				{
					isValid = true;
					userAnswer = false;
				}
				else
				{
					Console.WriteLine("\n Wrong input! \n");
					yesORno();
					isValid = false;
				}
			}
			return userAnswer;

		} // public static bool validateBool() //

		public static int validateMark()
		{
			int validMark = 0;
			bool isValid = false;
			string input = string.Empty;
			while (!isValid)
			{
				input = Console.ReadLine();
				isValid = Int32.TryParse(input, out validMark);
				if (!isValid)
				{
					intMessage();
					if ((isValid) && (validMark < 0))
						validMark = 0;
					else if ((isValid) && (validMark > 100))
						validMark = 100;
				}
				else
				{
					if ((isValid) && (validMark < 0))
						validMark = 0;
					else if ((isValid) && (validMark > 100))
						validMark = 100;
				}
			}
			return validMark;

		} // public static int validateMark() //

		public static int validateTuitionFees()
		{
			int validTF = 0;
			bool isValid = false;
			string input = string.Empty;
			while (!isValid)
			{
				input = Console.ReadLine();
				isValid = Int32.TryParse(input, out validTF);
				if (!isValid)
				{
					intMessage();
					if ((isValid) && (validTF < 0))
						validTF = 0;
					else if ((isValid) && (validTF > 50000))
						validTF = 50000;
				}
				else
				{
					if ((isValid) && (validTF < 0))
						validTF = 0;
					else if ((isValid) && (validTF > 50000))
						validTF = 50000;
				}
			}
			return validTF;

		} // public static int validateTuitionFees() end //

		public static int validateGivenID()
		{
			int validID = 0;
			bool isValid = false;
			string input = string.Empty;
			while (!isValid)
			{
				input = Console.ReadLine();
				isValid = Int32.TryParse(input, out validID);
				if (!isValid)
					intMessage();
			}
			return validID;

		} // public static int validateGivenID() end //

		public static void exitApp()
		{
			Console.Clear();
			Console.WriteLine("\n\n\n Thank you and goodbye :( Press any key to exit... ");
			Console.ReadKey();
			Environment.Exit(0);

		} // public static void exitApp() end //

		public static void pressAnyKey()
		{
			textColor("B", " Press any key to continue... ");
			Console.ReadKey();
			Console.Clear();

		} // public static void pressAnyKey() end //

		public static void yesORno()
		{
			textColor("G", " Write 'y' or 'Y' for YES... ");
			textColor("R", " Write 'n' or 'N' for NO... ");

		} // public static void yesORno() end //

		public static void errorMessage() 
		{
			Console.Clear();
			errorBeep();
			textColor("B", "\n Oops something went wrong :( \n");

		} // public static void errorMessage() end //

		public static void whileError() 
		{
			textColor("R", "\n\n\n The input you gave was not valid! Please select one of the given choices! \n");
			pressAnyKey();

		} // public static void whileError() end //

		public static void errorBeep() 
		{
			Console.Beep(349, 200);
			Console.Beep(330, 400);
			Console.Beep(311, 800);

		} // public static void errorBeep() end //

		public static void dtMessage()
		{
			textColor("R", " The Date you gave was not valid!!! ");
			textColor("G", " Please give a valid input (valid format: YYYY,MM,DD) ");

		} // public static void dtMessage() end //

		public static void strMessage()
		{
			textColor("R", " The input you gave was null, empty or white space!!! ");
			textColor("G", " Please give a valid input (message) ");

		} // public static void strMessage() end //

		public static void intMessage()
		{
			textColor("R", " The number you gave was not valid!!! ");
			textColor("G", " Please give a valid value (integer) ");

		} // public static void intMessage() end //

		public static void textColor(string color, string message)
		{
			if (color == "R" || color == "r")
			{
				Console.ForegroundColor = ConsoleColor.Red;
				Console.WriteLine(message);
			}
			else if (color == "G" || color == "g")
			{
				Console.ForegroundColor = ConsoleColor.Green;
				Console.WriteLine(message);
			}
			else if (color == "B" || color == "b")
			{
				Console.ForegroundColor = ConsoleColor.Cyan;
				Console.WriteLine(message);
			}
			else if (color == "Y" || color == "y")
			{
				Console.ForegroundColor = ConsoleColor.Yellow;
				Console.WriteLine(message);
			}
			else
			{
				Console.ForegroundColor = ConsoleColor.White;
				Console.WriteLine(message);
			}
			Console.ForegroundColor = ConsoleColor.White;

		} // public static void textColor(string color, string message) end //

		public static void printDataTable(DataTable dt)
		{
			foreach (DataRow row in dt.Rows)
			{
				foreach (var item in row.ItemArray)
				{
					Console.Write(" {0} - ", item);
				}
				Console.WriteLine();
			}

		} // public static void printDataTable(DataTable dt) end //

	} // static class Helper end //

} // namespace konsChatzisProjPartB end //





