using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SEM_6_FINAL_PROJECT_ADMIN_Admin : System.Web.UI.MasterPage
{
    string login;
    protected void Page_Load(object sender, EventArgs e)
    {
        //string str = keygenerator.getuniquekey(6);
        Label1.Text =Convert.ToString(Session["login"]);
        Label2.Text = Convert.ToString(Session["login"]);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:33269/SEM-6 PROJECT/ADMIN/login/login.aspx");
       
        
    }
}
