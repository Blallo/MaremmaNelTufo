using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MaremmaNelTufo;


public partial class CleanDatabase : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
            DataBaseUtilities.CleanDatabase();
        }
        catch (Exception)
        {
            
            throw;
        }
    }
}