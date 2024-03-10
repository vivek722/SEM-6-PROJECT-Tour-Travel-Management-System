using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using iTextSharp.text;
using System.IO;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System.Configuration;

public partial class USER_flightrecipt : System.Web.UI.Page
{

    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionstring1"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        string qry;
        SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

        L1.Text = Convert.ToString(Session["fname"]);
        L2.Text = Convert.ToString(Session["login"]);
        L3.Text = Convert.ToString(Session["adress"]);
        L4.Text = Convert.ToString(Session["contact"]);
        L5.Text = Convert.ToString(Session["cname"]);
        L13.Text = Convert.ToString(Session["from"]);
        L7.Text = Convert.ToString(Session["to"]);
        L8.Text = Convert.ToString(Session["ttime"]);
        L9.Text = Convert.ToString(Session["ltime"]);
        L10.Text = Convert.ToString(Session["duration"]);
        L14.Text = Convert.ToString(Session["fclass"]);
        L15.Text = Convert.ToString(Session["fprice"]);
        L16.Text = Convert.ToString(Session["person"]);
    }
     private void exportpdf()
    {
        Response.ContentType = "application/pdf";
        Response.AddHeader("content-disposition", "attachment;filename=OrderInvoice.pdf");
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        StringWriter sw = new StringWriter();
        HtmlTextWriter hw = new HtmlTextWriter(sw);
        Panel1.RenderControl(hw);
        StringReader sr = new StringReader(sw.ToString());
        Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
        HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
        PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
        pdfDoc.Open();
        htmlparser.Parse(sr);
        pdfDoc.Close();
        Response.Write(pdfDoc);
        Response.End();
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Verifies that the control is rendered */
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        exportpdf();
        //Response.Redirect("Thank you.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("thankyou.aspx");
    }
}
