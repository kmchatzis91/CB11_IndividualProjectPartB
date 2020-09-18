using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace konsChatzisProjPartB
{
	public class DBconnection
	{
		public DataTable CallParameterlessProcedure(string ProcedureName)
		{
			DataTable dt = new DataTable();
			string connectionstring = "Data Source=localhost;Initial Catalog=konsChatzisDB;Integrated Security=SSPI;";
			SqlConnection conn = new SqlConnection(connectionstring);
			try
			{
				conn.Open();
				SqlCommand cmd = new SqlCommand(ProcedureName, conn);
				cmd.CommandType = CommandType.StoredProcedure;
				cmd.ExecuteNonQuery();

				using (SqlDataAdapter sqlAdapter = new SqlDataAdapter(cmd))
				{
					sqlAdapter.Fill(dt);
				}
			}
			catch (Exception ex)
			{
				Helper.errorMessage();
				Console.WriteLine(ex.Message + "\n");
				Helper.pressAnyKey();
			}
			finally
			{
				if (conn != null)
				{
					conn.Close();
					conn.Dispose();
				}
			}
			return dt;

		} // public DataTable CallParameterlessProcedure(string ProcedureName) end //

		public void InsertCourseToDataBase(string Title, string Stream, string Type, DateTime StartDate, DateTime EndDate)
		{
			string connectionstring = "Data Source=localhost;Initial Catalog=konsChatzisDB;Integrated Security=SSPI;";
			SqlConnection conn = new SqlConnection(connectionstring);
			try
			{
				conn.Open();
				string ProcedureName = "insertCourse";
				SqlCommand cmd = new SqlCommand(ProcedureName, conn);
				cmd.CommandType = CommandType.StoredProcedure;
				cmd.Parameters.AddWithValue("@title", Title);
				cmd.Parameters.AddWithValue("@stream", Stream);
				cmd.Parameters.AddWithValue("@type", Type);
				cmd.Parameters.AddWithValue("@startdate", StartDate);
				cmd.Parameters.AddWithValue("@enddate", EndDate);
				cmd.ExecuteNonQuery();
			}
			catch (Exception ex)
			{
				Helper.errorMessage();
				Console.WriteLine(ex.Message + "\n");
				Helper.pressAnyKey();
			}
			finally
			{
				if (conn != null)
				{
					conn.Close();
					conn.Dispose();
				}
			}

		} // public void InsertCourseToDataBase(string Title, string Stream, string Type, DateTime StartDate, DateTime EndDate) end //

		public void InsertTrainerToDataBase(string FirstName, string LastName)
		{
			string connectionstring = "Data Source=localhost;Initial Catalog=konsChatzisDB;Integrated Security=SSPI;";
			SqlConnection conn = new SqlConnection(connectionstring);
			try
			{
				conn.Open();
				string ProcedureName = "insertTrainer";
				SqlCommand cmd = new SqlCommand(ProcedureName, conn);
				cmd.CommandType = CommandType.StoredProcedure;
				cmd.Parameters.AddWithValue("@firstname", FirstName);
				cmd.Parameters.AddWithValue("@lastname", LastName);
				cmd.ExecuteNonQuery();
			}
			catch (Exception ex)
			{
				Helper.errorMessage();
				Console.WriteLine(ex.Message + "\n");
				Helper.pressAnyKey();
			}
			finally
			{
				if (conn != null)
				{
					conn.Close();
					conn.Dispose();
				}
			}

		} // public void InsertTrainerToDataBase(string FirstName, string LastName) end //

		public void InsertStudentToDataBase(string FirstName, string LastName, DateTime DateOfBirth, int TuitionFees)
		{
			string connectionstring = "Data Source=localhost;Initial Catalog=konsChatzisDB;Integrated Security=SSPI;";
			SqlConnection conn = new SqlConnection(connectionstring);
			try
			{
				conn.Open();
				string ProcedureName = "insertStudent";
				SqlCommand cmd = new SqlCommand(ProcedureName, conn);
				cmd.CommandType = CommandType.StoredProcedure;
				cmd.Parameters.AddWithValue("@firstname", FirstName);
				cmd.Parameters.AddWithValue("@lastname", LastName);
				cmd.Parameters.AddWithValue("@dateofbirth", DateOfBirth);
				cmd.Parameters.AddWithValue("@tuitionfees", TuitionFees);
				cmd.ExecuteNonQuery();
			}
			catch (Exception ex)
			{
				Helper.errorMessage();
				Console.WriteLine(ex.Message + "\n");
				Helper.pressAnyKey();
			}
			finally
			{
				if (conn != null)
				{
					conn.Close();
					conn.Dispose();
				}
			}

		} // public void InsertStudentToDataBase(string FirstName, string LastName, DateTime DateOfBirth, int TuitionFees) end //

		public void InsertAssignmentToDataBase(string Title, string Description, DateTime SubDateTime, int PassingMark)
		{
			string connectionstring = "Data Source=localhost;Initial Catalog=konsChatzisDB;Integrated Security=SSPI;";
			SqlConnection conn = new SqlConnection(connectionstring);
			try
			{
				conn.Open();
				string ProcedureName = "insertAssignment";
				SqlCommand cmd = new SqlCommand(ProcedureName, conn);
				cmd.CommandType = CommandType.StoredProcedure;
				cmd.Parameters.AddWithValue("@title", Title);
				cmd.Parameters.AddWithValue("@description", Description);
				cmd.Parameters.AddWithValue("@subdatetime", SubDateTime);
				cmd.Parameters.AddWithValue("@passingmark", PassingMark);
				cmd.ExecuteNonQuery();
			}
			catch (Exception ex)
			{
				Helper.errorMessage();
				Console.WriteLine(ex.Message + "\n");
				Helper.pressAnyKey();
			}
			finally
			{
				if (conn != null)
				{
					conn.Close();
					conn.Dispose();
				}
			}

		} // public void InserAssignmentToDataBase(string Title, string Description, DateTime SubDateTime, int PassingMark) end //

		public void assignmentNcourseInsert(int AssignmentID, int CourseID)
		{
			string connectionstring = "Data Source=localhost;Initial Catalog=konsChatzisDB;Integrated Security=SSPI;";
			SqlConnection conn = new SqlConnection(connectionstring);
			try
			{
				conn.Open();
				string ProcedureName = "insertAssignmentCourseID";
				SqlCommand cmd = new SqlCommand(ProcedureName, conn);
				cmd.CommandType = CommandType.StoredProcedure;
				cmd.Parameters.AddWithValue("@assignmentid", AssignmentID);
				cmd.Parameters.AddWithValue("@courseid", CourseID);
				cmd.ExecuteNonQuery();
			}
			catch (Exception ex)
			{
				Helper.errorMessage();
				Console.WriteLine(ex.Message + "\n");
				Helper.pressAnyKey();
			}
			finally
			{
				if (conn != null)
				{
					conn.Close();
					conn.Dispose();
				}
			}

		} // public void assignmentNcourseInsert(int AssignmentID, int CourseID) end //

		public void studentNcourseInsert(int StudentID, int CourseID)
		{
			string connectionstring = "Data Source=localhost;Initial Catalog=konsChatzisDB;Integrated Security=SSPI;";
			SqlConnection conn = new SqlConnection(connectionstring);
			try
			{
				conn.Open();
				string ProcedureName = "insertStudentCourseID";
				SqlCommand cmd = new SqlCommand(ProcedureName, conn);
				cmd.CommandType = CommandType.StoredProcedure;
				cmd.Parameters.AddWithValue("@studentid", StudentID);
				cmd.Parameters.AddWithValue("@courseid", CourseID);
				cmd.ExecuteNonQuery();
			}
			catch (Exception ex)
			{
				Helper.errorMessage();
				Console.WriteLine(ex.Message + "\n");
				Helper.pressAnyKey();
			}
			finally
			{
				if (conn != null)
				{
					conn.Close();
					conn.Dispose();
				}
			}

		} // public void studentNcourseInsert(int StudentID, int CourseID) end //

		public void trainerNcourseInsert(int TrainerID, int CourseID)
		{
			string connectionstring = "Data Source=localhost;Initial Catalog=konsChatzisDB;Integrated Security=SSPI;";
			SqlConnection conn = new SqlConnection(connectionstring);
			try
			{
				conn.Open();
				string ProcedureName = "insertTrainerCourseID";
				SqlCommand cmd = new SqlCommand(ProcedureName, conn);
				cmd.CommandType = CommandType.StoredProcedure;
				cmd.Parameters.AddWithValue("@trainerid", TrainerID);
				cmd.Parameters.AddWithValue("@courseid", CourseID);
				cmd.ExecuteNonQuery();
			}
			catch (Exception ex)
			{
				Helper.errorMessage();
				Console.WriteLine(ex.Message + "\n");
				Helper.pressAnyKey();
			}
			finally
			{
				if (conn != null)
				{
					conn.Close();
					conn.Dispose();
				}
			}

		} // public void trainerNcourseInsert(int TrainerID, int CourseID) end //

	} // public class DBconnection end //

}  // namespace konsChatzisProjPartB end //



	

