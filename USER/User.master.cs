using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net.Mail;
using System.Net;



public partial class USER_User : System.Web.UI.MasterPage
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionstring1"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;
    String ad;
    String bd;


    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
        //cn.Open();
        //qry = "select * from activity where activity_place='"+TextBox9.Text+"' ";
        //cmd = new SqlCommand(qry, cn);
        //dr = cmd.ExecuteReader();

        //if (dr.HasRows)
        //{
            
           // Response.Redirect("~/USER/Activities.aspx");
        //}
        //else
        //{
        //    Response.Write("<script>alert('Invalid data..')</script>");
        //}
        //cn.Close();

    public string Decryptstring(string encrstring)
    {

        byte[] b;
        string decrypted;


        try
        {
            b = Convert.FromBase64String(encrstring);
            decrypted = System.Text.ASCIIEncoding.ASCII.GetString(b);
        }
        catch (FormatException fe)
        {
            decrypted = "";

        }
        return decrypted;


    }
    public string Enryptstring(string strEncrypted)
    {
        byte[] b = System.Text.ASCIIEncoding.ASCII.GetBytes(strEncrypted);
        string encrypted = Convert.ToBase64String(b);
        return encrypted;
    }




    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["city"] = TextBox9 .Text ;
        Response.Redirect("~/USER/Activities.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["city"] = TextBox4.Text;
        Response.Redirect("~/USER/CarRental.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Session["city"] = TextBox6.Text;
        Response.Redirect("~/USER/Trips.aspx");
    }

    protected void Button10_Click(object sender, EventArgs e)
    {
        Session["city"] = TextBox1.Text;
        Response.Redirect("~/USER/Hotel.aspx");
    }


    protected void Button5_Click(object sender, EventArgs e)
    {
        Session["city"] = TextBox8.Text;
        Response.Redirect("~/USER/cruise.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Session["from"] = TextBox10.Text;
        Session["to"] = TextBox5.Text;
        Response.Redirect("~/USER/Flight.aspx");
    }

    protected void Button7_Click(object sender, EventArgs e)
    {

        ad = Enryptstring(txt_password.Text);

        cn.Open();

        qry = "insert into regitration values('" + txt_fist.Text + "','" + txt_last.Text + "','" + txt_address.Text + "','" + txt_contact.Text + "','" + txt_email.Text + "','" + ad + "' )";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();

      
        Label1.Text = Decryptstring(Label1.Text);
       
        cn.Close();



         SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new System.Net.NetworkCredential("vivekthakkar166@gmail.com", "vivek166");
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
        msg.Subject = "Hello " + txt_fist.Text + "," + txt_last.Text + "  Thanks for Register at Musfir Tour & Travel";
        msg.Body = "Hi, Thanks For Your Registration at Musfir Tour & Travel , We will Provide Best Dream Place Best moments With Us .Thanks";
        string toaddress = txt_email.Text;
        msg.To.Add(toaddress);
        string fromaddress = "Musfir Tour & Travel <vivekthakkar166@gmail.com>";
        msg.From = new MailAddress(fromaddress);
        try
        {
            smtp.Send(msg);
            Label3.Text = "Your Email Has Been Registered with Us";
        }
        catch
        {
            throw;
        }
        txt_fist.Text = "";
        txt_last.Text = "";
        txt_address.Text = "";
        txt_contact.Text = "";
        txt_email.Text = "";
    }

  
    //protected void Button11_Click(object sender, EventArgs e)
    //{
    //    decryption.Text = Decryptstring(decryption.Text);
    //}
    protected void Button11_Click(object sender, EventArgs e)
    {

    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        bd = Enryptstring(TextBox14.Text);

        cn.Open();
        qry = "select * from regitration where  email ='"+TextBox13.Text+"'and password='"+bd+"'";
        //and password='"+bd+"'
        cmd = new SqlCommand(qry, cn);
        //cmd.ExecuteNonQuery();
        dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {

            Session["login"] = TextBox13.Text;

            Response.Write("<script>alert('login successfully..')</script>");
        }
        else
       {
            Response.Write("<script>alert('login  not successfully..')</script>");
        }
    }
}
