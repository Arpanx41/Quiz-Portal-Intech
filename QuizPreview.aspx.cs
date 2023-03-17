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
    public partial class QuizPreview : System.Web.UI.Page
    {
        public Conn con = new Conn();
       
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            TakeResponce();
        }

        void TakeResponce()
        {
            SqlCommand cmd1 = new SqlCommand("Select QuestionID from QuizQuestion where QuizID='" + TextBox1.Text.Trim() + "';", con.con);
            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);
            cmd1.ExecuteNonQuery();

            //SqlCommand cmd2 = new SqlCommand("Select CandidateID from Candidate where='" + TextBox1.Text.Trim() + "';", con.con);
            //SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            //DataTable dt1 = new DataTable();
            //da1.Fill(dt1);
            //cmd1.ExecuteNonQuery();

          
            foreach (DataListItem dli in DataList1.Items)
            {

                //RadioButton rab = DataList1.Rows[i].FindControl("DataList1") as RadioButton;
                //candidate response


                RadioButton rab1 = dli.FindControl("RB1") as RadioButton;
                RadioButton rab2 = dli.FindControl("RB2") as RadioButton;
                RadioButton rab3 = dli.FindControl("RB3") as RadioButton;
                RadioButton rab4 = dli.FindControl("RB4") as RadioButton;

                if (rab1.Checked)
                {
                  
                    Label Label2 = (Label)dli.FindControl("Option1Label");
                    string option1 = Label2.Text;
                    DataTable dt2 = new DataTable();
                    dt2.Columns.Add("abc");
                    var dr1 = dt2.NewRow();
                    dr1["abc"] = option1;
                    dt2.Rows.Add(dr1);

                 
                    //Response.Write(dt2.Rows[0][0].ToString());
                    SqlCommand cmd3 = new SqlCommand("Select Answer from Question where QuiestionID='" + dt1.Rows[0][0].ToString() + "';", con.con);

                    SqlDataAdapter da3 = new SqlDataAdapter(cmd3);
                    DataTable dt3 = new DataTable();
                    da3.Fill(dt3);

                    //SqlCommand cmd4 = new SqlCommand("Select CandidateID from Candidate")

                    //Response.Write(dt3.Rows[0][0].ToString());

                    SqlCommand cmd = new SqlCommand("INSERT INTO Response(QuizID,QuestionID,CandidateID,CandidateAnswer,Score) values(@QuizID,@QuestionID,@CandidateID,@CandidateAnswer,@Score)", con.con);

                    cmd.Parameters.AddWithValue("@QuizID", TextBox1.Text.ToString());
                    cmd.Parameters.AddWithValue("@QuestionID", dt1.Rows[0][0].ToString());
                    cmd.Parameters.AddWithValue("@CandidateID", Session["CandidateID"].ToString());
                    cmd.Parameters.AddWithValue("@CandidateAnswer", dt2.Rows[0][0].ToString());
                    if (dt2.Rows[0][0].ToString() == dt3.Rows[0][0].ToString())
                    {
                        cmd.Parameters.AddWithValue("@Score", 1);
                    }
                    else
                    {
                        cmd.Parameters.AddWithValue("@Score", 0);
                    }
                    cmd.ExecuteNonQuery();

                }

                else if (rab2.Checked)
                {
                    Label Label2 = (Label)dli.FindControl("Option2Label");
                    string option2 = Label2.Text;
                    DataTable dt2 = new DataTable();
                    dt2.Columns.Add("abc");
                    var dr1 = dt2.NewRow();
                    dr1["abc"] = option2;
                    dt2.Rows.Add(dr1);

                    SqlCommand cmd3 = new SqlCommand("Select Answer from Question where  QuiestionID='" + dt1.Rows[0][0].ToString() + "';", con.con);
                    SqlDataAdapter da3 = new SqlDataAdapter(cmd3);
                    DataTable dt3 = new DataTable();
                    da3.Fill(dt3);


                    SqlCommand cmd = new SqlCommand("INSERT INTO Response(QuizID,QuestionID,CandidateID,CandidateAnswer,Score) values(@QuizID,@QuestionID,@CandidateID,@CandidateAnswer,@Score)", con.con);

                    cmd.Parameters.AddWithValue("@QuizID", TextBox1.Text.ToString());
                    cmd.Parameters.AddWithValue("@QuestionID", dt1.Rows[0][0].ToString());
                    cmd.Parameters.AddWithValue("@CandidateID", Session["CandidateID"].ToString());
                    cmd.Parameters.AddWithValue("@CandidateAnswer", dt2.Rows[0][0].ToString());
                    if (dt2.Rows[0][0].ToString() == dt3.Rows[0][0].ToString())
                    {
                        cmd.Parameters.AddWithValue("@Score", 1);
                    }
                    else
                    {
                        cmd.Parameters.AddWithValue("@Score", 0);
                    }
                    cmd.ExecuteNonQuery();

                }

                else if (rab3.Checked)
                {

                    Label Label2 = (Label)dli.FindControl("Option3Label");
                    string option3 = Label2.Text;
                    DataTable dt2 = new DataTable();
                    dt2.Columns.Add("abc");
                    var dr1 = dt2.NewRow();
                    dr1["abc"] = option3;
                    dt2.Rows.Add(dr1);

                    SqlCommand cmd3 = new SqlCommand("Select Answer from Question where  QuiestionID='" + dt1.Rows[0][0].ToString() + "';", con.con);
                    SqlDataAdapter da3 = new SqlDataAdapter(cmd3);
                    DataTable dt3 = new DataTable();
                    da3.Fill(dt3);


                    SqlCommand cmd = new SqlCommand("INSERT INTO Response(QuizID,QuestionID,CandidateID,CandidateAnswer,Score) values(@QuizID,@QuestionID,@CandidateID,@CandidateAnswer,@Score)", con.con);

                    cmd.Parameters.AddWithValue("@QuizID", TextBox1.Text.ToString());
                    cmd.Parameters.AddWithValue("@QuestionID", dt1.Rows[0][0].ToString());
                    cmd.Parameters.AddWithValue("@CandidateID", Session["CandidateID"].ToString());
                    cmd.Parameters.AddWithValue("@CandidateAnswer", dt2.Rows[0][0].ToString());
                    if (dt2.Rows[0][0].ToString() == dt3.Rows[0][0].ToString())
                    {
                        cmd.Parameters.AddWithValue("@Score", 1);
                    }
                    else
                    {
                        cmd.Parameters.AddWithValue("@Score", 0);
                    }
                    cmd.ExecuteNonQuery();

                }

                else if (rab4.Checked)
                {
                    Label Label2 = (Label)dli.FindControl("Option4Label");
                    string option4 = Label2.Text;
                    DataTable dt2 = new DataTable();
                    dt2.Columns.Add("abc");
                    var dr1 = dt2.NewRow();
                    dr1["abc"] = option4;
                    dt2.Rows.Add(dr1);

                    SqlCommand cmd3 = new SqlCommand("Select Answer from Question where  QuiestionID='" + dt1.Rows[0][0].ToString() + "';", con.con);
                    SqlDataAdapter da3 = new SqlDataAdapter(cmd3);
                    DataTable dt3 = new DataTable();
                    da3.Fill(dt3);


                    SqlCommand cmd = new SqlCommand("INSERT INTO Response(QuizID,QuestionID,CandidateID,CandidateAnswer,Score) values(@QuizID,@QuestionID,@CandidateID,@CandidateAnswer,@Score)", con.con);

                    cmd.Parameters.AddWithValue("@QuizID", TextBox1.Text.ToString());
                    cmd.Parameters.AddWithValue("@QuestionID", dt1.Rows[0][0].ToString());
                    cmd.Parameters.AddWithValue("@CandidateID", Session["CandidateID"].ToString());
                    cmd.Parameters.AddWithValue("@CandidateAnswer", dt2.Rows[0][0].ToString());
                    if (dt2.Rows[0][0].ToString() == dt3.Rows[0][0].ToString())
                    {
                        cmd.Parameters.AddWithValue("@Score", 1);
                    }
                    else
                    {
                        cmd.Parameters.AddWithValue("@Score", 0);
                    }
                    cmd.ExecuteNonQuery();

                }

                else
                {
                    //    DataTable dt2 = new DataTable();
                    //    dt2.Columns.Add("abc");
                    //    var dr1 = dt2.NewRow();
                    //    dr1["abc"] = DataList1.SelectedValue.ToString();
                    //    dt2.Rows.Add(dr1);

                    //SqlCommand cmd3 = new SqlCommand("Select Answer from Question where QuestionID='" + dt1.Rows[0][0].ToString() + "';", con.con);
                    //SqlDataAdapter da3 = new SqlDataAdapter(cmd3);
                    //DataTable dt3 = new DataTable();
                    //da3.Fill(dt3);
                    //Session["CandidateID"].ToString()
                    Response.Write("<script>alert('you are in else');</script>");
                    SqlCommand cmd = new SqlCommand("INSERT INTO Response(QuizID,QuestionID,CandidateID,Score) values(@QuizID,@QuestionID,@CandidateID,@Score)", con.con);

                    cmd.Parameters.AddWithValue("@QuizID", TextBox1.Text.ToString());
                    cmd.Parameters.AddWithValue("@QuestionID", dt1.Rows[0][0].ToString());
                    cmd.Parameters.AddWithValue("@CandidateID",1);
                   // cmd.Parameters.AddWithValue("@CandidateAnswer", null);
                    cmd.Parameters.AddWithValue("@Score", 0);
                    cmd.ExecuteNonQuery();
                }

                //cmd.Parameters.AddWithValue("@Total_mark", QuizMarksTextBox.Text.ToString());
                //cmd.Parameters.AddWithValue("@AdminID", 1);
              
            }
            Response.Write("<script>alert('Response Added');</script>");
        }
       
    }
}