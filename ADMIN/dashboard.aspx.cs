using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class SEM_6_FINAL_PROJECT_ADMIN_Default4 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionstring1"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry, hotel, trips, user, packages, activity, packagebooking, tripbooking, flightbooking;
    SqlDataAdapter dr;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["login"] == null)
        {
            Response.Write("<script>alert('Please Login First..')</script>");
            Response.Redirect("http://localhost:33269/SEM-6 PROJECT/ADMIN/login/login.aspx");

        }
        else
        {
            Response.Write("<script>alert('Login successfully..')</script>");
        }
            cn.Open();
            qry = "select count(*) from cruise";
            cmd = new SqlCommand(qry, cn);
            hotel = cmd.ExecuteScalar().ToString();
            cn.Close();
            Label1.Text = hotel;

            cn.Open();
            qry = "select count(*) from activity";
            cmd = new SqlCommand(qry, cn);
            trips = cmd.ExecuteScalar().ToString();
            cn.Close();
            Label2.Text = trips;


            cn.Open();
            qry = "select count(*) from regitration";
            cmd = new SqlCommand(qry, cn);
            user = cmd.ExecuteScalar().ToString();
            cn.Close();
            Label3.Text = user;

            cn.Open();
            qry = "select count(*) from car";
            cmd = new SqlCommand(qry, cn);
            packages = cmd.ExecuteScalar().ToString();
            cn.Close();
            Label4.Text = packages;

            cn.Open();
            qry = "select count(*) from hotelbooking";
            cmd = new SqlCommand(qry, cn);
            activity = cmd.ExecuteScalar().ToString();
            cn.Close();
            Label5.Text = activity;

            cn.Open();
            qry = "select count(*) from pbooking";
            cmd = new SqlCommand(qry, cn);
            packagebooking = cmd.ExecuteScalar().ToString();
            cn.Close();
            Label6.Text = packagebooking;

            cn.Open();
            qry = "select count(*) from trips_book";
            cmd = new SqlCommand(qry, cn);
            tripbooking = cmd.ExecuteScalar().ToString();
            cn.Close();
            Label7.Text = tripbooking;

            cn.Open();
            qry = "select count(*) from fbooking";
            cmd = new SqlCommand(qry, cn);
            flightbooking = cmd.ExecuteScalar().ToString();
            cn.Close();
            Label8.Text = flightbooking;


            Label9.Text = Convert.ToString(Session["name"]);
        
    }
}