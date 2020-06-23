using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using MaremmaNelTufo;

public partial class Gestione : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    
    protected void Submit1_OnClick(object sender, EventArgs e)
    {
        try
        {
            string result;
            if (DataBaseUtilities.isAuthenticated(UserEmail.Text.ToString(),UserPass.Text.ToString()))
            {
                
                
                HttpContext.Current.Session["isAuth"] = "true";
                Response.Redirect("GestioneStruttura.aspx",false);
               // FormsAuthentication.RedirectFromLoginPage(UserEmail.Text, Persist.Checked);
            }
            else
            {
                HttpContext.Current.Session["isAuth"] = "false";
                Msg.Text = "Utente non riconosciuto. Riprovare";
            }

          
        }
        catch (Exception ex)
        {
            HttpContext.Current.Session["isAuth"] = "false";
            Msg.Text ="Utente non riconosciuto. Riprovare";
        }

    }
}