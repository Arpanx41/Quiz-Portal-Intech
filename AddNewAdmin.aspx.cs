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
    public partial class AddNewAdmin : System.Web.UI.Page
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
            try
            {

                SqlCommand cmd = new SqlCommand("INSERT INTO Admin(Name,Phone,EmailID,Password) VALUES (@Name,@Phone,@EmailID,@Password)", con.con);

                cmd.Parameters.AddWithValue("@Name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@phone", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@EmailID", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", TextBox3.Text.Trim());

                cmd.ExecuteNonQuery();
                Response.Write("DataEnter Successfully");
               

                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";

                Response.Redirect("~/AdminHomePage.aspx");
                Response.Write("<script>alert('Admin Added Successfully')</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(" + ex.Message + ")</script>");
            }
        }
    }
}