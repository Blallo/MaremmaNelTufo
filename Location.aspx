<%@  Language="C#" AutoEventWireup="true" CodeFile="Location.aspx.cs" Inherits="Location" %>
<%@ Register TagPrefix="uc" TagName="NavigationMenu" Src="~/Controls/NavigationMenu.ascx" %>
<%@ Register TagPrefix="uc" TagName="Footer" Src="~/Controls/Footer.ascx" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Location, B & B maremma tufo, pitigliano, terme, saturnia, agriturismi, toscana</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/bootstrap-theme.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/full-slider.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">
</head>
<body style="background-image: url('Images/stars.gif');">
    <uc:NavigationMenu runat="server" />
    <div class="wrapper">
        <div class="container belowNavBar">
            <div class="row">
                <div class="col-md-6 col-lg-offset-0">
                    <div class="col-md-6">
                        <img src="images/margot.png" class="img-responsive" alt="Margot" />
                    </div>
                    <div class="col-md-6">
                        <div style="color: whitesmoke" id="Nord" class="regionPanel">
                            Da Nord (click per info)    <span id="nordSpan">+</span>
                            <p style="color: whitesmoke" id="NordInfo" class="regionPanelInfo" hidden>
                                Uscire dall'A1 a <b>"Chiusi - Chianciano terme"</b>, proseguire verso <b>Sarteano/Radicofani</b>.
                Seguire le indicazioni per <b>Sorano poi S.Quirico</b>. Una volta arrivati a <b>S.Quirico</b>, andare verso <b>Manciano</b><br>
                                In alternativa, uscire dall'A1 a <b>"Firenze Impruneta"</b> e proseguire verso <b>Siena</b>. Prendere la cassia e seguire le indicazioni per Sorano poi S.Quirico.<br>
                                Una volta arrivati a <b>S.Quirico</b>, andare verso <b>Manciano</b>
                            </p>
                        </div>
                        <div style="color: whitesmoke" id="Sud" class="regionPanel">
                            Da Sud (click per info)    <span id="sudSpan">+</span>
                            <p style="color: whitesmoke" id="SudInfo" class="regionPanelInfo" hidden>Uscire dalla A1 ad <b>Orvieto</b>, seguire le indicazioni per <b>Pitigliano / Saturnia</b></p>
                        </div>
                        <div style="color: whitesmoke" id="Tirreno" class="regionPanel">
                            Dal Mar Tirreno (click per info)  <span id="tirrenoSpan">+</span>
                            <p style="color: whitesmoke" id="TirrenoInfo" class="regionPanelInfo" hidden>
                                Uscire ad <b>Albinia</b> o in alternativa a <b>Fonteblanda</b> e seguire le indicazioni per <b>Manciano</b> e <b>Pitigliano</b>.
                            </p>
                        </div>
                        <div style="color: whitesmoke" id="Adriatico" class="regionPanel">
                            Dal Mar Adriatico (click per info)  <span id="adriaticoSpan">+</span>
                            <p style="color: whitesmoke" id="AdriaticoInfo" class="regionPanelInfo" hidden>
                                Uscire dalla E45 a <b>Todi</b> proseguire per <b>Orvieto</b>, poi seguire le indicazioni per <b>Pitigliano / Saturnia</b>
                            </p>
                        </div>
                        <div style="color: whitesmoke" id="GPSCoordinates" class="regionPanel">
                            Coordinate GPS: <span id="GPSCoordinatesSpan">+</span>
                            <p style="color: whitesmoke" class="regionPanelInfo" id="GPSCoordinatesInfo">
                                <b>Gradi Decimali:</b><br />
                                Latitudine: 42.62375919999999<br />
                                Longitudine: 11.660092299999974<br />
                                <b>Gradi, Minuti, Secondi:</b><br />
                                Latitudine: 42° 37' 25.533''<br />
                                Longitudine: 11° 39' 36.332''<br />
                            </p>
                        </div>
                        <form runat="server">
                            <p style="color: whitesmoke;" class="regionPanel">
                                Scarica la mappa:<br />

                                <asp:LinkButton runat="server" ID="lnkGarmin" OnClick="OnClick"><img src="images/garmin.png" alt="Garmin map" style=" background-color: whitesmoke"/></asp:LinkButton>
                                <asp:LinkButton runat="server" ID="lnkTomTom" OnClick="lnkTomTom_OnClick"><img src="images/tomtom.png" alt="TomTom map" style=" background-color: whitesmoke"/></asp:LinkButton>


                            </p>

                        </form>
                    </div>
                </div>
                <div class="col-lg-6">
                    <!-- <img src="Images/Header.PNG" class="img-responsive " alt="Maremma Nel Tufo"> -->
                    <div class="map-responsive">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d11743.089649481975!2d11.651337546136563!3d42.62378250845995!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x52eea659ea19e02e!2sMaremma+nel+tufo!5e0!3m2!1sit!2sit!4v1468504379207" width="600" height="400" frameborder="0" style="border: 0" allowfullscreen></iframe>
                    </div>

                </div>
            </div>
        </div>
        <div class="push"></div>

    </div>
    <uc:Footer runat="server" />



    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap-hover-dropdown.min.js"></script>
    <!-- Script to Activate the Carousel -->
    <script>
        $(document).ready(
        function () {
            $("#NordInfo").hide();
            $("#SudInfo").hide();
            $("#TirrenoInfo").hide();
            $("#AdriaticoInfo").hide();
            $("#GPSCoordinatesInfo").hide();
            $("#Nord").click(function () {
                if ($('#NordInfo').is(':visible')) {
                    $('#NordInfo').slideUp();
                    $('#nordSpan').text('+');
                }
                else {
                    $('#NordInfo').slideDown();
                    $('#nordSpan').text('-');
                }
            });
            $("#Sud").click(function () {
                if ($('#SudInfo').is(':visible')) {
                    $('#SudInfo').slideUp();
                    $('#sudSpan').text('+');
                }
                else {
                    $('#SudInfo').slideDown();
                    $('#sudSpan').text('-');
                }
            });
            $("#Tirreno").click(function () {
                if ($('#TirrenoInfo').is(':visible')) {
                    $('#TirrenoInfo').slideUp();
                    $('#tirrenoSpan').text('+');
                }
                else {
                    $('#TirrenoInfo').slideDown();
                    $('#tirrenoSpan').text('-');
                }
            });
            $("#Adriatico").click(function () {
                if ($('#AdriaticoInfo').is(':visible')) {
                    $('#AdriaticoInfo').slideUp();
                    $('#adriaticoSpan').text('+');
                }
                else {
                    $('#AdriaticoInfo').slideDown();
                    $('#adriaticoSpan').text('-');
                }
            });
            $("#GPSCoordinates").click(function () {
                if ($('#GPSCoordinatesInfo').is(':visible')) {
                    $('#GPSCoordinatesInfo').slideUp();
                    $('#GPSCoordinatesSpan').text('+');
                }
                else {
                    $('#GPSCoordinatesInfo').slideDown();
                    $('#GPSCoordinatesSpan').text('-');
                }
            });
        });

    </script>
</body>
</html>
