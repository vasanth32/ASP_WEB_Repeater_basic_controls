using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Demo
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
        }
        void Application_Error(object sender, EventArgs e)
        {
                     
            Response.Redirect("WebForm2.aspx");

        }

        protected void Application_AuthenticateRequest(Object sender, EventArgs e)
        {
            Response.Write("Authenticating request...<br>");            
        }
        void Session_Start(object sender, EventArgs e)
        {
            Session.Timeout = 1;
        }
        void Session_End(object sender, EventArgs e)
        {
            // Code that runs when a session ends.
            // Note: The Session_End event is raised only when the sessionstate mode
            // is set to InProc in the Web.config file. If session mode is set to StateServer
            // or SQLServer, the event is not raised.
        }

    }
}