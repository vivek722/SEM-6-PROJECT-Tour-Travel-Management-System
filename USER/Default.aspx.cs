//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;
//using paytm;

//public partial class _Default : System.Web.UI.Page
//{
//    protected void Page_Load(object sender, EventArgs e)
//    {

//    }
//    protected void Button1_Click(object sender, EventArgs e)
//    {
//        String merchantKey = "9#XmdE#tueZEOEaz";
//        Dictionary<string, string> parameters = new Dictionary<string, string>();
//        parameters.Add("MID", "TSVLzI91162996463021");
//        parameters.Add("CHANNEL_ID", "WEB");
//        parameters.Add("INDUSTRY_TYPE_ID", "Retail");
//        parameters.Add("WEBSITE", "WEBSTAGING");
//        parameters.Add("EMAIL", "vivekthakkary007@gmail.com");
//        parameters.Add("MOBILE_NO", "8320279902");
//        parameters.Add("CUST_ID", "13");
//        parameters.Add("ORDER_ID", "20");
//        parameters.Add("TXN_AMOUNT", "50");
//        parameters.Add("CALLBACK_URL", "http://localhost:1060/Default2.aspx"); //This parameter is not mandatory. Use this to pass the callback url dynamically.
//        string checksum = CheckSum.generateCheckSum(merchantKey, parameters);
//        string paytmURL = "https://securegw-stage.paytm.in/order/process?orderid=" + "20";
//        string outputHTML = "<html>";
//        outputHTML += "<head>";
//        outputHTML += "<title>Merchant Check Out Page</title>";
//        outputHTML += "</head>";
//        outputHTML += "<body>";
//        outputHTML += "<center>Please do not refresh this page...</center>"; //you can put h1 tag here
//        outputHTML += "<form method='post' action='" + paytmURL + "' name='f1'>";
//        outputHTML += "<table border='1'>";
//        outputHTML += "<tbody>";
//        foreach (string key in parameters.Keys)
//        {
//            outputHTML += "<input type='hidden' name='" + key + "' value='" + parameters[key] + "'>";
//        }
//        outputHTML += "<input type='hidden' name='CHECKSUMHASH' value='" + checksum + "'>";
//        outputHTML += "</tbody>";
//        outputHTML += "</table>";
//        outputHTML += "<script type='text/javascript'>";
//        outputHTML += "document.f1.submit();";
//        outputHTML += "</script>";
//        outputHTML += "</form>";
//        outputHTML += "</body>";
//        outputHTML += "</html>";
//        Response.Write(outputHTML);
//    }
//    }
