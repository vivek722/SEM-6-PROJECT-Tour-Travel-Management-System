using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class USER_packagebooking : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionstring1"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    int total;
    String id, pprice, pcategory,pname;
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
            qry = "select *  from package  where id='" + id + "'";
            cmd = new SqlCommand(qry, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    
                    pcategory = dr[1].ToString();
                    pname = dr[2].ToString();
                    pprice = dr[4].ToString();
                    


                    //Session["trprice"] = tprice;
                    //Session["ttprice"] = ttprice;
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
        Session["pprice"] = pprice;
        Session["pcategory"] = pcategory;
        Session["pname"] = pname;
        Session["person"] = DropDownList2.SelectedItem;

        cn.Open();
        qry = "insert into Pbooking values('" + pcategory + "','" + pname + "','" + pprice + "','" + f_name.Text + "','" + Convert.ToString(Session["login"]) + "','" + address.Text + "','" + contact.Text + "','" + DropDownList1.SelectedItem + "','" + DropDownList2.SelectedItem + "')";
        //ttprice =DropDownList2.SelectedValue;
        //total = Convert.ToInt32(ttprice) * Convert.ToInt32(tprice);
        //total = (Convert.ToInt32(tprice) * Convert.ToInt32(DropDownList2.SelectedValue));
        //Label1.Text = Convert.ToString(total);
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("capchap.aspx");
    }
}
