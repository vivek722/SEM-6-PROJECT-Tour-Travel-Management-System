﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class SEM_6_FINAL_PROJECT_ADMIN_Default2 : System.Web.UI.Page
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
        cn.Open();

        qry = "insert into city values('" + TextBox2.Text + "','" + DropDownList1.SelectedValue + "' )";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();

        TextBox2.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox2.Text = "";
    }
   
}