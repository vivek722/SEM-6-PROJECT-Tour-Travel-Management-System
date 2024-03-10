using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class SEM_6_FINAL_PROJECT_USER_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionstring1"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry,a;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        //Label1.Text= Convert.ToString(Session["city"]);
        //cn.Open();
        //qry = "select * from activity where actvity_place='" + a + "' ";
        //cmd = new SqlCommand(qry, cn);
        //dr = cmd.ExecuteReader();

        //if (dr.HasRows)
        //{
        //    dr.Read();
        //    //Session["city"] = dr["activity_place"];
        //    Response.Redirect("~/USER/Activities.aspx");
        //}
        //else
        //{
        //    Response.Write("<script>alert('Invalid data..')</script>");
        //}
        //cn.Close();

    }
}