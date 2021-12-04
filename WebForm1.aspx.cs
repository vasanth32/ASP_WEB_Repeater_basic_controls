using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Server = localhost; Database = employeedetails; Integrated Security = True;
            //string connetionString;
            //SqlConnection cnn;

            //connetionString = @"Data Source=WIN-50GP30FGO75;Initial Catalog=Demodb ;User ID=sa;Password=demol23";
            //connetionString = @"Data Source=VASANTH\SQLEXPRESS; Initial Catalog=university; Integrated Security=True";

            //cnn = new SqlConnection(connetionString);

            //cnn.Open();

            //Response.Write("Connection MAde");
            //cnn.Close();

            //SqlCommand command;
            //SqlDataReader dataReader;
            //String sql, Output = " ";
            //sql = "Select * from hr.employees";

            //command = new SqlCommand(sql, cnn);

            //dataReader = command.ExecuteReader();
            //one.DataSource = command.ExecuteReader();
            //one.DataBind();
            //RepeatInformation.DataSource = command.ExecuteReader();
            //RepeatInformation.DataBind();

            //while (dataReader.Read())
            //{
            //    Output = Output + dataReader.GetValue(0) + "-" + dataReader.GetValue(1) + "</br>";
            //}

            //Response.Write(Output);


            //dataReader.Close();
            //command.Dispose();
            //cnn.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["Name"] = txtName.Text;
            //Response.Redirect("WebForm2.aspx");
             //Server.Transfer("WebForm2.aspx");
            Server.Execute("WebForm2.aspx");


        }
    }
}