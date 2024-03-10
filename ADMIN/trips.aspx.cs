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
    SqlCommand cmd = new SqlCommand() ;
    string qry;
    SqlDataAdapter dr;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
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
        }

        cn.Open();

        qry = "insert into trips values('" + txt_stat.Text + "','" + txt_end.Text + "','" + txt_contact.Text + "','" + DropDownList2.SelectedValue + "','" + DropDownList3.SelectedValue + "','" + txt_price.Text + "','" + txt_equipment.Text + "','" + FileUpload1.FileName + "','" + txt_description.Text + "','" + DropDownList1.SelectedValue + "' )";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();

        txt_stat.Text = "";
        txt_end.Text = "";
        txt_contact.Text = "";
        txt_price.Text = "";
        txt_equipment.Text = "";
        txt_description.Text = "";
    }
    protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}