using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class SEM_6_PROJECT_USER_flightbook : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionstring1"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    String id, fprice, from, to ,cname, duration, ttime,ltime, fclass ;
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
            qry = "select *  from Flight  where id='" + id + "'";
            cmd = new SqlCommand(qry, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {

                    cname = dr[2].ToString();
                    from = dr[3].ToString();
                    to = dr[4].ToString();
                    ttime = dr[5].ToString();
                    ltime = dr[6].ToString();
                    duration = dr[10].ToString();
                    fclass= dr[8].ToString();
                    fprice = dr[7].ToString();




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
        Session["cname"] = cname;
        Session["from"] = from;
        Session["to"] = to;
        Session["ttime"] = ttime;
        Session["ltime"] = ltime;
        Session["duration"] = duration;
        Session["fclass"] = fclass;
        Session["fprice"] = fprice;
        Session["person"] = DropDownList2.SelectedItem;

        cn.Open();
        qry = "insert into fbooking values('" + cname + "','" + from + "','" + to + "','" + ttime + "','" + ltime + "','" + duration + "','" + fclass + "','" + fprice + "','" + f_name.Text + "','" + Convert.ToString(Session["login"]) + "','" + address.Text + "','" + contact.Text + "','" + check_in.Text + "','" + DropDownList1.SelectedItem + "','" + DropDownList2.SelectedItem + "')";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();

        Response.Redirect("capchaf.aspx");
    }
}