using System;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using MaremmaNelTufo;

public partial class Prenotazione : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        using (var session = DataBaseUtilities.OpenSession())
        {
            using (var transaction = session.BeginTransaction())

            {
                var number = DataBaseUtilities.GetNumeroPrenotazioni();
                lblNumeroUtenti.ForeColor = Color.WhiteSmoke;
                lblNumeroUtenti.Text =
                    "Prenota con noi. Il nostro sistema di prenotazione è già stato utilizzato da: ";


                lblNumero.Text = number.ToString() + " ";

                PhotoUtils.GetImages( "/luna/", divCameraMatrimoniale);
                PhotoUtils.GetImages("/terrazza/", ulApp1);
                PhotoUtils.GetImages("/arcobaleno/", ulApp2);
                PhotoUtils.GetImages("/sole/", ulTripla);
                PhotoUtils.GetImages("/edera/", ulQuadrupla);
                //PhotoUtils.GetImages("/caminetto/", ulApp2);
                var checkIn = Convert.ToDateTime(Request.QueryString["i"]);
        var checkOut = Convert.ToDateTime(Request.QueryString["o"]);
        int numeroAdu = 0;
        int numeroBam = 0;
        string etaBambini="";
        if (!string.IsNullOrEmpty(Request.QueryString["na"]))
        {
            numeroAdu = Convert.ToInt32(Request.QueryString["na"]);
        }
        if (!string.IsNullOrEmpty(Request.QueryString["nb"]))
        { 
            numeroBam = Convert.ToInt32(Request.QueryString["nb"]);
        }

        if (!string.IsNullOrEmpty(Request.QueryString["eb"]))
        {
            etaBambini = (Request.QueryString["eb"]).ToString();
        }
        if (checkIn != DateTime.MinValue && checkOut != DateTime.MinValue)
        {
            ctrlPrenotazioni.CheckInDate = checkIn;
            ctrlPrenotazioni.CheckOutDate = checkOut;
            ctrlPrenotazioni.NumeroAdulti = numeroAdu;
            ctrlPrenotazioni.NumeroBambini = numeroBam;
            ctrlPrenotazioni.EtaBambini = etaBambini;

            ctrlCameraMatrimoniale.DataArrivo = checkIn;
            ctrlapp1.DataArrivo = checkIn;
            ctrlapp2.DataArrivo = checkIn;
            Tripla.DataArrivo = checkIn;
            Quadrupla.DataArrivo = checkIn;

            ctrlCameraMatrimoniale.DataPartenza = checkOut;
            ctrlapp1.DataPartenza = checkOut;
            ctrlapp2.DataPartenza = checkOut;
            Tripla.DataPartenza = checkOut;
            Quadrupla.DataPartenza = checkOut;

            ctrlCameraMatrimoniale.numeroBambini = numeroBam;
            ctrlCameraMatrimoniale.numeroAdulti = numeroAdu;
            ctrlCameraMatrimoniale.etaBambini = etaBambini;

            ctrlapp1.NumeroBambini = numeroBam;
            ctrlapp1.NumeroAdulti = numeroAdu;
            ctrlapp1.EtaBambini = etaBambini;

            ctrlapp2.NumeroAdulti= numeroAdu;
            ctrlapp2.NumeroBambini = numeroBam;
            ctrlapp2.EtaBambini = etaBambini;

            Tripla.numeroAdulti = numeroAdu;
            Tripla.numeroBambini = numeroBam;
            Tripla.etaBambini = etaBambini;

            Quadrupla.numeroAdulti = numeroAdu;
            Quadrupla.numeroBambini = numeroBam;
            Quadrupla.etaBambini = etaBambini;

                    CameraMatrimonialeDisponibilitaDB cameraMatrimonialeDisponibilita = new CameraMatrimonialeDisponibilitaDB();
            AppartamentoUnaCameraDisponibilitaDB app1Disponibilita = new AppartamentoUnaCameraDisponibilitaDB();
            AppartamentoDueCamereDisponibilitaDB app2Disponibilita = new AppartamentoDueCamereDisponibilitaDB();
            CameraTriplaDisponibilitaDB triplaDisponibilita = new CameraTriplaDisponibilitaDB();
            CameraQuadruplaDisponibilitaDB quadruplaDisponibilita = new CameraQuadruplaDisponibilitaDB();
                    var numeroAdulti = numeroAdu;
            var numeroBambini = numeroBam;
            var checkInDate = checkIn;
            var checkOutDate = checkOut;
            var numeroOspiti = numeroAdulti + numeroBambini;
            var range = Enumerable.Range(0,
                    Convert.ToDateTime(checkOutDate).Subtract(Convert.ToDateTime(checkInDate)).Days)
                .Select(offset => Convert.ToDateTime(checkInDate).AddDays(offset))
                .ToArray();
            int cameraAvailable = 0;
            int cameraQuantita = 0;
            int app1Available = 0;
            int app2Available = 0;
            int triplaAvailable = 0;
            int quadruplaAvailable = 0;
            double prezzoTotale = 0;
            double prezzoTotaleApp1 = 0;
            double prezzoTotaleApp2 = 0;
            double prezzoTotaleTripla = 0;
            double prezzoTotaleQuadrupla = 0;
            int i = 0;

            ctrlCameraMatrimoniale.DataArrivo = Convert.ToDateTime(checkInDate);
            ctrlCameraMatrimoniale.DataPartenza = Convert.ToDateTime(checkOutDate);

           
         
                    //    //Cliente cliente;
                    foreach (var day in range)
                    {
                        if (ExtractCameraDisponibilità(cameraMatrimonialeDisponibilita, session, transaction, day, range, ref cameraAvailable, ref prezzoTotale, ref cameraQuantita))
                        {
                            
                        }
                        else
                        {
                            ResultForCamera(numeroOspiti, cameraAvailable, range, prezzoTotale, cameraQuantita);
                        }
                        if (ExtractApp1Disponibilità(app1Disponibilita, session, transaction, day, range, ref app1Available, ref prezzoTotaleApp1))
                        {
                            
                        }
                        else
                        {
                            ResultForAppartamento1(numeroOspiti, app1Available, range, prezzoTotaleApp1);
                        }
                        if (ExtractApp2Disponibilità(app2Disponibilita, session, transaction, day, range, ref app2Available, ref prezzoTotaleApp2))
                        {

                        }
                        else
                        {
                            ResultForAppartamento2(numeroOspiti, app2Available, range, prezzoTotaleApp2);
                        }
                        if (ExtractTriplaDisponibilità(triplaDisponibilita, session, transaction, day, range, ref triplaAvailable, ref prezzoTotaleTripla))
                        {
                            
                        }
                        else
                        {
                            ResultForTripla(numeroOspiti, triplaAvailable, range, prezzoTotaleTripla);
                        }
                        
                        if (ExtractQuadruplaDisponibilità(quadruplaDisponibilita, session, transaction, day, range, ref quadruplaAvailable, ref prezzoTotaleQuadrupla))
                        {
                            
                        }
                        else
                        {
                            ResultForQuadrupla(numeroOspiti, quadruplaAvailable, range, prezzoTotaleQuadrupla);
                        }
                    }

                   
                  
                   
                    
                    

                }
                else
                {
                    pnlCameraMatrimoniale.Visible = false;
                    pnlAppartamento1.Visible = false;
                    pnlAppartamento2.Visible = false;
                    pnlTripla.Visible = false;
                    pnlQuadrupla.Visible = false;
                }
            }
        }    
    }
    protected override void OnPreRender(EventArgs e)
    {
        if (Session["checkIn"]!=null)
        {
            ctrlPrenotazioni.CheckInDate = Convert.ToDateTime(Session["checkIn"]);
        }
        if (Session["checkOut"]!=null)
        {
            ctrlPrenotazioni.CheckOutDate = Convert.ToDateTime(Session["checkOut"]);
        }
        if (Session["NumeroAdulti"] != null)
        {
            ctrlPrenotazioni.NumeroAdulti = Convert.ToInt32(Session["NumeroAdulti"]);
        }
        if (Session["NumeroBambini"] != null)
        {
            ctrlPrenotazioni.NumeroBambini = Convert.ToInt32(Session["NumeroBambini"]);
        }
        if (Session["EtaBambini"] != null) { 
            ctrlPrenotazioni.EtaBambini = Session["EtaBambini"].ToString();
        }

  
    }
    private bool ExtractCameraDisponibilità(CameraMatrimonialeDisponibilitaDB cameraMatrimonialeDisponibilita,
        SqlConnection session, SqlTransaction transaction, DateTime day, DateTime[] range, ref int cameraAvailable,
        ref double prezzoTotale, ref  int quantità)
    {
        Camere camera = cameraMatrimonialeDisponibilita.SelectCamera(session, transaction, day);
        if (camera != null && camera.Quantita>0)
        {
            if (range.Length >= camera.SoggiornoMinimo)
            {
                cameraAvailable = cameraAvailable + 1;
                prezzoTotale = prezzoTotale + camera.Prezzo;
                quantità = camera.Quantita;
            }
            else
            {
                StringBuilder sb = new StringBuilder();
                sb.AppendLine("Nelle date selezionate il soggiorno minimo è di: " +
                              camera.SoggiornoMinimo + " notti.");
                lblPrezzoCamera.Text = sb.ToString();
                pnlCameraMatrimoniale.Visible = true;
                prenotaCamera.Visible = false;
                lblRassicurazioneCamera.Visible = false;
                return true;
            }
        }
        return false;
    }

    private bool ExtractApp1Disponibilità(AppartamentoUnaCameraDisponibilitaDB App1Disponibilità,
    SqlConnection session, SqlTransaction transaction, DateTime day, DateTime[] range, ref int app1Avalaible,
    ref double prezzoTotaleApp1)
    {
        Camere camera = App1Disponibilità.SelectCamera(session, transaction, day);
        if (camera != null && camera.Quantita > 0)
        {
            if (range.Length >= camera.SoggiornoMinimo)
            {
                app1Avalaible = app1Avalaible + 1;
                prezzoTotaleApp1 = prezzoTotaleApp1 + camera.Prezzo;
            }
            else
            {
                StringBuilder sb = new StringBuilder();
                sb.AppendLine("Nelle date selezionate il soggiorno minimo è di:" +
                              camera.SoggiornoMinimo + " Notti.");
                lblAppartamento1.Text = sb.ToString();
                pnlAppartamento1.Visible = true;
                Button1.Visible = false;
                lblRassicurazioneApp1.Visible = false;
                return true;
            }
        }
        return false;
    }


    private bool ExtractApp2Disponibilità(AppartamentoDueCamereDisponibilitaDB App2Disponibilità,
 SqlConnection session, SqlTransaction transaction, DateTime day, DateTime[] range, ref int app2Avalaible,
 ref double prezzoTotaleApp2)
    {
        Camere camera = App2Disponibilità.SelectCamera(session, transaction, day);
        if (camera != null && camera.Quantita > 0)
        {
            if (range.Length >= camera.SoggiornoMinimo)
            {
                app2Avalaible = app2Avalaible + 1;
                prezzoTotaleApp2 = prezzoTotaleApp2 + camera.Prezzo;
            }
            else
            {
                StringBuilder sb = new StringBuilder();
                sb.AppendLine("Nelle date selezionate il soggiorno minimo è di:" +
                              camera.SoggiornoMinimo + " notti.");
                lblAppartamento2.Text = sb.ToString();
                pnlAppartamento2.Visible = true;
                Button2.Visible = false;
                lblRassicurazioneApp2.Visible = false;
                return true;
            }
        }
        return false;
    }

    private bool ExtractTriplaDisponibilità(CameraTriplaDisponibilitaDB triplaDisponibilità,
        SqlConnection session, SqlTransaction transaction, DateTime day, DateTime[] range, ref int triplaAvalaible,
        ref double prezzoTotaleTripla)
    {
        Camere camera = triplaDisponibilità.SelectCamera(session, transaction, day);
        if (camera != null && camera.Quantita > 0)
        {
            if (range.Length >= camera.SoggiornoMinimo)
            {
                triplaAvalaible = triplaAvalaible + 1;
                prezzoTotaleTripla = prezzoTotaleTripla + camera.Prezzo;
            }
            else
            {
                StringBuilder sb = new StringBuilder();
                sb.AppendLine("Nelle date selezionate il soggiorno minimo è di:" +
                              camera.SoggiornoMinimo + " notti.");
                lblTripla.Text = sb.ToString();
                pnlTripla.Visible = true;
                ButtonT.Visible = false;
                lblRassicurazioneT.Visible = false;
                return true;
            }
        }
        return false;
    }



    private bool ExtractQuadruplaDisponibilità(CameraQuadruplaDisponibilitaDB quadruplaDisponibilità,
        SqlConnection session, SqlTransaction transaction, DateTime day, DateTime[] range, ref int quadruplaAvalaible,
        ref double prezzoTotaleQuadrupla)
    {
        Camere camera = quadruplaDisponibilità.SelectCamera(session, transaction, day);
        if (camera != null && camera.Quantita > 0)
        {
            if (range.Length >= camera.SoggiornoMinimo)
            {
                quadruplaAvalaible = quadruplaAvalaible + 1;
                prezzoTotaleQuadrupla = prezzoTotaleQuadrupla + camera.Prezzo;
            }
            else
            {
                StringBuilder sb = new StringBuilder();
                sb.AppendLine("Nelle date selezionate il soggiorno minimo è di:" +
                              camera.SoggiornoMinimo + " notti.");
                lblQuadrupla.Text = sb.ToString();
                pnlQuadrupla.Visible = true;
                ButtonQ.Visible = false;
                lblRassicurazioneQ.Visible = false;
                return true;
            }
        }
        return false;
    }


    private void ResultForCamera(int numeroOspiti, int cameraAvailable, DateTime[] range, double prezzoTotale, int cameraQuantita)
    {
        StringBuilder sb = new StringBuilder();
        switch (numeroOspiti)
        {
            case 1:
                if (cameraAvailable == (range.Length))
                {
                    sb.Clear();
                    var sconto = 10 * range.Length;
                    sb.AppendLine("<p style='font-size: x-large; color: red'>" + (Convert.ToInt32(prezzoTotale) - sconto) + " €</p>");
                    sb.AppendLine("<p style='font-size: large;'>La sistemazione è composta da una camera con letto matrimoniale, ed un bagno con doccia.</p>");
                    GetMessage(sb);
                    lblPrezzoCamera.Text = sb.ToString();
                    pnlCameraMatrimoniale.Visible = true;
                    prenotaCamera.Visible = true;
                    hrMatr.Visible = true;
                }
                else
                {
                    sb.Clear();
                    pnlCameraMatrimoniale.Visible = true;
                    sb.AppendLine("<p style='font-size: large;'>Ci scusiamo, ma è possibile che il calendario non sia aggiornato o che il sistema non riesca ad elaborare la tua richiesta, ti invitiamo a contattarci al 342-3282955 o ad inviarci una e-mail a info@maremmaneltufo.com; Sarà nostra premura trovare la soluzione più adatta alle tue esigenze. Grazie, lo Staff!</p>");
                    lblPrezzoCamera.Text = sb.ToString();
                    lblRassicurazioneCamera.Visible = false;
                    prenotaCamera.Visible = false;
                    hrMatr.Visible = true;
                }
                break;
            case 2:
                if (cameraAvailable == (range.Length))
                {
                    sb.Clear();
                    sb.AppendLine("<p style='font-size: x-large; color: red'>" + (Convert.ToInt32(prezzoTotale)) + " €</p>");
                    sb.AppendLine("<p style='font-size: large;'>La sistemazione è composta da una camera con letto matrimoniale, ed un bagno con doccia.</p>");
                    GetMessage(sb); 
                    lblPrezzoCamera.Text = sb.ToString();
                    pnlCameraMatrimoniale.Visible = true;
                    prenotaCamera.Visible = true;
                    hrMatr.Visible = true;
                }
                else
                {
                    sb.Clear();
                    pnlCameraMatrimoniale.Visible = true;
                    sb.AppendLine("<p style='font-size: large;'>Ci scusiamo, ma è possibile che il calendario non sia aggiornato o che il sistema non riesca ad elaborare la tua richiesta, ti invitiamo a contattarci al 342-3282955 o ad inviarci una e-mail a info@maremmaneltufo.com; Sarà nostra premura trovare la soluzione più adatta alle tue esigenze. Grazie, lo Staff!</p>");
                    lblPrezzoCamera.Text = sb.ToString();
                    lblRassicurazioneCamera.Visible = false;
                    prenotaCamera.Visible = false;
                    hrMatr.Visible = true;
                }
                break;

            case 3:
              
                if (cameraAvailable == (range.Length))
                {
                    sb.Clear();
                    var extra = 25 * range.Length;
                    sb.AppendLine("<p style='font-size: x-large; color: red'>" + (Convert.ToInt32(prezzoTotale) + Convert.ToInt32(extra)) + " €</p>");
                    sb.AppendLine("<p style='font-size: large;'>La sistemazione è composta da una camera con letto matrimoniale, un letto singolo ed un bagno con doccia.</p>");
                    GetMessage(sb);
                    lblPrezzoCamera.Text = sb.ToString();
                    pnlCameraMatrimoniale.Visible = true;
                    prenotaCamera.Visible = true;
                    hrMatr.Visible = true;
                }
                else
                {
                    sb.Clear();
                    sb.AppendLine("<p style='font-size: large;'>Ci scusiamo, ma è possibile che il calendario non sia aggiornato o che il sistema non riesca ad elaborare la tua richiesta, ti invitiamo a contattarci al 342-3282955 o ad inviarci una e-mail a info@maremmaneltufo.com; Sarà nostra premura trovare la soluzione più adatta alle tue esigenze. Grazie, lo Staff!</p>");
                    lblPrezzoCamera.Text = sb.ToString();
                    lblRassicurazioneCamera.Visible = false;
                    pnlCameraMatrimoniale.Visible = true;                       
                    prenotaCamera.Visible = false;
                    hrMatr.Visible = true;
                }
                break;

            case 4:
                if (cameraAvailable == (range.Length) && cameraQuantita.Equals(2))
                {
                    sb.Clear();
                    hCamera.InnerText = "2x Camera Matrimoniale Deluxe";
                    sb.AppendLine("<p style='font-size: x-large; color: red'>" + (Convert.ToInt32(prezzoTotale)) * 2  + " €</p>");
                    sb.AppendLine("<p style='font-size: large;'>Le 2 sistemazioni si compongono di da una camera con letto matrimoniale, un letto singolo ed un bagno con doccia.</p>");
                    GetMessage(sb);
                    lblPrezzoCamera.Text = sb.ToString();
                    pnlCameraMatrimoniale.Visible = true;
                    prenotaCamera.Visible = true;
                }
                else
                {
                    sb.Clear();
                    sb.AppendLine("<p style='font-size: large;'>Ci scusiamo, ma è possibile che il calendario non sia aggiornato o che il sistema non riesca ad elaborare la tua richiesta, ti invitiamo a contattarci al 342-3282955 o ad inviarci una e-mail a info@maremmaneltufo.com; Sarà nostra premura trovare la soluzione più adatta alle tue esigenze. Grazie, lo Staff!</p>");
                    lblPrezzoCamera.Text = sb.ToString();
                    lblRassicurazioneCamera.Visible = false;
                    pnlCameraMatrimoniale.Visible = true;
                    prenotaCamera.Visible = false;
                    hrMatr.Visible = true;
                }
                break;
                
            default:
                pnlCameraMatrimoniale.Visible = false;
                hrMatr.Visible = false;
                break;
        }
    }

    private void ResultForTripla(int numeroOspiti, int cameraAvailable, DateTime[] range, double prezzoTotale)
    {
        StringBuilder sb = new StringBuilder();
        switch (numeroOspiti)
        {
            case 2:
                if (cameraAvailable == (range.Length))
                {
                    var sconto = 10 * range.Length;
                    sb.Clear();
                    sb.AppendLine("<p style='font-size: x-large; color: red'>" + (Convert.ToInt32(prezzoTotale) - sconto) + " €</p>");
                    sb.AppendLine("<p style='font-size: large;'>La sistemazione è composta da una camera con letto matrimoniale, un letto singolo ed un bagno con doccia e vasca.</p>");
                    GetMessage(sb);
                    lblTripla.Text = sb.ToString();
                    pnlTripla.Visible = true;
                    ButtonT.Visible = true;
                    hrTrip.Visible = true;
                }
                else
                {
                    sb.Clear();
                    sb.AppendLine("<p style='font-size: large;'>Ci scusiamo, ma è possibile che il calendario non sia aggiornato o che il sistema non riesca ad elaborare la tua richiesta, ti invitiamo a contattarci al 342-3282955 o ad inviarci una e-mail a info@maremmaneltufo.com; Sarà nostra premura trovare la soluzione più adatta alle tue esigenze. Grazie, lo Staff!</p>");
                    lblTripla.Text = sb.ToString();
                    lblRassicurazioneT.Visible = false;
                    pnlTripla.Visible = true;          
                    ButtonT.Visible = false;
                    hrTrip.Visible = true;
                }
                break;

            case 3:
                if (cameraAvailable == (range.Length))
                {

                    sb.AppendLine("<p style='font-size: x-large; color: red'>" + (Convert.ToInt32(prezzoTotale)) + " €</p>");
                    sb.AppendLine("<p style='font-size: large;'>La sistemazione è composta da una camera con letto matrimoniale, un letto singolo ed un bagno con doccia e vasca.</p>");
                    GetMessage(sb);
                    lblTripla.Text = sb.ToString();
                    pnlTripla.Visible = true;
                    ButtonT.Visible = true;
                    hrTrip.Visible = true;

                }
                else
                {

                    sb.Clear();
                    sb.AppendLine("<p style='font-size: large;'>Ci scusiamo, ma è possibile che il calendario non sia aggiornato o che il sistema non riesca ad elaborare la tua richiesta, ti invitiamo a contattarci al 342-3282955 o ad inviarci una e-mail a info@maremmaneltufo.com; Sarà nostra premura trovare la soluzione più adatta alle tue esigenze. Grazie, lo Staff!</p>");
                    lblTripla.Text = sb.ToString();
                    lblRassicurazioneT.Visible = false;
                    pnlTripla.Visible = true;
                    ButtonT.Visible = false;
                    hrTrip.Visible = true;

                }
                break;

            default:
                sb.Clear();
                pnlTripla.Visible = false;
                hrTrip.Visible = false;

                break;
        }
    }


    private void ResultForQuadrupla(int numeroOspiti, int cameraAvailable, DateTime[] range, double prezzoTotale)
    {
        StringBuilder sb = new StringBuilder();
        switch (numeroOspiti)
        {
            case 3:
                if (cameraAvailable == (range.Length))
                {
                    var sconto = 10 * range.Length;
                    sb.Clear();
                    sb.AppendLine("<p style='font-size: x-large; color: red'>" + (Convert.ToInt32(prezzoTotale) - sconto) + " €</p>");
                    sb.AppendLine("<p style='font-size: large;'>La sistemazione è composta da una camera con letto matrimoniale, una camera con due letti singolo ed un bagno con doccia.</p>");
                    GetMessage(sb);
                    lblQuadrupla.Text = sb.ToString();
                    pnlQuadrupla.Visible = true;
                    ButtonQ.Visible = true;
                    hrQuad.Visible = true;
                }
                else
                {
                   
                    sb.Clear();
                    sb.AppendLine("<p style='font-size: large;'>Ci scusiamo, ma è possibile che il calendario non sia aggiornato o che il sistema non riesca ad elaborare la tua richiesta, ti invitiamo a contattarci al 342-3282955 o ad inviarci una e-mail a info@maremmaneltufo.com; Sarà nostra premura trovare la soluzione più adatta alle tue esigenze. Grazie, lo Staff!</p>");
                    lblQuadrupla.Text = sb.ToString();
                    lblRassicurazioneQ.Visible = false;
                    pnlQuadrupla.Visible = true;
                    ButtonQ.Visible = false;
                    hrQuad.Visible = true;
                }
                break;

            case 4:
                if (cameraAvailable == (range.Length))
                {
                    sb.Clear();
                    sb.AppendLine("<p style='font-size: x-large; color: red'>" + (Convert.ToInt32(prezzoTotale))  + " €</p>");
                    sb.AppendLine("<p style='font-size: large;'>La sistemazione è composta da una camera con letto matrimoniale, una camera con due letti singolo ed un bagno con doccia.</p>");
                    GetMessage(sb);
                    lblQuadrupla.Text = sb.ToString();
                    pnlQuadrupla.Visible = true;
                    ButtonQ.Visible = true;
                    hrQuad.Visible = true;
                }
                else
                {
                    
                    sb.Clear();
                    sb.AppendLine("<p style='font-size: large;'>Ci scusiamo, ma è possibile che il calendario non sia aggiornato o che il sistema non riesca ad elaborare la tua richiesta, ti invitiamo a contattarci al 342-3282955 o ad inviarci una e-mail a info@maremmaneltufo.com; Sarà nostra premura trovare la soluzione più adatta alle tue esigenze. Grazie, lo Staff!</p>");
                    lblQuadrupla.Text = sb.ToString();
                    lblRassicurazioneQ.Visible = false;
                    pnlQuadrupla.Visible = true;
                    ButtonQ.Visible = false;
                    hrQuad.Visible = true;
                }
                break;

            case 5:
                if (cameraAvailable == (range.Length))
                {
                    var extra = 25 * range.Length;
                    sb.Clear();
                    sb.AppendLine("<p style='font-size: x-large; color: red'>" + (Convert.ToInt32(prezzoTotale) + Convert.ToInt32(extra)) + " €</p>");
                    sb.AppendLine("<p style='font-size: large;'>La sistemazione è composta da una camera con letto matrimoniale e letto singolo, una camera con due letti singolo ed un bagno con doccia.</p>");
                    GetMessage(sb);
                    lblQuadrupla.Text = sb.ToString();
                    pnlQuadrupla.Visible = true;
                    ButtonQ.Visible = true;
                    hrQuad.Visible = true;
                }
                else
                {
                    
                    sb.Clear();
                    sb.AppendLine("<p style='font-size: large;'>Ci scusiamo, ma è possibile che il calendario non sia aggiornato o che il sistema non riesca ad elaborare la tua richiesta, ti invitiamo a contattarci al 342-3282955 o ad inviarci una e-mail a info@maremmaneltufo.com; Sarà nostra premura trovare la soluzione più adatta alle tue esigenze. Grazie, lo Staff!</p>");
                    lblQuadrupla.Text = sb.ToString();
                    lblRassicurazioneQ.Visible = false;
                    pnlQuadrupla.Visible = true;
                    ButtonQ.Visible = false;
                    hrQuad.Visible = true;
                }
                break;

            default:              
                pnlQuadrupla.Visible = false;
                hrQuad.Visible = false;
                break;
        }
    }
    private static void GetMessage(StringBuilder sb)
    {
        sb.AppendLine("<p style = 'font-size: large;'> La prenotazione comprende:<br /></p>");
        sb.AppendLine("<ul style = 'font-size: large;'> " +
                      "<li>Pernottamento</li>" +
                      "<li>Colazione continentale</li>" +
                      "<li>Parcheggio gratuito</li>" +
                      "<li>WiFi gratuito</li>" +
                      "</ul>");
    }

 

    private void ResultForAppartamento1(int numeroOspiti, int cameraAvailable, DateTime[] range, double prezzoTotale)
    {
        StringBuilder sb = new StringBuilder();
        switch (numeroOspiti)
        {  
            case 1:
                if (cameraAvailable == (range.Length))
                {
                    var sconto = 10 * range.Length;
                    sb.Clear();
                    sb.AppendLine("<p style='font-size: x-large; color: red'>" + (Convert.ToInt32(prezzoTotale) - Convert.ToInt32(sconto)) + " €</p>");
                    sb.AppendLine("<p style='font-size: large;'>La sistemazione è composta da una camera con letto matrimoniale, un bagno con doccia e soggiorno con angolo cottura.</p>");
                    GetMessage(sb);
                    lblAppartamento1.Text = sb.ToString();
                    pnlAppartamento1.Visible = true;
                    Button1.Visible = true;
                    hrApp1.Visible = true;
                }
                else
                {
                    
                    pnlAppartamento1.Visible = true;
                    sb.Clear();
                    sb.AppendLine("<p style='font-size: large;'>Ci scusiamo, ma è possibile che il calendario non sia aggiornato o che il sistema non riesca ad elaborare la tua richiesta, ti invitiamo a contattarci al 342-3282955 o ad inviarci una e-mail a info@maremmaneltufo.com; Sarà nostra premura trovare la soluzione più adatta alle tue esigenze. Grazie, lo Staff!</p>");
                    lblRassicurazioneApp1.Visible = false;
                    lblAppartamento1.Text = sb.ToString();
                    Button1.Visible = false;
                    hrApp1.Visible = true;
                }
                break;
            case 2:
                if (cameraAvailable == (range.Length))
                {
                    sb.Clear();
                    sb.AppendLine("<p style='font-size: x-large; color: red'>" + (Convert.ToInt32(prezzoTotale)) + " €</p>");
                    sb.AppendLine("<p style='font-size: large;'>La sistemazione è composta da una camera con letto matrimoniale, un bagno con doccia e soggiorno con angolo cottura.</p>");
                    GetMessage(sb);
                    lblAppartamento1.Text = sb.ToString();
                    pnlAppartamento1.Visible = true;
                    Button1.Visible = true;
                    hrApp1.Visible = true;
                }
                else
                {
                    pnlAppartamento1.Visible = true;
                    sb.Clear();
                    sb.AppendLine("<p style='font-size: large;'>Ci scusiamo, ma è possibile che il calendario non sia aggiornato o che il sistema non riesca ad elaborare la tua richiesta, ti invitiamo a contattarci al 342-3282955 o ad inviarci una e-mail a info@maremmaneltufo.com; Sarà nostra premura trovare la soluzione più adatta alle tue esigenze. Grazie, lo Staff!</p>");
                    lblRassicurazioneApp1.Visible = false;
                    lblAppartamento1.Text = sb.ToString();
                    Button1.Visible = false;
                    hrApp1.Visible = true;
                }
                break;

            case 3:
                if (cameraAvailable == (range.Length))
                {
                    var extra = 25 * range.Length;
                    sb.Clear();
                    sb.AppendLine("<p style='font-size: x-large; color: red'>" + (Convert.ToInt32(prezzoTotale) + Convert.ToInt32(extra)) + " €</p>");
                    sb.AppendLine("<p style='font-size: large;'>La sistemazione è composta da una camera con letto matrimoniale, un letto singolo, un bagno con doccia e soggiorno con angolo cottura.</p>");
                    GetMessage(sb);
                    lblAppartamento1.Text = sb.ToString();
                    pnlAppartamento1.Visible = true;
                    Button1.Visible = true;
                    hrApp1.Visible = true;
                }
                else
                {
                    pnlAppartamento1.Visible = true;
                    sb.Clear();
                    sb.AppendLine("<p style='font-size: large;'>Ci scusiamo, ma è possibile che il calendario non sia aggiornato o che il sistema non riesca ad elaborare la tua richiesta, ti invitiamo a contattarci al 342-3282955 o ad inviarci una e-mail a info@maremmaneltufo.com; Sarà nostra premura trovare la soluzione più adatta alle tue esigenze. Grazie, lo Staff!</p>");
                    lblRassicurazioneApp1.Visible = false;
                    lblAppartamento1.Text = sb.ToString();
                    Button1.Visible = false;
                    hrApp1.Visible = true;
                }
                break;

            case 4:
                if (cameraAvailable == (range.Length))
                {
                    var extra = 50 * range.Length;
                    sb.Clear();
                    sb.AppendLine("<p style='font-size: x-large; color: red'>" + (Convert.ToInt32(prezzoTotale) + Convert.ToInt32(extra)) + " €</p>");
                    sb.AppendLine("<p style='font-size: large;'>La sistemazione è composta da una camera con letto matrimoniale, un letto a castello, un bagno con doccia e soggiorno con angolo cottura .</p>");
                    GetMessage(sb);
                    lblAppartamento1.Text = sb.ToString();
                    pnlAppartamento1.Visible = true;
                    Button1.Visible = true;
                    hrApp1.Visible = true;
                }
                else
                {
                    pnlAppartamento1.Visible = true;
                    sb.Clear();
                    sb.AppendLine("<p style='font-size: large;'>Ci scusiamo, ma è possibile che il calendario non sia aggiornato o che il sistema non riesca ad elaborare la tua richiesta, ti invitiamo a contattarci al 342-3282955 o ad inviarci una e-mail a info@maremmaneltufo.com; Sarà nostra premura trovare la soluzione più adatta alle tue esigenze. Grazie, lo Staff!</p>");
                    lblRassicurazioneApp1.Visible = false;
                    lblAppartamento1.Text = sb.ToString();
                    Button1.Visible = false;
                    hrApp1.Visible = true;
                }
                break;
            default:
                pnlAppartamento1.Visible = false;
                hrApp1.Visible = false;
                break;
        }
    }


    private void ResultForAppartamento2(int numeroOspiti, int cameraAvailable, DateTime[] range, double prezzoTotale)
    {
        StringBuilder sb = new StringBuilder();
        switch (numeroOspiti)
        {
            case 2:
                if (cameraAvailable == (range.Length))
                {
                    sb.Clear();
                    sb.AppendLine("<p style='font-size: x-large; color: red'>" + (Convert.ToInt32(prezzoTotale)) + " €</p>");
                    sb.AppendLine("<p style='font-size: large;'>La sistemazione è composta da una camera con letto matrimoniale, una camera con letto singolo, un bagno con doccia e soggiorno con cucina.</p>");
                    GetMessage(sb);
                    lblAppartamento2.Text = sb.ToString();
                    pnlAppartamento2.Visible = true;
                    Button2.Visible = true;
                    hrApp2.Visible = true;
                }
                else
                {
                    pnlAppartamento2.Visible = true;
                    sb.Clear();
                    sb.AppendLine("<p style='font-size: large;'>Ci scusiamo, ma è possibile che il calendario non sia aggiornato o che il sistema non riesca ad elaborare la tua richiesta, ti invitiamo a contattarci al 342-3282955 o ad inviarci una e-mail a info@maremmaneltufo.com; Sarà nostra premura trovare la soluzione più adatta alle tue esigenze. Grazie, lo Staff!</p>");
                    lblRassicurazioneApp2.Visible = false;
                    lblAppartamento2.Text = sb.ToString();
                    Button2.Visible = false;
                    hrApp2.Visible = true;
                }
                break;
            case 3:
                if (cameraAvailable == (range.Length))
                {
                    sb.Clear();
                    sb.AppendLine("<p style='font-size: x-large; color: red'>" + (Convert.ToInt32(prezzoTotale)) + " €</p>");
                    sb.AppendLine("<p style='font-size: large;'>La sistemazione è composta da una camera con letto matrimoniale, una camera con letto singolo, un bagno con doccia e soggiorno con cucina.</p>");
                    GetMessage(sb);
                    lblAppartamento2.Text = sb.ToString();
                    pnlAppartamento2.Visible = true;
                    Button2.Visible = true;
                    hrApp2.Visible = true;
                }
                else
                {
                    pnlAppartamento2.Visible = true;
                    sb.Clear();
                    sb.AppendLine("<p style='font-size: large;'>Ci scusiamo, ma è possibile che il calendario non sia aggiornato o che il sistema non riesca ad elaborare la tua richiesta, ti invitiamo a contattarci al 342-3282955 o ad inviarci una e-mail a info@maremmaneltufo.com; Sarà nostra premura trovare la soluzione più adatta alle tue esigenze. Grazie, lo Staff!</p>");
                    lblRassicurazioneApp2.Visible = false;
                    lblAppartamento2.Text = sb.ToString();
                    Button2.Visible = false;
                    hrApp2.Visible = true;
                }
                break;

            case 4:
               
                if (cameraAvailable == (range.Length))
                {
                    sb.Clear();
                    sb.AppendLine("<p style='font-size: x-large; color: red'>" + (Convert.ToInt32(prezzoTotale)) + " €</p>");
                    sb.AppendLine("<p style='font-size: large;'>La sistemazione è composta da una camera con letto matrimoniale, una camera con due letti singoli, un bagno con doccia e soggiorno con cucina.  Alternativamente è possibile avere due letti matrimoniali.Indicaci la tua preferenza in fase di prenotazione nel campo note.</ p > "); 
                    GetMessage(sb);
                    lblAppartamento2.Text = sb.ToString();
                    pnlAppartamento2.Visible = true;
                    Button2.Visible = true;
                    hrApp2.Visible = true;
                }
                else
                {
                    pnlAppartamento2.Visible = true;
                    sb.Clear();
                    sb.AppendLine("<p style='font-size: large;'>Ci scusiamo, ma è possibile che il calendario non sia aggiornato o che il sistema non riesca ad elaborare la tua richiesta, ti invitiamo a contattarci al 342-3282955 o ad inviarci una e-mail a info@maremmaneltufo.com; Sarà nostra premura trovare la soluzione più adatta alle tue esigenze. Grazie, lo Staff!</p>");
                    lblRassicurazioneApp2.Visible = false;
                    lblAppartamento2.Text = sb.ToString();
                    Button2.Visible = false;
                    hrApp2.Visible = true;
                }
                break;
        
            case 5:
                if (cameraAvailable == (range.Length))
                {
                    var extra = 25 * range.Length;
                    sb.Clear();
                    sb.AppendLine("<p style='font-size: x-large; color: red'>" + (Convert.ToInt32(prezzoTotale) + Convert.ToInt32(extra)) + " €</p>");
                    sb.AppendLine("<p style='font-size: large;'>La sistemazione è composta da una camera con letto matrimoniale e un letto singolo, una camera con due letti singoli, un bagno con doccia e soggiorno con cucina.  Alternativamente è possibile avere due letti matrimoniali.Indicaci la tua preferenza in fase di prenotazione nel campo note.</ p > "); ;
                    GetMessage(sb);
                    lblAppartamento2.Text = sb.ToString();
                    pnlAppartamento2.Visible = true;
                    Button2.Visible = true;
                    hrApp2.Visible = true;
                }
                else
                {
                    pnlAppartamento2.Visible = true;
                    sb.Clear();
                    sb.AppendLine("<p style='font-size: large;'>Ci scusiamo, ma è possibile che il calendario non sia aggiornato o che il sistema non riesca ad elaborare la tua richiesta, ti invitiamo a contattarci al 342-3282955 o ad inviarci una e-mail a info@maremmaneltufo.com; Sarà nostra premura trovare la soluzione più adatta alle tue esigenze. Grazie, lo Staff!</p>");
                    lblRassicurazioneApp2.Visible = false;
                    lblAppartamento2.Text = sb.ToString();
                    Button2.Visible = false;
                    hrApp2.Visible = true;
                }
                break;
            case 6:
                if (cameraAvailable == (range.Length))
                {
                    var extra = 50 * range.Length;
                    sb.Clear();
                    sb.AppendLine("<p style='font-size: x-large; color: red'>" + (Convert.ToInt32(prezzoTotale) + Convert.ToInt32(extra)) + " €</p>");
                    sb.AppendLine("<p style='font-size: large;'>La sistemazione è composta da una camera con letto matrimoniale e un letto singolo, una camera con tre letti singoli, un bagno con doccia e soggiorno con cucina.  Alternativamente è possibile avere due letti matrimoniali.Indicaci la tua preferenza in fase di prenotazione nel campo note.</ p > "); ;
                    GetMessage(sb);
                    lblAppartamento2.Text = sb.ToString();
                    pnlAppartamento2.Visible = true;
                    Button2.Visible = true;
                    hrApp2.Visible = true;
                }
                else
                {
                    pnlAppartamento2.Visible = true;
                    sb.Clear();
                    sb.AppendLine("<p style='font-size: large;'>Ci scusiamo, ma è possibile che il calendario non sia aggiornato o che il sistema non riesca ad elaborare la tua richiesta, ti invitiamo a contattarci al 342-3282955 o ad inviarci una e-mail a info@maremmaneltufo.com; Sarà nostra premura trovare la soluzione più adatta alle tue esigenze. Grazie, lo Staff!</p>");
                    lblRassicurazioneApp2.Visible = false;
                    lblAppartamento2.Text = sb.ToString();
                    Button2.Visible = false;
                    hrApp2.Visible = true;
                }
                break;
            case 7:
                if (cameraAvailable == (range.Length))
                {
                    var extra = 75 * range.Length;
                    sb.Clear();
                    sb.AppendLine("<p style='font-size: x-large; color: red'>" + (Convert.ToInt32(prezzoTotale) + Convert.ToInt32(extra)) + " €</p>");
                    sb.AppendLine("<p style='font-size: large;'>La sistemazione è composta da una camera con letto matrimoniale e un letto singolo, una camera con letto matrimomiale, due camere con due letti singoli,  due bagni di cui uno con doccia e vasca, e soggiorno con cucina.  Se desideri una diversa composizione dei letti, indicaci la tua preferenza in fase di prenotazione nel campo note.</ p > "); ;
                    GetMessage(sb);
                    lblAppartamento2.Text = sb.ToString();
                    pnlAppartamento2.Visible = true;
                    Button2.Visible = true;
                    hrApp2.Visible = true;
                }
                else
                {
                    pnlAppartamento2.Visible = true;
                    sb.Clear();
                    sb.AppendLine("<p style='font-size: large;'>Ci scusiamo, ma è possibile che il calendario non sia aggiornato o che il sistema non riesca ad elaborare la tua richiesta, ti invitiamo a contattarci al 342-3282955 o ad inviarci una e-mail a info@maremmaneltufo.com; Sarà nostra premura trovare la soluzione più adatta alle tue esigenze. Grazie, lo Staff!</p>");
                    lblRassicurazioneApp2.Visible = false;
                    lblAppartamento2.Text = sb.ToString();
                    Button2.Visible = false;
                    hrApp2.Visible = true;
                }
                break;
            case 8:
                if (cameraAvailable == (range.Length))
                {
                    var extra = 100 * range.Length;
                    sb.Clear();
                    sb.AppendLine("<p style='font-size: x-large; color: red'>" + (Convert.ToInt32(prezzoTotale) + Convert.ToInt32(extra)) + " €</p>");
                    sb.AppendLine("<p style='font-size: large;'>La sistemazione è composta da una camera con letto matrimoniale e un letto singolo, una camera con letto matrimomiale, due camere con due letti singoli,  due bagni di cui uno con doccia e vasca, e soggiorno con cucina.  Se desideri una diversa composizione dei letti, indicaci la tua preferenza in fase di prenotazione nel campo note.</ p > "); ;
                    GetMessage(sb);
                    lblAppartamento2.Text = sb.ToString();
                    pnlAppartamento2.Visible = true;
                    Button2.Visible = true;
                    hrApp2.Visible = true;
                }
                else
                {
                    pnlAppartamento2.Visible = true;
                    sb.Clear();
                    sb.AppendLine("<p style='font-size: large;'>Ci scusiamo, ma è possibile che il calendario non sia aggiornato o che il sistema non riesca ad elaborare la tua richiesta, ti invitiamo a contattarci al 342-3282955 o ad inviarci una e-mail a info@maremmaneltufo.com; Sarà nostra premura trovare la soluzione più adatta alle tue esigenze. Grazie, lo Staff!</p>");
                    lblRassicurazioneApp2.Visible = false;
                    lblAppartamento2.Text = sb.ToString();
                    Button2.Visible = false;
                    hrApp2.Visible = true;
                }
                break;
            case 9:
                if (cameraAvailable == (range.Length))
                {
                    var extra = 125 * range.Length;
                    sb.Clear();
                    sb.AppendLine("<p style='font-size: x-large; color: red'>" + (Convert.ToInt32(prezzoTotale) + Convert.ToInt32(extra)) + " €</p>");
                    sb.AppendLine("<p style='font-size: large;'>La sistemazione è composta da una camera con letto matrimoniale e un letto singolo, una camera con letto matrimomiale, due camere con due letti singoli,  due bagni di cui uno con doccia e vasca, e soggiorno con cucina.  Se desideri una diversa composizione dei letti, indicaci la tua preferenza in fase di prenotazione nel campo note.</ p > "); ;
                    GetMessage(sb);
                    lblAppartamento2.Text = sb.ToString();
                    pnlAppartamento2.Visible = true;
                    Button2.Visible = true;
                    hrApp2.Visible = true;
                }
                else
                {
                    pnlAppartamento2.Visible = true;
                    sb.Clear();
                    sb.AppendLine("<p style='font-size: large;'>Ci scusiamo, ma è possibile che il calendario non sia aggiornato o che il sistema non riesca ad elaborare la tua richiesta, ti invitiamo a contattarci al 342-3282955 o ad inviarci una e-mail a info@maremmaneltufo.com; Sarà nostra premura trovare la soluzione più adatta alle tue esigenze. Grazie, lo Staff!</p>");
                    lblRassicurazioneApp2.Visible = false;
                    lblAppartamento2.Text = sb.ToString();
                    Button2.Visible = false;
                    hrApp2.Visible = true;
                }
                break;

            default:
                pnlAppartamento2.Visible = false;
                hrApp2.Visible = false;
                break;

        }
    }



}
