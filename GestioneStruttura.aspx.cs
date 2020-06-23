using System;
using System.Diagnostics;
using System.Net;
using System.Web;
using System.Web.Security;
using System.Web.Services;
using MaremmaNelTufo;

public partial class GestioneStruttura : System.Web.UI.Page
{
   protected void Page_Load(object sender, EventArgs e)
    {
        if ((string)HttpContext.Current.Session["isAuth"] == "false")
        {
            Response.Redirect("Gestione.aspx");
        }
    }

    protected override void OnInit(EventArgs e)
    {
       
        base.OnInit(e);
    }

    [WebMethod]
    public static void UpdateAvailability(string data, string quantity, string roomType)
    {
        string connectionString = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];
        var giorno = DateTime.Parse(data);
        if (!string.IsNullOrEmpty(quantity))
        {
            switch (roomType)
            {
                case "camera":
                    DataBaseUtilities.InsertCameraMatrimonialeAvailability(connectionString, giorno,
                        int.Parse(quantity), null, null);
                    break;
                case "app1":
                    DataBaseUtilities.InsertApaprtamento1Availability(connectionString, giorno, int.Parse(quantity),
                        null, null);
                    break;
                case "app2":
                    DataBaseUtilities.InsertAppartamento2Availability(connectionString, giorno, int.Parse(quantity),
                        null, null);
                    break;
                case "Tripla":
                    DataBaseUtilities.InsertCameraTriplaAvailability(connectionString, giorno, int.Parse(quantity),
                        null, null);
                    break;
                case "Quadrupla":
                    DataBaseUtilities.InsertCameraQuadruplaAvailability(connectionString, giorno, int.Parse(quantity),
                        null, null);
                    break;

            }
        }

    }

    [WebMethod]
    public static void UpdatePrice(string data, string price, string roomType)
    {
        string connectionString = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];
        var giorno = DateTime.Parse(data);
        if (!string.IsNullOrEmpty(price))
        {
            if (price.Contains("€"))
            {
                price = price.Split('€')[0];
            }
            switch (roomType)
            {
                case "camera":
                    DataBaseUtilities.InsertCameraMatrimonialeAvailability(connectionString, giorno, null, long.Parse(price), null);
                    break;
                case "app1":
                    DataBaseUtilities.InsertApaprtamento1Availability(connectionString, giorno, null, long.Parse(price), null);
                    break;
                case "app2":
                    DataBaseUtilities.InsertAppartamento2Availability(connectionString, giorno, null, long.Parse(price), null);
                    break;
                case "Tripla":
                    DataBaseUtilities.InsertCameraTriplaAvailability(connectionString, giorno, null, long.Parse(price), null);
                    break;
                case "Quadrupla":
                    DataBaseUtilities.InsertCameraQuadruplaAvailability(connectionString, giorno, null, long.Parse(price), null);
                    break;

            }
        }

    }

    [WebMethod]
    public static void UpdateRestrictione(string data, string restriction, string roomType)
    {
        string connectionString = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];
        var giorno = DateTime.Parse(data);
        if (!string.IsNullOrEmpty(restriction))
        {         
            switch (roomType)
            {
                case "camera":
                    DataBaseUtilities.InsertCameraMatrimonialeAvailability(connectionString, giorno, null, null, int.Parse(restriction));
                    break;
                case "app1":
                    DataBaseUtilities.InsertApaprtamento1Availability(connectionString, giorno, null, null, int.Parse(restriction));
                    break;
                case "app2":
                    DataBaseUtilities.InsertAppartamento2Availability(connectionString, giorno, null, null, int.Parse(restriction));
                    break;
                case "Tripla":
                    DataBaseUtilities.InsertCameraTriplaAvailability(connectionString, giorno, null, null, int.Parse(restriction));
                    break;
                case "Quadrupla":
                    DataBaseUtilities.InsertCameraQuadruplaAvailability(connectionString, giorno, null, null, int.Parse(restriction));
                    break;
            }
        }

    }

}