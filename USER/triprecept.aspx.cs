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

public partial class USER_Default : System.Web.UI.Page
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
       L4.Text  = Convert.ToString(Session["contact"]);
       L5.Text = Convert.ToString(Session["tstatdate"]);
       L6.Text = Convert.ToString(Session["tstatplace"]);
       L7.Text = Convert.ToString(Session["tendplace"]);
       L8.Text = Convert.ToString(Session["tduration"]);
       L9.Text = Convert.ToString(Session["person"]);
       L10.Text = Convert.ToString(Session["tprice"]);

     
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        exportpdf();
        //Response.Redirect("Thank you.aspx");
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
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("thankyou.aspx");
    }
}

//    private void SendPDFEmail(DataTable dt)
//    {
//        using (StringWriter sw = new StringWriter())
//        {
//            using (HtmlTextWriter hw = new HtmlTextWriter(sw))
//            {
//                string companyName = "Musafir Tours & Travel Agency";
//                string company_detail = "201,Royal Plaza,GB Road,Near Iscon Mall,Surat-394107 , Gujrat";
//                int orderNo = Convert.ToInt32(order_id);
//                StringBuilder sb = new StringBuilder();
//                sb.Append("<table width='100%' cellspacing='0' cellpadding='2'>");
//                sb.Append("<tr><td align='center' style='background-color: #18B5F0' colspan = '2'><b>Retail Invoice/Bill</b></td></tr>");
//                sb.Append("<tr><td>&nbsp;" + "<font size='6' style='font-family:Times New Roman' color='#FFA500'>" + companyName + "</font>");
//                //<img src='../logo/logo3.JPG' height='85' width='75' />
//                // sb.Append("<td align='left'>");

//                //sb.Append("<font size='6' style='font-family:Times New Roman' color='#666362'>"+ companyName + "</font>" );
//                sb.Append("</td></tr> ");

//                sb.Append("<tr><td colspan = '2'></td></tr>");

//                sb.Append("<tr><td><b>Order No:</b>");
//                sb.Append(orderNo);

//                sb.Append("</td><td align='right'><b>Date: </b>");
//                sb.Append(date1);

//                sb.Append(" </td><td><b>Billing Address:</b> ");
//                sb.Append("<br>" +  companyName + "<br>" + receiveraddress + "<br>" + smobile_no + "<br>" + email);
//                sb.Append(" </td><td align='right'><b>Shipping Address:</b> ");
//                sb.Append("<br>" + "<font style='font-family:Times New Roman' color='#666362'>" + shiping_add + "</font>");
//                //sb.Append("<br>" + receivername + "<br>" + receiveraddress + "<br>" + "<br>" + rmobile_no);
//                sb.Append("</td></tr>");
//                sb.Append("</table>");
//                sb.Append("<br />");
//                sb.Append("<table border = '1'>");
//                sb.Append("<tr>");
//                foreach (DataColumn column in dt.Columns)
//                {
//                    sb.Append("<th style = 'background-color: #FFA500;color:#ffffff'>");
//                    sb.Append(column.ColumnName);
//                    sb.Append("</th>");
//                }
//                sb.Append("</tr>");
//                foreach (DataRow row in dt.Rows)
//                {
//                    sb.Append("<tr>");
//                    foreach (DataColumn column in dt.Columns)
//                    {
//                        sb.Append("<td>");
//                        sb.Append(row[column]);
//                        sb.Append("</td>");
//                    }
//                    sb.Append("</tr>");
//                }
//                sb.Append("</table>");
//                sb.Append("<br />");

//                sb.Append("<table width='100%' cellspacing='0' cellpadding='2'>");

//                sb.Append("<tr><td align='right' colspan='2'> <b>Grand Total:</b></td></tr>");
//                sb.Append("<tr><td align='right' colspan='2'>" + grand_total + "</td></tr>");

//                sb.Append("</table>");

//                StringReader sr = new StringReader(sb.ToString());

//                Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
//                HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
//                using (MemoryStream memoryStream = new MemoryStream())
//                {
//                    PdfWriter writer = PdfWriter.GetInstance(pdfDoc, memoryStream);
//                    pdfDoc.Open();
//                    htmlparser.Parse(sr);
//                    pdfDoc.Close();
//                    byte[] bytes = memoryStream.ToArray();
//                    memoryStream.Close();


//                    MailMessage mail = new MailMessage();
//                    string mailid = email;
//                    mail.To.Add(mailid);
//                    mail.From = new MailAddress("infotech.kakshi@gmail.com");
//                    mail.Subject = "Invoice/Bill";
//                    string Body = "Congratulations!Your Order has been registered and payment has been completed.!!The Order will Be delivered on the specified delivery date.Here is the invoice of Your order";
//                    mail.Attachments.Add(new Attachment(new MemoryStream(bytes), "UserInvoice.pdf"));
//                    mail.Body = Body;
//                    mail.IsBodyHtml = true;
//                    SmtpClient smtp = new SmtpClient();
//                    //  smtp.Host = ConfigurationManager.AppSettings["SMTP"];
//                    smtp.Credentials = new System.Net.NetworkCredential(ConfigurationManager.AppSettings["FROMMAIL"], ConfigurationManager.AppSettings["FROMPWD"]);
//                    smtp.Host = "smtp.gmail.com";
//                    smtp.Credentials = new System.Net.NetworkCredential("infotech.kakshi@gmail.com", "bhushan611");
//                    smtp.Port = 587;  //465
//                    smtp.EnableSsl = true;
//                    smtp.Send(mail);

//                }
//            }
//        }
//    }

//    protected void btn_send_Click(object sender, EventArgs e)
//    {
//        cn.Open();
//        q = "insert into contact values('" + txtname.Text + "','" + txtemail.Text + "','" + txtmsg.Text + "')";
//        cmd = new SqlCommand(q,cn);
//        cmd.ExecuteNonQuery();
//        cn.Close();
//        Response.Redirect("invoice.aspx");
//    }
//    protected void btn_ord_Click(object sender, EventArgs e)
//    {
//        Response.Redirect("orderdetails.aspx");
//    }
//}

//}