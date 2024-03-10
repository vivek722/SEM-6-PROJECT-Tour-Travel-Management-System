using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class USER_Book : System.Web.UI.Page
{

    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionstring1"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    String id, hname, hprice, hcity;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["login"] == null)
        {

            Response.Redirect("Home.aspx");
            Response.Write("<script>alert('You Are Not Login')</script>");
        }
        else
        {
            email.Text = Convert.ToString(Session["login"]);
            id = Request.QueryString.Get("id");
            cn.Open();
            qry = "select * from hotel where id='" + id + "'";
            cmd = new SqlCommand(qry, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    hname = dr[2].ToString();
                    hprice = dr[4].ToString();
                    hcity = dr[7].ToString();

                }
            }
            cn.Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["fname"] = f_name.Text;
        Session["adress"] = address.Text;
        Session["contact"] = contact.Text;
        Session["hprice"] = hprice;
        Session["hcity"] = hcity;
        Session["hname"] = hname;
        Session["check_in"] = check_in.Text;
        Session["check_out"] = check_out.Text;
        Session["person"] = DropDownList2.SelectedItem;

        cn.Open();
        qry = "insert into hotelbooking values('" + hname + "','" + hprice + "','" + hcity + "','" + f_name.Text + "','" + Session["login"] + "','" + address.Text + "','" + contact.Text + "','" + check_in.Text + "','" + check_out.Text + "','" + DropDownList1.SelectedItem + "','" + DropDownList2.SelectedItem + "')";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("capchah.aspx");
}
}   

