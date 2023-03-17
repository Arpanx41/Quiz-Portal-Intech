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
    public partial class GenrateQuizHome : System.Web.UI.Page
    {
        public Conn con = new Conn();
        protected void Page_Load(object sender, EventArgs e)
        {
            Date.Text = System.DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss");
        }

        protected void CreateQuizButton_Click1(object sender, EventArgs e)
        {

            if (CheckQuizName())
            {
                QuizNameTextBox.Text = null;
                DurationTextBox.Text = null;
                QuizMarksTextBox.Text = null;
                Response.Write("<script>alert('Quiz Already Exist');</script>");
            }
            else
            {
                AddQuizDetails();
            }
            // Response.Redirect("~/CreateQuiz.aspx");

        }
        bool CheckQuizName()
          {
              // Connection();
              SqlCommand cmd = new SqlCommand("SELECT QuizName from Quiz where QuizName='" + QuizNameTextBox.Text.Trim() + "';", con.con);

              SqlDataAdapter da = new SqlDataAdapter(cmd);
              DataTable dt = new DataTable();
              da.Fill(dt);

              if (dt.Rows.Count >= 1)
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
            SqlCommand cmd = new SqlCommand("INSERT INTO Quiz(QuizName,Duration,Total_mark,AdminID) values(@QuizName,@Duration,@Total_mark,@AdminID)", con.con);

            cmd.Parameters.AddWithValue("@QuizName", QuizNameTextBox.Text.ToString());
            //cmd.Parameters.AddWithValue("@Date", Date.Text.ToString());
            cmd.Parameters.AddWithValue("@Duration", DurationTextBox.Text.ToString());
            cmd.Parameters.AddWithValue("@Total_mark", QuizMarksTextBox.Text.ToString());
            cmd.Parameters.AddWithValue("@AdminID", 1);
            cmd.ExecuteNonQuery();
          
            Response.Write("<script>alert('QuizDetails Added successfully');</script>");
        }
      
        protected void AddQuestionButton_Click1(object sender, EventArgs e)
        {
            AddQuestionTOBank();
        }

        void AddQuestionTOBank()
        {

           // string str = string.Empty;
           // string strquesid = string.Empty;
           ///* foreach (GridViewRow gvrow in GridView1.Rows)
           // {
           //     CheckBox chk = (CheckBox)gvrow.FindControl("CheckBox1");
           //     if (chk != null && chk.Checked)
           //     {
           //         str += GridView1.DataKeys[gvrow.RowIndex].Value.ToString() + ',';
           //         strquesid += String.Format("{0}<br />", gvrow.Cells[1].Text);
           //     }
           // }*/
         
            SqlCommand cmd1 = new SqlCommand("SELECT QuizID from Quiz where QuizName='" + QuizNameTextBox.Text + "'", con.con);

            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);
            cmd1.ExecuteNonQuery();
            //Response.Write(dt1.Rows[0][0].ToString());
            //Response.Write(strquesid);
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                DataTable dt2 = new DataTable();
                //DataRow dr = null;
                //foreach (GridViewRow gvrow in GridView1.Rows)
                //{
                CheckBox chk = GridView1.Rows[i].FindControl("CheckBox1") as CheckBox;
                if (chk.Checked)
                    {
                       //DataTable dt2 = new DataTable();
                        dt2.Columns.Add("abc");
                        var dr1 = dt2.NewRow();
                        dr1["abc"] = GridView1.Rows[i].Cells[1].Text;
                        dt2.Rows.Add(dr1);
                        //str += GridView1.DataKeys[gvrow.RowIndex].Value.ToString() + ',';
                        //strquesid += (gvrow.Cells[1].Text);
                        SqlCommand cmd2 = new SqlCommand("INSERT INTO QuizQuestion (QuizID,QuestionID) values('" + dt1.Rows[0][0].ToString() + "','" + dt2.Rows[0][0].ToString() + "')", con.con);

                        cmd2.ExecuteNonQuery();
                    }
                }
            Response.Write("<script>alert('QuestionID Added ');</script>");
        }
    }
}
