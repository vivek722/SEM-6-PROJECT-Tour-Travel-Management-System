using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class SEM_6_FINAL_PROJECT_ADMIN_Default3 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionstring1"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataAdapter dr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int filesize = FileUpload2.PostedFile.ContentLength;
        if (filesize > 2097152)
        {
            Label1.Text = "image is to large...";
        }
        else
        {
            FileUpload2.SaveAs(Server.MapPath("~/ADMIN/upload/" + FileUpload2.FileName));
            Label1.Text = "image upload successfully...";
        }
        cn.Open();

        qry = "insert into package values('" + DropDownList2.SelectedValue + "','" + TextBox1.Text + "','" + txt_pdescription.Text + "','" + txt_pprice.Text + "','" + FileUpload2.FileName + "','" + DropDownList1.SelectedValue + "','" +TextBox2.Text+ "')";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();

        TextBox1.Text = "";
        txt_pdescription.Text = "";
        txt_pprice.Text = "";
        TextBox2.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        TextBox1.Text = "";
        txt_pdescription.Text = "";
        txt_pprice.Text = "";
        TextBox2.Text = "";
    }
}