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
    public partial class CreateQuestionBank : System.Web.UI.Page
    {
        public string conString = "Data Source=Arpan-Shukla;Initial Catalog=Survey_portal;Integrated Security=True";
       
        public Conn con = new Conn();


        protected void Page_Load(object sender, EventArgs e)
        {
           
            Fillsubject();
            //FillQuestion();
            ValidationSettings: UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
           
             if (CheckIfSubjectExists())
            {
               
                Response.Write("<script>alert('Subject Already Exists');</script>");
            }
            else
            {
       
                AddNewSubject();
            }
        }
        protected void SubmitButtonClick(object sender, EventArgs e)
        {
            if(CheckIfSameQuestionExists())
            {
                Response.Write("<script>alert('Question Already Exist');</script>");
            }
            else if (CheckIfSameOptionExists())
            {
                Response.Write("<script>alert('Options Already Exist');</script>");
            }
            else if(CheckTheAnswer())
            {
                AddQuestionAnswer();
               // Response.Write("<script>alert('Answer must match any of the options');</script>");
            }   
        }
       public void Fillsubject()
        {
            SqlCommand cmd4 = new SqlCommand("SELECT SubjectName from Subject ", con.con);
            SqlDataAdapter da4 = new SqlDataAdapter(cmd4);
            DataTable dt4 = new DataTable();
            da4.Fill(dt4);
            GridView1.DataSource = dt4;
            GridView1.DataBind();
        }

        //public void FillQuestion()
        //{
        //    SqlCommand cmd6 = new SqlCommand("SELECT SubjectID from Subject where SubjectName ='" + DropDownList1.SelectedValue.ToString() + "'", con.con);
        //    SqlDataAdapter da6 = new SqlDataAdapter(cmd6);
        //    DataTable dt6 = new DataTable();
        //    da6.Fill(dt6);
        //    string subjectid = dt6.Rows[0][0].ToString();


        //    SqlCommand cmd5 = new SqlCommand("SELECT Question,Option1,Option2,Option3,Option4 from Question where SubjectID ='"+ subjectid +"'", con.con);
        //    SqlDataAdapter da5 = new SqlDataAdapter(cmd5);
        //    DataTable dt5 = new DataTable();
        //    da5.Fill(dt5);
        //    GridView2.DataSource = dt5;
        //    GridView2.DataBind();
        //}

        bool CheckIfSubjectExists()
        {
           // Connection();
            
            SqlCommand cmd1 = new SqlCommand("SELECT SubjectName from Subject where SubjectName='" + TextBox1.Text.Trim() + "';", con.con);
        
            SqlDataAdapter da = new SqlDataAdapter(cmd1);
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
        void AddNewSubject()
        {  
                SqlCommand cmd2 = new SqlCommand("INSERT INTO Subject(SubjectName,AdminID) values(@SubjectName,@AdminID)", con.con);
                cmd2.Parameters.AddWithValue("@SubjectName", TextBox1.Text.Trim());
                cmd2.Parameters.AddWithValue("@AdminID", 2);
                cmd2.ExecuteNonQuery();
            //con.con.Close();
                Fillsubject();
                Response.Write("<script>alert('Subject added Successfully');</script>");
        }
        bool CheckIfSameQuestionExists()
        {
            //Connection();
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
            //FillQuestion();
        }
        bool CheckIfSameOptionExists()
        {
            //Response.Write("<script>alert('checkifsameoptionexists');</script>");
            
            if(Option1.Text.Trim() == Option2.Text.Trim() || Option1.Text.Trim() == Option3.Text.Trim() || Option1.Text.Trim() == Option4.Text.Trim() || Option2.Text.Trim() == Option3.Text.Trim() || Option2.Text.Trim() == Option4.Text.Trim()|| Option3.Text.Trim() == Option2.Text.Trim() || Option3.Text.Trim() == Option4.Text.Trim())
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
        /*bool CheckIFSameOptionsWithDifferentQuestonExists()
        {
            SqlConnection con = new SqlConnection(conString);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd3 = new SqlCommand("SELECT Option1,Option2,Option3,Option4 from Question where ='" + Option1.Text.Trim() + "" + Option2.Text.Trim() + "" + Option3.Text.Trim() + "" + Option4.Text.Trim() + "';", con);

            SqlDataAdapter da3 = new SqlDataAdapter(cmd3);
            DataTable dt3 = new DataTable();
            da3.Fill(dt3);

            if (dt3.Rows.Count >= 1)
            {
                return true;
            }
            else
            {
                return false;
            }

        } */
        void AddQuestionAnswer()
        {
            /*try
            {*/
            //Connection();
              SqlDataAdapter cmd2 = new SqlDataAdapter("SELECT SubjectID from Subject where SubjectName='" + DropDownList2.SelectedValue.ToString() + "'",con.con);
            DataTable dt1 = new DataTable();
            cmd2.Fill(dt1);
            
            SqlCommand cmd = new SqlCommand("SET IDENTITY_INSERT Question off INSERT INTO Question(Question,Option1,Option2,Option3,Option4,Answer,SubjectID,AdminID) values(@Question,@Option1,@Option2,@Option3,@Option4,@Answer,@SubjectID,@AdminID)", con.con); 

                cmd.Parameters.AddWithValue("@Question", SubjectQuestion.Text.ToString());
                cmd.Parameters.AddWithValue("@Option1", Option1.Text.ToString());
                cmd.Parameters.AddWithValue("@Option2", Option2.Text.ToString());
                cmd.Parameters.AddWithValue("@Option3", Option3.Text.ToString());
                cmd.Parameters.AddWithValue("@Option4", Option4.Text.ToString());
                cmd.Parameters.AddWithValue("@Answer", Answer.Text.ToString());
                cmd.Parameters.AddWithValue("@SubjectID", dt1.Rows[0].ToString());
                cmd.Parameters.AddWithValue("@AdminID", 2);
                cmd.ExecuteNonQuery();

            Response.Write("<script>alert('Added Successfully');</script>");
           
                //cmd.ExecuteNonQuery();

                //con.Close();

            /*}
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }*/
        }

       
    }
}



