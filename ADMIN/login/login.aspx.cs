using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class ADMIN_login_login : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionstring1"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
{


    Session["name"] = TextBox1.Text;
          cn.Open();
        qry = "select * from add_admin where  email ='"+TextBox1.Text+"'and password='"+TextBox2.Text+"' ";
        //and password='"+bd+"'
        cmd = new SqlCommand(qry, cn);
        //cmd.ExecuteNonQuery();
        dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {

            Session["login"] = TextBox1.Text;

            Response.Write("<script>alert('login successfully..')</script>");

            Response.Redirect("~/ADMIN/dashboard.aspx");

            TextBox1.Text = "";
            TextBox2.Text = "";
            
        }
        else
       {
            Response.Write("<script>alert('login  not successfully..')</script>");
     
       }

        

    }
  

}

