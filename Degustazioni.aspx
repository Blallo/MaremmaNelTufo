<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Degustazioni.aspx.cs" Inherits="Degustazioni" %>

<%@ Register TagPrefix="uc" TagName="NavigationMenu" Src="~/Controls/NavigationMenu.ascx" %>
<%@ Register TagPrefix="uc" TagName="BoxInformazioni" Src="~/Controls/BoxInformazioni.ascx" %>
<%@ Register TagPrefix="uc" TagName="Footer" Src="~/Controls/Footer.ascx" %>
<!DOCTYPE html>


<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Degustazioni, B&B Maremma Tufo, Pitigliano, Agriturismi, toscana, Saturnia, Terme</title>

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
                <div class="col-md-2">
                    <img class="img img-responsive" src="images/peter_clip20.gif" />
                    <%--   <div id="msg" class="didascalia"> </div>--%>
                </div>
                <div class="col-md-10">
                    <div class="row">
                        <div class="regionPanel2">
                            <p class="regionPanel2p" style="color: whitesmoke">
                                L'azienda vitivinicola <b>Villa Corano</b> sorge a pochi passi dalla nostra struttura, al chilometro 46.760.
                                <br />
                                Il titolare Stefano Formiconi, vanta anni di esperienza nel settore vitivinicolo maremmano.
                                <br />
                                I terreni, particolarmente vocati per la vite e l'ulivo, sorgono in un luogo un tempo sacro, da cui la tenuta prende il suo nome latino <b>"Cor Unum"</b><br />
                                La cantina, dotata di tecnologie moderne, si compone di una zona fermentazione ed imbottigliamento, nonchè di una sala dedicata al riposo di pregiati vini rossi
                                <br />
                                La vecchia quercia secolare, tanto cara a Stefano, vi accoglierà per le piacevoli degustazioni dei vini prodotti...
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <table class="table-responsive">
                                <thead>
                                    <tr id="degustazioneBase">
                                        <th class="regionPanel3">
                                            <p class="regionPanel3p" style="color: whitesmoke">Degustazione Base (click per dettagli): <span id="degustazioneBaseSpan">+</span></p>
                                        </th>
                                    </tr>

                                </thead>
                                <tbody id="degustazioneBaseInfo" hidden>
                                    <tr>
                                        <th scope="row">
                                            <p class="regionPanel5" style="color: whitesmoke">Il pacchetto degustazione Base comprende:</p>
                                        </th>
                                    </tr>
                                    <tr scope="row">
                                        <th>
                                            <p class="regionPanel4" style="color: whitesmoke">1 Notte</p>
                                            <ul class="regionPanel4" style="color: whitesmoke">

                                                <li>Pernottamento e prima colazione, per 2 persone, in camera matrimoniale</li>
                                                <li>Visita guidata all'azienda<b>"Villa Corano"</b></li>
                                                <li>Degustazione di vini</li>
                                                <li>Degustazione di bruschette con olio di produzione propria</li>
                                                <li>€ 90</li>
                                            </ul>
                                        </th>
                                    </tr>
                                    <tr scope="row">
                                        <th>
                                            <p class="regionPanel4" style="color: whitesmoke">2 Notti</p>
                                            <ul class="regionPanel4" style="color: whitesmoke">
                                                <li>Pernottamento e prima colazione, per 2 persone, in camera matrimoniale</li>
                                                <li>Visita guidata all'azienda<b>"Villa Corano"</b></li>
                                                <li>Degustazione di vini</li>
                                                <li>Degustazione di bruschette con olio di produzione propria</li>
                                                <li>€ 160</li>
                                            </ul>
                                        </th>
                                    </tr>
                                    <tr scope="row">
                                        <th>
                                            <p class="regionPanel4" style="color: whitesmoke">3 Notti</p>
                                            <ul class="regionPanel4">

                                                <li>Pernottamento e prima colazione, per 2 persone, in camera matrimoniale</li>
                                                <li>Visita guidata all'azienda<b>"Villa Corano"</b></li>
                                                <li>Degustazione di vini</li>
                                                <li>Degustazione di bruschette con olio di produzione propria</li>
                                                <li>€ 250</li>
                                            </ul>
                                        </th>
                                    </tr>
                                    <tr scope="row">
                                        <th>
                                            <p class="regionPanel4" style="color: whitesmoke">7 Notti</p>
                                            <ul class="regionPanel4">

                                                <li>Pernottamento e prima colazione, per 2 persone, in camera matrimoniale</li>
                                                <li>Visita guidata all'azienda<b>"Villa Corano"</b></li>
                                                <li>Degustazione di vini</li>
                                                <li>Degustazione di bruschette con olio di produzione propria</li>
                                                <li>€ 600</li>
                                            </ul>
                                        </th>
                                    </tr>
                                </tbody>
                            </table>

                        </div>

                        <div class="col-lg-6">
                            <table class="table-responsive">
                                <thead>
                                    <tr id="degustazioneDeluxe">
                                        <th class="regionPanel3">
                                            <p style="color: whitesmoke" class="regionPanel3p">Degustazione Deluxe (click per dettagli): <span id="degustazioneDeluxeSpan">+</span></p>
                                        </th>
                                    </tr>

                                </thead>
                                <tbody id="degustazioneDeluxeInfo" hidden>
                                    <tr>
                                        <th scope="row">
                                            <p style="color: whitesmoke" class="regionPanel5">Il pacchetto degustazione deluxe comprende:</p>
                                        </th>
                                    </tr>
                                    <tr scope="row">
                                        <th>
                                            <p  style="color: whitesmoke"class="regionPanel4">1 Notte</p>
                                            <ul class="regionPanel4" style="color: whitesmoke">

                                                <li>Pernottamento e prima colazione, per 2 persone, in camera matrimoniale</li>
                                                <li>Visita guidata all'azienda <b>"Villa Corano"</b></li>
                                                <li>Degustazione di vini</li>
                                                <li>Degustazione di prodotti tipici maremmanni</li>
                                                <li>Degustazione di olio di produzione propria</li>
                                                <li>€ 100</li>
                                            </ul>
                                        </th>
                                    </tr>
                                    <tr scope="row">
                                        <th>
                                            <p class="regionPanel4" style="color: whitesmoke">2 Notti</p>
                                            <ul class="regionPanel4" style="color: whitesmoke">

                                                <li>Pernottamento e prima colazione, per 2 persone, in camera matrimoniale</li>
                                                <li>Visita guidata all'azienda <b>"Villa Corano"</b></li>
                                                <li>Degustazione di vini</li>
                                                <li>Degustazione di prodotti tipici maremmanni</li>
                                                <li>Degustazione di olio di produzione propria</li>
                                                <li>€ 190</li>
                                            </ul>
                                        </th>
                                    </tr>
                                    <tr scope="row">
                                        <th>
                                            <p class="regionPanel4" style="color: whitesmoke">3 Notti</p>
                                            <ul class="regionPanel4" style="color: whitesmoke">

                                                <li>Pernottamento e prima colazione, per 2 persone, in camera matrimoniale</li>
                                                <li>Visita guidata all'azienda <b>"Villa Corano"</b></li>
                                                <li>Degustazione di vini</li>
                                                <li>Degustazione di prodotti tipici maremmanni</li>
                                                <li>Degustazione di olio di produzione propria</li>
                                                <li>€ 280</li>
                                            </ul>
                                        </th>
                                    </tr>
                                    <tr scope="row">
                                        <th>
                                            <p class="regionPanel4" style="color: whitesmoke">7 Notti</p>
                                            <ul class="regionPanel4" style="color: whitesmoke">

                                                <li>Pernottamento e prima colazione, per 2 persone, in camera matrimoniale</li>
                                                <li>Visita guidata all'azienda <b>"Villa Corano"</b></li>
                                                <li>Degustazione di vini</li>
                                                <li>Degustazione di prodotti tipici maremmanni</li>
                                                <li>Degustazione di olio di produzione propria</li>
                                                <li>€ 670</li>
                                            </ul>
                                        </th>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <div class="col-lg-2 col-lg-offset-12"><a href="http://www.villacorano.it">
                            <img src="images/Foto esterno notturne/LogoVillacorano.jpg" class="img-responsive" /></a></div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-lg-offset-3" style="color: whitesmoke">
                <uc:BoxInformazioni runat="server"></uc:BoxInformazioni>
            </div>
        </div>

        <div class="push"></div>
    </div>

    <uc:Footer runat="server" />


