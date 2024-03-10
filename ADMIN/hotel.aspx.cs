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
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionstring1"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataAdapter dr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int filesize = FileUpload1.PostedFile.ContentLength;
        if (filesize > 2097152)
        {
            Label1.Text = "image is to large...";
        }
        else
        {
            FileUpload1.SaveAs(Server.MapPath("~/ADMIN/upload/" + FileUpload1.FileName));
            Label1.Text = "image upload successfully...";
        }
        cn.Open();

        qry = "insert into hotel values('" + txt_hc.Text + "','" + txt_hn.Text + "','" + hotel_hd.Text + "','" + txt_hp.Text + "','" + FileUpload1.FileName + "','" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "' )";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();

        txt_hc.Text = "";
        txt_hn.Text = "";
        hotel_hd.Text = "";
        txt_hp.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        txt_hc.Text = "";
        txt_hn.Text = "";
        hotel_hd.Text = "";
        txt_hp.Text = "";
    }
}