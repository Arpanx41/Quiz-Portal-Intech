using System.Data;
using System.Data.SqlClient;
namespace Quiz_Intech
{
    public class Conn
    {
       
        public SqlConnection con; 
        public Conn() {
            //string conString = "Data Source=Arpan-Shukla;Initial Catalog=Survey_portal;Integrated Security=True";
            string conString = "Data Source=ARPAN-SHUKLA;Initial Catalog=SurveyPortal;Integrated Security= True; MultipleActiveResultSets=true";

            this.con = new SqlConnection(conString);
            
            if (con.State == ConnectionState.Closed)
            {
                this.con.Open();
            }
        }
    }
}