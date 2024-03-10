using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class USER_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionstring1"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    int total;
    String id,  tprice,tstatplace,tendplace,tstatdate,tduration,ttprice;
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
            qry = "select *  from trips  where id='" + id + "'";
            cmd = new SqlCommand(qry, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    
                    tstatdate = dr[1].ToString();
                    tstatplace = dr[4].ToString();
                    tendplace = dr[5].ToString();
                    tduration = dr[2].ToString();
                    tprice= dr[6].ToString();


                    //Session["trprice"] = tprice;
                    //Session["ttprice"] = ttprice;
                }
            }
            cn.Close();
        }
    }

 protected void Button1_Click1(object sender, EventArgs e)
 {
     Session["fname"] =  f_name.Text ;
     Session["adress"] =   address.Text;
      Session["contact"] =   contact.Text  ;
      Session["tprice"] =  tprice ;
      Session["tstatplace"] =  tstatplace ;
       Session["tendplace"] =    tendplace ;
       Session["tstatdate"] = tstatdate;
       Session["tduration"] = tduration;
       Session["person"] = DropDownList2.SelectedItem;

     cn.Open();
     qry = "insert into trips_book values('" + tstatdate + "','" + tstatplace + "','" + tendplace + "','" + tduration + "','" + tprice + "','" + f_name.Text + "','" + Convert.ToString(Session["login"]) + "','" + address.Text + "','" + contact.Text + "','" + DropDownList1.SelectedItem + "','" + DropDownList2.SelectedItem + "')";
     //ttprice =DropDownList2.SelectedValue;
     //total = Convert.ToInt32(ttprice) * Convert.ToInt32(tprice);
      //total = (Convert.ToInt32(tprice) * Convert.ToInt32(DropDownList2.SelectedValue));
      //Label1.Text = Convert.ToString(total);
     cmd = new SqlCommand(qry, cn);
     cmd.ExecuteNonQuery();
     cn.Close();
     Response.Redirect("capchat.aspx");
 }
}

 
