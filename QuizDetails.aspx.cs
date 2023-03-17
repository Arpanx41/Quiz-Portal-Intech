using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Quiz_Intech
{
    public partial class QuizDetails : System.Web.UI.Page
    {
        public string conString = "Data Source=Arpan-Shukla;Initial Catalog=Survey_portal;Integrated Security=True";
        private System.Data.SqlClient.SqlConnection con;

        protected void CreateQuizButton_Click(object sender, EventArgs e)
        {
           /* if (CheckQuizName())
            {
                Response.Write("<script>alert('Quiz Exists');</script>");
            }*/
         
                AddQuizData();
              
                Response.Write("<script>alert('Quiz Details Added');</script>");
            
        }
      
       /* bool CheckQuizName()
        {
            Connection();
            SqlCommand cmd = new SqlCommand("SELECT QuizName from Quiz where QuizName='" + QuizNameTextBoxID.Text.Trim() + "';", con);

            SqlDataAdapter da1 = new SqlDataAdapter(cmd);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);

            if (dt1.Rows.Count >= 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        } */

        void Connection()
        {
            SqlConnection con = new SqlConnection(conString);
            if (con.State == System.Data.ConnectionState.Closed)
            {
                con.Open();
            }

        }
        void AddQuizData()
        {
           
            Connection();
            SqlCommand cmd = new SqlCommand("INSERT INTO Quiz(QuizName,CreatedDateTime,Duration,Total_mark,AdminID) values(@QuizName,@CreatedDateTime,@Duration,@Total_mark,@AdminID)", con);

            cmd.Parameters.AddWithValue("@QuizName", QuizNameTextBoxID.Text.ToString());
            cmd.Parameters.AddWithValue("@CreatedDateTime", DateTextBoxID.Text.ToString());
            cmd.Parameters.AddWithValue("@Duration", DurationTextBoxID.Text.ToString());
            cmd.Parameters.AddWithValue("@Total_mark", QuizMarksTextBoxID.Text.ToString());
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('QuizDetails Added successfully');</script>");
        }

    }
}