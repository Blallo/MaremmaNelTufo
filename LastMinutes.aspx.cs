using System;
using System.Text;
using System.Web;
using System.Web.Services;

public partial class LastMinutes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((string)HttpContext.Current.Session["isAuth"] == "false")
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("<script>");
            sb.Append("");
            sb.Append("</script>");
            Page.ClientScript.RegisterStartupScript(this.GetType(), "TestArrayScript", sb.ToString());
        }
    }
    [WebMethod]
    public static String TestMethod(string name, string pk, string value)
    {
        return "";
    }

}