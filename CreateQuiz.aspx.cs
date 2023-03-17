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
    public partial class CreateQuiz : System.Web.UI.Page
    {
        public Conn con = new Conn();
        protected void AddQuestionButton_Click(object sender, EventArgs e)
        {

        }

        void AddQuizQuestionToDataBase()
        {
            SqlDataAdapter cmd1 = new SqlDataAdapter("SELECT QuizID from Quiz where QuizName='" + DropDownList1.SelectedValue.ToString() + "'", con.con);
            DataTable dt1 = new DataTable();
            cmd1.Fill(dt1);
        }
       /* bool SameQuestionSelected()
        {

        } */
    }
}

      /*  public string conString = "Data Source=Arpan-Shukla;Initial Catalog=Survey_portal;Integrated Security=True";

        string QueDetails = "{0,-60}{1,-40}{2,-40}{3,-40}{4,-40}";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                ListBox1.Items.Add(String.Format(QueDetails, "Question", "Option1", "Option2", "Option3", "Option4"));
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                /*CheckBox chk = GridView1.Rows[i].FindControl("CheckBox1") as CheckBox;

                /*DataTable dt = new DataTable();
                DataRow dr = null;
                dr["Question"] = GridView1.Rows[i].Cells[1].Text;
                dr["Option1"] = GridView1.Rows[i].Cells[2].Text;
                dr["Option2"] = GridView1.Rows[i].Cells[3].Text;
                dr["Option3"] = GridView1.Rows[i].Cells[4].Text;
                dr["Option4"] = GridView1.Rows[i].Cells[5].Text;

                string question, opt1, opt2, opt3, opt4;
                question = GridView1.Rows[i].Cells[1].Text;
                opt1 = GridView1.Rows[i].Cells[2].Text;
                opt2 = GridView1.Rows[i].Cells[3].Text;
                opt3 = GridView1.Rows[i].Cells[4].Text;
                opt4 = GridView1.Rows[i].Cells[5].Text;
                //GridView1.Rows[i].Visible = false;

                if (chk.Checked)
                {
                    DataTable dt = new DataTable();
                    dt.Columns.Add("que");
                    dt.Columns.Add("opt1");
                    dt.Columns.Add("opt2");
                    dt.Columns.Add("opt3");
                    dt.Columns.Add("opt4");
                    dt.Columns.Add("ans");

                    var dr = dt.NewRow();
                    dr["que"] = GridView1.Rows[i].Cells[1].Text;
                    dr["opt1"] = GridView1.Rows[i].Cells[2].Text;
                    dr["opt2"] = GridView1.Rows[i].Cells[3].Text;
                    dr["opt3"] = GridView1.Rows[i].Cells[4].Text;
                    dr["opt4"] = GridView1.Rows[i].Cells[5].Text;
                    dr["ans"] = GridView1.Rows[i].Cells[6].Text;

                    dt.Rows.Add(dr);*/
                
                //ListBox1.Items.Add(String.Format(QueDetails, question, opt1, opt2, opt3, opt4));

                /*CheckBox chk = GridView1.Rows[i].FindControl("CheckBox1") as CheckBox;
                if (chk.Checked)
                    ListBox1.Items.Add(GridView1.Rows[i].Cells[2].Text); 
            }
        }
    }
}
 */