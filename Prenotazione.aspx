<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Prenotazione.aspx.cs" Inherits="Prenotazione" %>

<%@ Register TagPrefix="uc" TagName="NavigationMenu" Src="~/Controls/NavigationMenu.ascx" %>
<%@ Register TagPrefix="uc" TagName="Prenotazioni" Src="~/Controls/PrenotazioneControl.ascx" %>
<%@ Register TagPrefix="uc" TagName="Footer" Src="~/Controls/Footer.ascx" %>
<%@ Register TagPrefix="uc" TagName="CameraMatrimoniale" Src="~/Controls/CameraMatrimonialeControl.ascx" %>
<%@ Register TagPrefix="uc" TagName="Appartamento1Camera" Src="~/Controls/Appartamento1Control.ascx" %>
<%@ Register TagPrefix="uc" TagName="Appartamento2Camere" Src="~/Controls/Appartamento2Camere.ascx" %>
<%@ Register TagPrefix="uc" TagName="Tripla" Src="~/Controls/CameraTriplaControl.ascx" %>
<%@ Register TagPrefix="uc" TagName="Quadrupla" Src="~/Controls/CameraQuadruplaControl.ascx" %>
<%@ Register TagPrefix="uc" TagName="TermeSorano" Src="~/Controls/TermeSorano.ascx" %>



<html lang="en">
<head>
    <style type="text/css">
        ul {
            list-style-type: none;
        }

        h3 {
            color: red;
        }
    </style>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Prenotazioni, B & B Maremma Tufo, Pitigliano, Agriturismi, toscana, Saturnia, Terme, Tuscany</title>

    <script src="js/jquery.js"></script>
    <script src="js/jquery-ui.js"></script>
    <script src="js/moment.js"></script>
    <script src="js/daterangepicker.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap-hover-dropdown.min.js"></script>
    <!-- Script to Activate the Carousel -->
    <script src="js/jquery.bsPhotoGallery.js"></script>
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/bootstrap-theme.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/full-slider.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/jquery-ui.structure.css">
    <link rel="stylesheet" href="css/jquery-ui.theme.css">
    <!-- Include Required Prerequisites -->
    <link href="css/FotoGallery.css" rel="stylesheet">






    <link rel="stylesheet" href="css/daterangepicker.css" />
