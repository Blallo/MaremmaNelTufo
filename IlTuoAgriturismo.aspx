<%@ Page Language="C#" AutoEventWireup="true" CodeFile="IlTuoAgriturismo.aspx.cs" Inherits="IlTuoAgriturismo" %>

<%@ Register TagPrefix="uc" TagName="NavigationMenu" Src="~/Controls/NavigationMenu.ascx" %>
<%@ Register TagPrefix="uc" TagName="BoxInformazioni" Src="~/Controls/BoxInformazioniEventi.ascx" %>
<%@ Register TagPrefix="uc" TagName="Footer" Src="~/Controls/Footer.ascx" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Il tuo Agriturismo, B & B maremma tufo, pitigliano, terme, saturnia, agriturismi, toscana</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/bootstrap-theme.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/full-slider.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">
</head>

<!-- Bootstrap Core JavaScript -->

<body style="background-image: url('Images/stars.gif');">
    <uc:NavigationMenu runat="server" />
    <div class="wrapper">
        <div class="container belowNavBar">

            <div class="row">
            <div class="col-md-4">
                <img src="images/PrincipiDisney.png" class="img-responsive" />
            </div>

            <div class="col-md-6 didascaliaCorsivo" style="color: whitesmoke">
                Lo staff di maremma nel tufo è lieto di mettere a disposizione la propria struttura per i tuoi eventi esclusivi.<br />
                Organizza il tuo "giorno speciale", in una location completamente immersa nella verde maremma, con una splendida piscina tra gli olivi.
        Ti offriamo uno scorcio ineguagliabile per matrimoni, feste, meeting e piccoli eventi, con possibilità di usufruire sia di spazi interni che di spazi esterni. 
        <br />
                L'esperienza trentennale della famiglia Predellini sarà a vostra disposizione per fornirvi consigli utili ed originali su tutto ciò di cui avete bisogno, per l'organizzazione dei vostri eventi.
        Su richiesta avrete a disposizione l'intera struttura anche per far pernottare i vostri ospiti.
        Contattaci per informazioni e disponibilità!
     
            </div>
        </div>
        </div>
        <div class="row" style="margin-bottom: 5%">
            <div class="col-md-12 col-md-offset-2" style="color: whitesmoke">
                <uc:BoxInformazioni runat="server" />
            </div>
        </div>
     
    <div class="row"></div>
        <div class="push"></div>
    </div>
    <!-- Footer -->
    <uc:Footer runat="server" />

</body>
</html>
