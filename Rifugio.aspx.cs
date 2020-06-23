using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class Rifugio : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {
        PhotoUtils.GetImages(Request.Url.AbsolutePath.Split('.')[0].ToLower() + "/", innerCarousel);
    }
}