</head>
<body style="background-image: url(images/stars.gif)">



    <uc:NavigationMenu runat="server" />

    <div class="wrapper">
        <div class="container-fluid">
            <div class="row belowNavBar"></div>

            <form runat="server" style="background-image: url(images/stars.gif)">

                <div class="panel" style="background-color: transparent">

                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-md-2">
                                <img src="images/aliceall.png" class="img img-responsive" /></div>
                            <div id="formPrenotazioni" class="col-md-8">
                                <uc:Prenotazioni runat="server" ID="ctrlPrenotazioni" />
                            </div>
                        </div>
                        <div style="font-family: 'harlow_solid_italicitalic'; font-size: 20px; color: whitesmoke">
                            <asp:Label runat="server" ID="lblNumeroUtenti"> </asp:Label><asp:Label runat="server" ID="lblNumero" ForeColor="red"></asp:Label>
                            utenti!
                        </div>
                    </div>

                </div>

                <hr />
                <asp:Panel runat="server" ID="pnlCameraMatrimoniale" CssClass="heightPanel">
                    <div class="panel" style="background-color: transparent">
                        <div class="panel-heading">
                            <h3 class="didascaliaPrenotazione" id="hCamera" runat="server" style="color: whitesmoke">Camera Matrimoniale Deluxe</h3>

                        </div>
                        <div class="panel-body">

                            <ul class="first" id="divCameraMatrimoniale" runat="server"></ul>
                            <asp:Label CssClass="didascaliaPrenotazione" runat="server" ID="lblPrezzoCamera" Font-Size="14px" ForeColor="whitesmoke"></asp:Label><br />
                            <asp:Button runat="server" Text="Prenota!" ID="prenotaCamera" OnClientClick="OnCameraClick();return false;" CssClass="text-center" />
                            <asp:Label runat="server" ID="lblRassicurazioneCamera" Font-Size="16px" ForeColor="whitesmoke" Font-Bold="True">
                             (*in questa fase non stai ancora prenotando, dovrai inserire i tuoi dati ed inviarli nel successivo form. Sarà possibile cancellare la prenotazione fino a 3 giorni prima della data di check in, senza pagare alcuna penale.)
                            </asp:Label>
                        </div>
                    </div>
                </asp:Panel>
                <hr runat="server" id="hrMatr" visible="False" />

                <asp:Panel runat="server" ID="pnlTripla" CssClass="heightPanel">
                    <div class="panel" style="background-color: transparent">
                        <div class="panel-heading">
                            <h3 class="didascaliaPrenotazione" style="color: whitesmoke">Camera Tripla Deluxe</h3>

                        </div>
                        <div class="panel-body">



                            <ul class="first" id="ulTripla" runat="server"></ul>
                            <asp:Label CssClass="didascaliaPrenotazione" runat="server" ID="lblTripla" Font-Size="14px" ForeColor="whitesmoke"></asp:Label><br />
                            <asp:Button runat="server" Text="Prenota!" ID="ButtonT" OnClientClick="OnTriplaClck();return false;" CssClass="text-center" />
                            <asp:Label runat="server" ID="lblRassicurazioneT" Font-Size="16px" ForeColor="whitesmoke" Font-Bold="True">
                            (*in questa fase non stai ancora prenotando, dovrai inserire i tuoi dati ed inviarli nel successivo form. Sarà possibile cancellare la prenotazione fino a 3 giorni prima della data di check in, senza pagare alcuna penale.)
                           
                            </asp:Label>
                        </div>
                    </div>
                </asp:Panel>
                <hr runat="server" id="hrTrip" visible="False" />
                <asp:Panel runat="server" ID="pnlQuadrupla" CssClass="heightPanel">
                    <div class="panel" style="background-color: transparent">
                        <div class="panel-heading">
                            <h3 class="didascaliaPrenotazione" style="color: whitesmoke">Camera Quadrupla</h3>

                        </div>
                        <div class="panel-body">


                            <ul class="first" id="ulQuadrupla" runat="server"></ul>
                            <asp:Label CssClass="didascaliaPrenotazione" runat="server" ID="lblQuadrupla" Font-Size="14px" ForeColor="whitesmoke"></asp:Label><br />
                            <asp:Button runat="server" Text="Prenota!" ID="ButtonQ" OnClientClick="OnQuadruplaClck();return false;" CssClass="text-center" />
                            <asp:Label runat="server" ID="lblRassicurazioneQ" Font-Size="16px" ForeColor="whitesmoke" Font-Bold="True">
                            (*in questa fase non stai ancora prenotando, dovrai inserire i tuoi dati ed inviarli nel successivo form. Sarà possibile cancellare la prenotazione fino a 3 giorni prima della data di check in, senza pagare alcuna penale.)
                           
                            </asp:Label>
                        </div>
                    </div>
                
                </asp:Panel>
            <hr runat="server" id="hrQuad" visible="False" />
                <asp:Panel runat="server" ID="pnlAppartamento1" CssClass="heightPanel">
                    <div class="panel" style="background-color: transparent">
                        <div class="panel-heading">
                            <h3 class="didascaliaPrenotazione" style="color: whitesmoke">Appartamento con una camera da letto</h3>

                        </div>
                        <div class="panel-body">


                            <ul class="first" id="ulApp1" runat="server"></ul>
                            <asp:Label CssClass="didascaliaPrenotazione" runat="server" ID="lblAppartamento1" Font-Size="14px" ForeColor="whitesmoke"></asp:Label><br />
                            <asp:Button runat="server" Text="Prenota!" ID="Button1" OnClientClick="OnApp1Click();return false;" CssClass="text-center" />
                            <asp:Label runat="server" ID="lblRassicurazioneApp1" Font-Size="16px" ForeColor="whitesmoke" Font-Bold="True">
                            (*in questa fase non stai ancora prenotando, dovrai inserire i tuoi dati ed inviarli nel successivo form. Sarà possibile cancellare la prenotazione fino a 3 giorni prima della data di check in, senza pagare alcuna penale.)
                            </asp:Label>

                        </div>
                    </div>
                </asp:Panel>
                <hr runat="server" id="hrApp1" visible="False" />
                <asp:Panel runat="server" ID="pnlAppartamento2" CssClass="heightPanel">
                    <div class="panel" style="background-color: transparent">
                        <div class="panel-heading">
                            <h3 class="didascaliaPrenotazione" style="color: whitesmoke">Appartamento con due camere da letto</h3>

                        </div>
                        <div class="panel-body">


                            <ul class="first" id="ulApp2" runat="server"></ul>
                            <asp:Label CssClass="didascaliaPrenotazione" runat="server" ID="lblAppartamento2" Font-Size="14px" ForeColor="whitesmoke"></asp:Label><br />
                            <asp:Button runat="server" Text="Prenota!" ID="Button2" OnClientClick="OnApp2Clck();return false;" CssClass="text-center" />
                            <asp:Label runat="server" ID="lblRassicurazioneApp2" Font-Size="16px" ForeColor="whitesmoke" Font-Bold="True">
                            (*in questa fase non stai ancora prenotando, dovrai inserire i tuoi dati ed inviarli nel successivo form. Sarà possibile cancellare la prenotazione fino a 3 giorni prima della data di check in, senza pagare alcuna penale.)
                           
                            </asp:Label>
                        </div>
                    </div>
                </asp:Panel>
                <hr runat="server" id="hrApp2" visible="False" />
                <div class="modal fade modal-wide" id="popupCameraMatrimoniale" tabindex="-1" role="dialog" aria-hidden="true" style="display: none;">
                    <div class="modal-dialog">
                        <div class="modal-content" style="background-color: white">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                <h4 class="modal-title">
                                    <asp:Label ID="lblPopupHeader" runat="server" Text="Camera Matrimoniale"></asp:Label></h4>
                            </div>
                            <div class="modal-body">

                                <uc:CameraMatrimoniale runat="server" ID="ctrlCameraMatrimoniale" />

                            </div>
                        </div>
                    </div>
                </div>

                <div class="modal fade modal-wide" id="popupApp1" tabindex="-1" role="dialog" aria-hidden="true" style="display: none;">
                    <div class="modal-dialog">
                        <div class="modal-content" style="background-color: white">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                <h4 class="modal-title">
                                    <asp:Label ID="Label1" runat="server" Text="Appartamento una camera da letto"></asp:Label></h4>
                            </div>
                            <div class="modal-body">

                                <uc:Appartamento1Camera runat="server" ID="ctrlapp1" />

                            </div>
                        </div>
                    </div>
                </div>


                <div class="modal fade modal-wide" id="popupApp2" tabindex="-1" role="dialog" aria-hidden="true" style="display: none;">
                    <div class="modal-dialog">
                        <div class="modal-content" style="background-color: white">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                <h4 class="modal-title">
                                    <asp:Label ID="Label2" runat="server" Text="Appartamento due camere da letto"></asp:Label></h4>
                            </div>
                            <div class="modal-body">

                                <uc:Appartamento2Camere runat="server" ID="ctrlapp2" />

                            </div>
                        </div>
                    </div>
                </div>


                <div class="modal fade modal-wide" id="popupTripla" tabindex="-1" role="dialog" aria-hidden="true" style="display: none;">
                    <div class="modal-dialog">
                        <div class="modal-content" style="background-color: white">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                <h4 class="modal-title">
                                    <asp:Label ID="Label3" runat="server" Text="Camera Tripla"></asp:Label></h4>
                            </div>
                            <div class="modal-body">

                                <uc:Tripla runat="server" ID="Tripla" />

                            </div>
                        </div>
                    </div>
                </div>

                <div class="modal fade modal-wide" id="popupQuadrupla" tabindex="-1" role="dialog" aria-hidden="true" style="display: none;">
                    <div class="modal-dialog">
                        <div class="modal-content" style="background-color: white">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                <h4 class="modal-title">
                                    <asp:Label ID="Label4" runat="server" Text="Camera Quadrupla"></asp:Label></h4>
                            </div>
                            <div class="modal-body">

                                <uc:Quadrupla runat="server" ID="Quadrupla" />

                            </div>
                        </div>
                    </div>
                </div>

                <div id="dialog" class="modal"></div>
            </form>
        </div>
        <div class="push"></div>

    </div>
    <div class="row">
        <uc:TermeSorano runat="server" />
    </div>
    <uc:Footer runat="server" />
    <script>
        var segnaLibro = $('#imgSegnalibro');
        $(document).ready(function () {
            $('ul.first').bsPhotoGallery({
                "classes": "col-lg-2 col-md-4 col-sm-3 col-xs-4 col-xxs-12 img-circle",
                "hasModal": true
            });


            segnaLibro.hide();
        });

        function OnCameraClick() {
            $("#popupCameraMatrimoniale").modal('show');
        }


        function OnApp1Click() {
            $("#popupApp1").modal('show');
        }

        function OnApp2Clck() {
            $("#popupApp2").modal('show');
        }

        function OnTriplaClck() {
            $("#popupTripla").modal('show');
        }
        function OnQuadruplaClck() {
            $("#popupQuadrupla").modal('show');
        }

        $('.toggleCaption').hide();
        $('.toggleCaption2').hide();

        var caption = $('.toggleCaption')
            .addClass('animated fadeInUp')
            .one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend',
                function () {
                    $(this).removeClass('animated fadeInUp');
                });

        var caption2 = $('.toggleCaption2')
            .addClass('animated fadeInUp')
            .one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend',
                function () {
                    $(this).removeClass('animated fadeInUp');
                });

        caption.delay(500).slideToggle();
        caption2.delay(5000).slideToggle();

        function ShowPopup(message) {
            $("#dialog").html(message);
            $("#dialog").show();
        };
    </script>
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
            m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-100108429-1', 'auto');
        ga('send', 'pageview');

    </script>
</body>
</html>
