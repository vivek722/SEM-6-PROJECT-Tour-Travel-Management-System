using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class SEM_6_FINAL_PROJECT_ADMIN_Default : System.Web.UI.Page
{
    //SqlConnection cn = new SqlConnection(@"");
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionstring1"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataAdapter dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        txt_email.Text = "";
        txt_password.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "insert into add_admin values('" + txt_fname.Text + "','" + txt_lname.Text + "','" + txt_contact.Text + "','" + txt_email.Text + "','" + txt_password.Text + "','" + DropDownList1.SelectedValue + "')";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();

        txt_fname.Text = "";
        txt_lname.Text = "";
        txt_email.Text = "";
        txt_contact.Text="";
        txt_password.Text = "";
        txt_cpassword.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        txt_fname.Text = "";
        txt_lname.Text = "";
        txt_email.Text = "";
        txt_contact.Text = "";
        txt_password.Text = "";
        txt_cpassword.Text = "";
    }
}