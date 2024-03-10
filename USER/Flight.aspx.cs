using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class USER_Flight : System.Web.UI.Page
{

    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionstring1"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl_from.Text = Convert.ToString(Session["from"]);
        Label1.Text = Convert.ToString(Session["to"]);
    }

    //protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    //{
        //cn.Open();
        //qry = "select * from flight where from = '" + Session["from"] + "'and to ='" + Session["to"] + "'and class='" + RadioButton1.Checked + "'";
        //cmd = new SqlCommand(qry, cn);
        //dr = cmd.ExecuteReader();

//    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        
    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        
    }
    protected void RadioButton1_CheckedChanged1(object sender, EventArgs e)
    {
        Repeater1.DataSourceID = null;
        Repeater1.DataSource = SqlDataSource2;
        Repeater1.DataBind();
    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        Repeater1.DataSourceID = null;
        Repeater1.DataSource = SqlDataSource3;
        Repeater1.DataBind();
    }
    protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
    {
        Repeater1.DataSourceID = null;
        Repeater1.DataSource = SqlDataSource4;
        Repeater1.DataBind();
    }
    protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
    {
        Repeater1.DataSourceID = null;
        Repeater1.DataSource = SqlDataSource5;
        Repeater1.DataBind();
    }
}