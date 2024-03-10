using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class USER_Package_Details : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionstring1"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;
    String pid;

    SqlConnection cn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionstring1"].ConnectionString);
    //SqlCommand cmd = new SqlCommand();
    string qry1;
    SqlDataReader dr1;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        pid = Request.QueryString.Get("pid");

        cn.Open();
        qry = "select * from package where id='" + pid + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {
            while (dr.Read())
            {
                Session["pname"] = dr[2].ToString();
            }
        }
        cn.Close();
        //Label1.Text = pname;
        //Session["proname"] = pname;

    }
}