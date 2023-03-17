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
    public partial class AdminAddQuestion : System.Web.UI.Page
    {
        public Conn con = new Conn();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void QuestionButton_Click(object sender, EventArgs e)
        {
            if (CheckIfSameQuestionExists())
            {
                Response.Write("<script>alert('Question Already Exist');</script>");
            }
            else if (CheckIfSameOptionExists())
            {
                Response.Write("<script>alert('Options Already Exist');</script>");
            }
            else if (CheckTheAnswer())
            {
                AddQuestionAnswer();
                // Response.Write("<script>alert('Answer must match any of the options');</script>");
            }
            SubjectQuestion.Text = null;
            Option1.Text = null;
            Option2.Text = null;
            Option3.Text = null;
            Option4.Text = null;
            Answer.Text = null;
        }

        bool CheckIfSameQuestionExists()
        {
           
            SqlCommand cmd = new SqlCommand("SELECT Question from Question where Question='" + SubjectQuestion.Text.Trim() + "';", con.con);

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

        bool CheckIfSameOptionExists()
        {
            if (Option1.Text.Trim() == Option2.Text.Trim() || Option1.Text.Trim() == Option3.Text.Trim() || Option1.Text.Trim() == Option4.Text.Trim() || Option2.Text.Trim() == Option3.Text.Trim() || Option2.Text.Trim() == Option4.Text.Trim() || Option3.Text.Trim() == Option2.Text.Trim() || Option3.Text.Trim() == Option4.Text.Trim())
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        bool CheckTheAnswer()
        {

            if (Answer.Text.Trim() == Option1.Text.Trim() || Answer.Text.Trim() == Option2.Text.Trim() || Answer.Text.Trim() == Option3.Text.Trim() || Answer.Text.Trim() == Option4.Text.Trim())
            {
                return true;
            }
            else
            {
                Response.Write("<script>alert('Answer must be within the options');</script>");
                return false;
            }
        }

        void AddQuestionAnswer()
        {
            try
            {
                
                SqlCommand cmd2 = new SqlCommand("SELECT SubjectID from Subject where SubjectName='" + SubjectDropDown.SelectedItem.ToString() + "'", con.con);


                SqlDataAdapter da1 = new SqlDataAdapter(cmd2);
                DataTable dt1 = new DataTable();
                da1.Fill(dt1);

                SqlCommand cmd = new SqlCommand("INSERT INTO Question(Question,Option1,Option2,Option3,Option4,Answer,SubjectID,AdminID) values(@Question,@Option1,@Option2,@Option3,@Option4,@Answer,@SubjectID,@AdminID)", con.con);

                cmd.Parameters.AddWithValue("@Question", SubjectQuestion.Text.ToString());
                cmd.Parameters.AddWithValue("@Option1", Option1.Text.ToString());
                cmd.Parameters.AddWithValue("@Option2", Option2.Text.ToString());
                cmd.Parameters.AddWithValue("@Option3", Option3.Text.ToString());
                cmd.Parameters.AddWithValue("@Option4", Option4.Text.ToString());
                cmd.Parameters.AddWithValue("@Answer", Answer.Text.ToString());
                cmd.Parameters.AddWithValue("@SubjectID", SubjectDropDown.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@AdminID", Session["AdminID"].ToString());
                cmd.ExecuteNonQuery();

                Response.Write("<script>alert('Question Added Successfully');</script>");

                
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

    }
}