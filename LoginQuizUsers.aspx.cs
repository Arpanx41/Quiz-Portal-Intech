using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Quiz_Intech
{
    public partial class LoginQuizUsers : System.Web.UI.Page
    {
        public Conn con = new Conn();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedItem.Value == "Admin")
                adminLogin();
            else if (DropDownList1.SelectedItem.Value == "Candidate")
                userLogin();
        }
        void adminLogin()
        {

            SqlCommand cmd = new SqlCommand("SELECT * FROM Admin WHERE EmailID = '" + TextBox1.Text + "';", con.con);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    if (dr.GetValue(4).ToString() == TextBox2.Text.ToString())
                    {
                        Session["name"] = dr.GetValue(1).ToString();
                        Session["AdminID"] = dr.GetValue(0).ToString();
                        //Session["role"] = "admin";
                        Response.Redirect("~/AdminHomePage.aspx");
                    }
                    else
                        Response.Write("Invalid credentials...!");

                    TextBox1.Text = "";
                    TextBox2.Text = "";
                }
            }

        }

        void userLogin()
        {

            SqlCommand cmd = new SqlCommand("SELECT * FROM Candidate WHERE EmailID = '" + TextBox1.Text + "';", con.con);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    if (dr.GetValue(3).ToString() == TextBox2.Text.ToString())
                    {
                        //Session["name"] = dr.GetValue(1).ToString();
                        //Session["role"] = "candidate";
                        Session["CandidateID"] = dr.GetValue(0).ToString();
                        Response.Redirect("~/CandidateQuizHome.aspx");
                    }
                    else
                        Response.Write("Invalid credentials...!");

                    TextBox1.Text = "";
                    TextBox2.Text = "";
                }
            }
        }

      
    }

   
}
    
