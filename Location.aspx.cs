using System;
using System.IO;
using System.Web.UI;

public partial class Location : Page
{

    protected void OnClick(object sender, EventArgs e)
    {
        string filePath = Server.MapPath("~/Content/B&BMaremmaNelTufo.gpx");
        FileInfo file = new FileInfo(filePath);
        if (file.Exists)
        {
            Response.ClearContent();
            Response.AddHeader("Content-Disposition", "attachment; filename=" + file.Name);
            Response.AddHeader("Content-Length", file.Length.ToString());
            Response.ContentType = "text/plain";
            Response.TransmitFile(file.FullName);
            Response.Flush();
        }
    }

    protected void lnkTomTom_OnClick(object sender, EventArgs e)
    {
        string filePath = Server.MapPath("~/Content/B&BMaremmaNelTufo.ov2");
        FileInfo file = new FileInfo(filePath);
        if (file.Exists)
        {
            Response.ClearContent();
            Response.AddHeader("Content-Disposition", "attachment; filename=" + file.Name);
            Response.AddHeader("Content-Length", file.Length.ToString());
            Response.ContentType = "text/plain";
            Response.TransmitFile(file.FullName);
            Response.Flush();
        }
    }
}