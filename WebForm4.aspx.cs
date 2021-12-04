using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connetionString;

            SqlConnection cnn; 

            connetionString = @"Data Source=VASANTH\SQLEXPRESS; Initial Catalog=university; Integrated Security=True";

            cnn = new SqlConnection(connetionString);

            cnn.Open();

            Response.Write("Connection MAde");

            SqlCommand command;
            
            String sql = " ";


            sql = "Select * from hr.employees";

            command = new SqlCommand(sql, cnn);

            //one.DataSource = command.ExecuteReader();
            //one.DataBind();
            RepeatInformation.DataSource = command.ExecuteReader();
            RepeatInformation.DataBind();

            command.Dispose();
            cnn.Close();
        }
    }
}