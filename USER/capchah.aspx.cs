using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
public partial class USER_Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ValidateCaptcha(object sender, ServerValidateEventArgs e)
    {
        Captcha1.ValidateCaptcha(txtCaptcha.Text.Trim());
        e.IsValid = Captcha1.UserValidated;
        if (e.IsValid)
        {
            //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Valid Captcha!');", true);
            Response.Redirect("Hotelrecipt.aspx");
        }
    }
}