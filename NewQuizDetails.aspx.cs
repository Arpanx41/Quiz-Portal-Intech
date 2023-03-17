using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Text.RegularExpressions;
using System.Data.SqlClient;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Configuration;


namespace Quiz_Intech
{
    public partial class NewQuizDetails : System.Web.UI.Page
    {

       // public string conString = "Data Source=Arpan-Shukla;Initial Catalog=Survey_portal;Integrated Security=True";

        public Conn con = new Conn();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateQuizButton_Click(object sender, EventArgs e)
        {
            if(CheckQuizName())
            {
                QuizNameTextBox.Text = null;
                DateTextBox.Text = null;
                DurationTextBox.Text = null;
                QuizMarksTextBox.Text = null;
                Response.Write("<script>alert('Quiz Already Exist');</script>"); 
            }
            else
            {
                AddQuizDetails();
                Response.Redirect("~/CreateQuiz.aspx");
            }
        }

        bool CheckQuizName()
        {
           // Connection();
            SqlCommand cmd = new SqlCommand("SELECT QuizName from Quiz where QuizName='" + QuizNameTextBox.Text.Trim() + "';",con.con);

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
        } 
        void AddQuizDetails()
        {
            //Connection();
            SqlCommand cmd = new SqlCommand("INSERT INTO Quiz(QuizName,Date,Duration,Total_mark,AdminID) values(@QuizName,@Date,@Duration,@Total_mark,@AdminID)", con.con);
           
            cmd.Parameters.AddWithValue("@QuizName", QuizNameTextBox.Text.ToString());
            cmd.Parameters.AddWithValue("@Date", DateTextBox.Text.ToString());
            cmd.Parameters.AddWithValue("@Duration", DurationTextBox.Text.ToString());
            cmd.Parameters.AddWithValue("@Total_mark", QuizMarksTextBox.Text.ToString());
            cmd.Parameters.AddWithValue("@AdminID",2);

            cmd.ExecuteNonQuery();

           
            Response.Write("<script>alert('QuizDetails Added successfully');</script>");
            
        }
    }
}