using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["MySession"] = "WELCOME";
            //Session.Timeout = 1;

        }
        protected void Register_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into RegistrationsTable values (@FirstName, @LastName, @Email, @MobileNumber, @Password)", con);
            cmd.Parameters.AddWithValue("FirstName", FnameTxt.Text);
            cmd.Parameters.AddWithValue("LastName", LnameTxt.Text);
            cmd.Parameters.AddWithValue("Email", Email.Text);
            cmd.Parameters.AddWithValue("MobileNumber", MobileNumber.Text);
            cmd.Parameters.AddWithValue("Password", Password.Text);
            cmd.ExecuteNonQuery();
            Label7.Visible = true;
            Label7.Text = "User registered successfully";

            FnameTxt.Text = "";
            LnameTxt.Text = "";
            Email.Text = "";
            MobileNumber.Text = "";
            Password.Text = "";
            FnameTxt.Focus();
        }
    }
}