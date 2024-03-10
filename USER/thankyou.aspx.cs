using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class USER_thankyou : System.Web.UI.Page
{

    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionstring1"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataAdapter dr;
    protected void Page_Load(object sender, EventArgs e)
    {
    }
  
    
    protected void Button1_Click1(object sender, EventArgs e)
    {

        cn.Open();

        qry = "insert into feedback1 values('" + TextBox1.Text + "','" + TextBox2.Text + "')";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();


        TextBox1.Text = "";
        TextBox2.Text = "";



        Response.Redirect("back.aspx");
    }
}