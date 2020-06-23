<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Gruppi.aspx.cs" Inherits="Gruppi" %>

<%@ Register TagPrefix="uc" TagName="NavigationMenu" Src="~/Controls/NavigationMenu.ascx" %>
<%@ Register TagPrefix="uc" TagName="Footer" Src="~/Controls/Footer.ascx" %>
<%@ Register TagPrefix="uc" TagName="BoxInformazioni" Src="~/Controls/BoxInformazioniEventi.ascx" %>
<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Gruppi, B & B, Maremma nel Tufo, Pitigliano, Agriturismi, toscana,Terme, Sorano, Sovana, Saturnia</title>
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap-theme.min.css" rel="stylesheet" />
    <!-- Custom CSS -->
    <link href="css/full-slider.css" rel="stylesheet" />
    <link href="css/custom.css" rel="stylesheet" />
    <link href="css/ihover.css" rel="stylesheet" />
</head>
<body style="background-image: url('Images/stars.gif');">
    <uc:NavigationMenu runat="server" />
    <div class="wrapper">
        <div class="belowNavBar"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <img src="/images/DisneyChar.png" class="img img-responsive"/>
                </div>
                <div class="col-md-8">
                    <p class="didascaliaCorsivo" style="color: whitesmoke">
                        La <b>"Country House" Maremma Nel Tufo</b> è tra le poche strutture nella zona in grado di offrire ospitalità a grandi gruppi di persone.<br />
                        Contattaci! per avere maggiori informazioni sulle nostre offerte...
                    </p>
                </div>

            </div>
            <div class="row">
                <div class="col-md-12 col-md-offset-1" style="color: whitesmoke">
                    <uc:BoxInformazioni runat="server"></uc:BoxInformazioni>
                </div>
            </div>

            <div class="push"></div>
        </div>

        <uc:Footer runat="server" />
    </div>

</body>
</html>
