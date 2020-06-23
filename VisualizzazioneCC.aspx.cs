using System;
using System.Web;

public partial class VisualizzazioneCC : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((string)HttpContext.Current.Session["isAuth"] == "false")
        {
            Response.Redirect("Gestione.aspx");
        }
    }
}