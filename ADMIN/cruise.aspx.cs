using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class ADMIN_Default : System.Web.UI.Page
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

            qry = "insert into cruise values('" + txt_shop.Text + "','" + FileUpload1.FileName + "','" + txt_add.Text + "','" + DropDownList2.SelectedValue + "','" + DropDownList1.SelectedValue + "','" + txt_mobile.Text + "' )";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();



        }
    }
}