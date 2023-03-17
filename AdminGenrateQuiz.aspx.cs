using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Quiz_Intech
{
    public partial class AdminGenrateQuiz : System.Web.UI.Page
    {
        public Conn con = new Conn();

        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox4.Text = System.DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (CheckQuizName())
            {
                Response.Write("<script>alert('Quiz Already Exist... Try with another Quiz Name');</script>");
            }
            else
            {
                AddQuizDetails();
            }
        }

        bool CheckQuizName()
        {
           
            SqlCommand cmd = new SqlCommand("SELECT QuizName from Quiz where QuizName='" + TextBox1.Text.Trim() + "';", con.con);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count >= 1)
                return true;
            else
                return false;
        }

        void AddQuizDetails()
        {
           
            SqlCommand cmd = new SqlCommand("INSERT INTO Quiz(QuizName,CreatedDateTime,Duration,Total_mark,AdminID) values(@QuizName,@Date,@Duration,@Total_mark,@AdminID)", con.con);

            cmd.Parameters.AddWithValue("@QuizName", TextBox1.Text.ToString());
            cmd.Parameters.AddWithValue("@Total_mark", TextBox2.Text.ToString());
            cmd.Parameters.AddWithValue("@Duration", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Date", TextBox4.Text.ToString());
            cmd.Parameters.AddWithValue("@AdminID", Session["AdminID"].ToString());
            cmd.ExecuteNonQuery();

            Response.Write("<script>alert('Create Quiz Successfully');</script>");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
          
            SqlCommand cmd1 = new SqlCommand("SELECT QuizID from Quiz where QuizName='" + TextBox1.Text.ToString() + "'", con.con);

            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);

            cmd1.ExecuteNonQuery();

            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                
                DataTable dt2 = new DataTable();
                CheckBox chk = GridView1.Rows[i].FindControl("CheckBox1") as CheckBox;
                if (chk.Checked)
                {
                    dt2.Columns.Add("QuizID");
                    var dr1 = dt2.NewRow();
                    dr1["QuizID"] = GridView1.Rows[i].Cells[1].Text;
                    dt2.Rows.Add(dr1);

                    SqlCommand cmd2 = new SqlCommand("INSERT INTO QuizQuestion (QuizID,QuestionID) values('" + dt1.Rows[0][0].ToString() + "','" + dt2.Rows[0][0].ToString() + "')", con.con);

                    cmd2.ExecuteNonQuery();
                }
            }
            Response.Write("<script>alert('Question Added in Quiz');</script>");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AdminCResult.aspx");
        }
    }
}