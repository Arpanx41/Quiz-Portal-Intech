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
	public partial class QuizCandidate1 : System.Web.UI.Page
	{
		public Conn con = new Conn();
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void SubmitButton_Click(object sender, EventArgs e)
		{
			TakeCandidateResponce();
		}
		void TakeCandidateResponce()
		{
			foreach (DataListItem dli in DataList1.Items)
			{
				RadioButton rab1 = dli.FindControl("RB1") as RadioButton;
				RadioButton rab2 = dli.FindControl("RB2") as RadioButton;
				RadioButton rab3 = dli.FindControl("RB3") as RadioButton;
				RadioButton rab4 = dli.FindControl("RB4") as RadioButton;

				Label LabelQID = (Label)dli.FindControl("QuestionIDLabel");
				string questionidst = LabelQID.Text;
				DataTable dt2 = new DataTable();
				dt2.Columns.Add("abc");
				var dr1 = dt2.NewRow();
				dr1["abc"] = questionidst;
				dt2.Rows.Add(dr1);


				SqlCommand cmd = new SqlCommand("INSERT INTO Response(QuizID,QuestionID,CandidateID,CandidateAnswer,Score) values(@QuizID,@QuestionID,@CandidateID,@CandidateAnswer,@Score)", con.con);

				cmd.Parameters.AddWithValue("@QuizID", DropDownList1.SelectedValue.ToString());
				cmd.Parameters.AddWithValue("@QuestionID", questionidst);
				cmd.Parameters.AddWithValue("@CandidateID", Session["CandidateID"].ToString());


				if (rab1.Checked)
				{
					Label Labelop1 = (Label)dli.FindControl("Option1Label");
					string option1st = Labelop1.Text;
					
					Label Labelans = (Label)dli.FindControl("AnswerLabel");
					string answerst = Labelans.Text;
					
					cmd.Parameters.AddWithValue("@CandidateAnswer", option1st);
					if (option1st == answerst)
					{
						cmd.Parameters.AddWithValue("@Score", 1);
					}
					else
					{
						cmd.Parameters.AddWithValue("@Score", 0);
					}
				}
				else if (rab2.Checked)
				{
					Label Labelop2 = (Label)dli.FindControl("Option2Label");
					string option2st = Labelop2.Text;
					
					Label Labelans = (Label)dli.FindControl("AnswerLabel");
					string answerst = Labelans.Text;
				
					cmd.Parameters.AddWithValue("@CandidateAnswer", option2st);
					if (option2st == answerst)
					{
						cmd.Parameters.AddWithValue("@Score", 1);
					}
					else
					{
						cmd.Parameters.AddWithValue("@Score", 0);
					}
				}

				else if (rab3.Checked)
				{
					Label Labelop3 = (Label)dli.FindControl("Option3Label");
					string option3st = Labelop3.Text;
					

					Label Labelans = (Label)dli.FindControl("AnswerLabel");
					string answerst = Labelans.Text;
					

					cmd.Parameters.AddWithValue("@CandidateAnswer", option3st);
					if (option3st == answerst)
					{
						cmd.Parameters.AddWithValue("@Score", 1);
					}
					else
					{
						cmd.Parameters.AddWithValue("@Score", 0);
					}
				}
				else if (rab4.Checked)
				{
					Label Labelop4 = (Label)dli.FindControl("Option4Label");
					string option4st = Labelop4.Text;
					

					Label Labelans = (Label)dli.FindControl("AnswerLabel");
					string answerst = Labelans.Text;
				

					cmd.Parameters.AddWithValue("@CandidateAnswer", option4st);
					if (option4st == answerst)
					{
						cmd.Parameters.AddWithValue("@Score", 1);
					}
					else
					{
						cmd.Parameters.AddWithValue("@Score", 0);
					}
				}
				else
				{
					cmd.Parameters.AddWithValue("@CandidateAnswer", "");
					cmd.Parameters.AddWithValue("@Score", 0);
				}
				cmd.ExecuteNonQuery();


			}
			Response.Write("<script>alert('Response Added');</script>");

		}
	}
}
