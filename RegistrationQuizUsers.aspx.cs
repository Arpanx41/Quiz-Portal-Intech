using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Quiz_Intech
{
    public partial class RegistrationQuizUsers : System.Web.UI.Page
    {
        public Conn con = new Conn();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkEmail())
                Response.Write("Email-ID already Exist...Try With Different Email-ID");
            else
                SignUp();
            TextBox1.Text = null;
            TextBox2.Text = null;
            TextBox3.Text = null;
        }
        bool checkEmail()
        {
             SqlCommand cmd = new SqlCommand("SELECT * FROM Candidate WHERE EmailID = '" + TextBox2.Text.Trim() + "';", con.con);

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    if (dr.GetValue(2).ToString() == TextBox2.Text.ToString())
                        return true;
                }
            }
            
            return false;
        }

        void SignUp()
        {
          
                SqlCommand cmd1 = new SqlCommand("INSERT INTO Candidate(Name,EmailID,Password) VALUES (@Name,@EmailID,@Password)", con.con);

                cmd1.Parameters.AddWithValue("@Name", TextBox1.Text.Trim());
                cmd1.Parameters.AddWithValue("@EmailID", TextBox2.Text.Trim());
                cmd1.Parameters.AddWithValue("@Password", TextBox3.Text.Trim());

                cmd1.ExecuteNonQuery();
            
                Response.Write("DataEnter Successfully");
               

                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";

                Response.Redirect("LoginQuizUsers.aspx");

            }
          
        }

       
    }