</body>
<script>
    $(document).ready(
    function () {
        $("#degustazioneBaseInfo").hide();
        $("#degustazioneBase").click(function () {
            if ($("#degustazioneBaseInfo").is(':visible')) {
                $('#degustazioneBaseInfo').slideUp();
                $('#degustazioneBaseSpan').text('+');
            }
            else {
                $('#degustazioneBaseInfo').slideDown();
                $('#degustazioneBaseSpan').text('-');
            }
        });

        $("#degustazioneDeluxeInfo").hide();
        $("#degustazioneDeluxe").click(function () {
            if ($("#degustazioneDeluxeInfo").is(':visible')) {
                $('#degustazioneDeluxeInfo').slideUp();
                $('#degustazioneDeluxeSpan').text('+');
            }
            else {
                $('#degustazioneDeluxeInfo').slideDown();
                $('#degustazioneDeluxeSpan').text('-');
            }
        });
    });




</script>

<script>

    $(document).ready(function () {
        $("#name").click(function () { $("#name").css('background-color', '#FFFFFF'); });
        $("#email").click(function () { $("#email").css('background-color', '#FFFFFF'); });
        $("#Message1").click(function () { $("#Message1").css('background-color', '#FFFFFF'); });
        $("#Telefono").click(function () { $("#Telefono").css('background-color', '#FFFFFF'); });

    });
</script>
</html>
