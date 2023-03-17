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
    public partial class AdminCResult : System.Web.UI.Page
    {
        public Conn con = new Conn();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ShowData();
        }

        void ShowData()
        {
            SqlCommand cmd1 = new SqlCommand("SELECT SUM(Score) from Response where CandidateID='" + TextBox1.Text.Trim() + "';", con.con);

            SqlDataAdapter da = new SqlDataAdapter(cmd1);
            DataTable dt = new DataTable();
            da.Fill(dt);

            Response.Write("<script>alert('Candidate score:= " + dt.Rows[0][0].ToString() + "');</script>");

        }
    }
}