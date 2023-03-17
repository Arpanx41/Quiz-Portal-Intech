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
    public partial class AdminAddSubject : System.Web.UI.Page
    {
        public Conn con = new Conn();
        protected void Page_Load(object sender, EventArgs e)
        {
            FillSubject();
        }
        protected void addsub_Click(object sender, EventArgs e)
        {
            if (CheckIfSubjectExists())
            {
                Response.Write("<script>alert('Subject Already Exists');</script>");
            }
            else
            {
                AddNewSubject();
            }
            TextBox1.Text = null;
        }

        bool CheckIfSubjectExists()
        {
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
            
            SqlCommand cmd1 = new SqlCommand("INSERT INTO Subject(SubjectName,AdminID) values(@SubjectName,@AdminID)", con.con);
            cmd1.Parameters.AddWithValue("@SubjectName", TextBox1.Text.Trim());
            cmd1.Parameters.AddWithValue("@AdminID", Session["AdminID"].ToString());
            cmd1.ExecuteNonQuery();
            

            Response.Write("<script>alert('Subject Added Successfully');</script>");

            TextBox1.Text = null;
            FillSubject();
        }

        public void FillSubject()
        {
            
            SqlCommand cmd4 = new SqlCommand("SELECT SubjectName from Subject", con.con);
            SqlDataAdapter da4 = new SqlDataAdapter(cmd4);
            DataTable dt4 = new DataTable();
            da4.Fill(dt4);
            GridView1.DataSource = dt4;
            GridView1.DataBind();
        }

    }
}