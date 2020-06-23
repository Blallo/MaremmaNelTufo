<%@ Page Language="C#" AutoEventWireup="true" %>

<%@ Register TagPrefix="uc" TagName="NavigationMenu" Src="~/Controls/NavigationMenu.ascx" %>
<%@ Register TagPrefix="uc" TagName="Footer" Src="~/Controls/Footer.ascx" %>
<%@ Register TagPrefix="uc" TagName="Prenotazione" Src="~/Controls/PrenotazioneControlHome.ascx" %>
<%@ Register TagPrefix="uc" TagName="TermeSorano" Src="~/Controls/TermeSorano.ascx" %>
<%@ Register TagPrefix="uc" TagName="Colazione" Src="~/Controls/Colazione.ascx" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Google Tag Manager -->
    <script>(function (w, d, s, l, i) {
    w[l] = w[l] || []; w[l].push({
        'gtm.start':
                new Date().getTime(), event: 'gtm.js'
    }); var f = d.getElementsByTagName(s)[0],
    j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : ''; j.async = true; j.src =
    'https://www.googletagmanager.com/gtm.js?id=' + i + dl; f.parentNode.insertBefore(j, f);
})(window, document, 'script', 'dataLayer', 'GTM-WHJ98Z6');</script>
    <!-- End Google Tag Manager -->
    <meta charset="utf-8">
    <meta property="og:type" content="website">
    <meta property="og:title" content="Country House Maremma Nel Tufo ">
    <meta property="og:description" content="Maremma nel tufo è una country house e B&B a Pitigliano, nella maremma toscana vicino alle terme di Saturnia. Maremma Nel tufo Ã¨ amica degli animali e del ciclo turismo">
    <meta property="og:url" content="http://www.maremmaneltufo.com">
    <meta property="og:image" content="http://www.maremmaneltufo.com/images/HomePage.png">
    <meta property="fb:pages" content="1687419874809878" />
    <meta property="og:site_name" content="http://www.maremmaneltufo.com" />
    <meta property="og:locale" content="it_IT" />
    <meta name="twitter:card" content="website">
    <meta name="twitter:site" content="http://www.maremmaneltufo.com">
    <meta name="twitter:creator" content="Gabriele Predellini">
    <meta name="twitter:title" content="Country House Maremma Nel Tufo">
    <meta name="twitter:description" content="Maremma nel tufo Ã¨ una country house e B&B a Pitigliano, nella maremma toscana vicino alle terme di Saturnia. Maremma Nel tufo Ã¨ amica degli animali e del ciclo turismo">
    <meta name="twitter:image" content="http://www.maremmaneltufo.com/images/HomePage.png">
    <meta name="google-site-verification" content="rNyF9f1nj8kk7R89QVsuLp51jHc439TND8BR5NwTG5Q" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Maremma nel tufo Ã¨ una country house a Pitigliano, vicino alle terme di Saturnia. Maremma Nel tufo Ã¨ amica degli animali e del ciclo turismo">
    <meta name="author" content="Gabriele Predellini">
    <title>Hotel Saturnia - Agriturismo Saturnia - Hotel Pitigliano - Agriturismo Pitigliano - Dormire a Pitigliano con piscina - Country House Maremma Nel Tufo - Terme di Saturnia| maremmaneltufo.com</title>

    <link rel="stylesheet" href="css/specimen_files/specimen_stylesheet.css" type="text/css" />
    <link rel="stylesheet" href="css/stylesheet.css" type="text/css" />
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-theme.min.css" rel="stylesheet">



    <link rel="shortcut icon" href="/images/favicon.ico">
    <link rel="alternate" href="http://www.maremmaneltufo.com" hreflang="it" />
    <link rel="alternate" href="http://www.maremmaneltufo.com" hreflang="en" />
    <link rel="stylesheet" href="css/specimen_files/specimen_stylesheet.css" type="text/css" />

    <!-- Custom CSS -->
    <link href="css/full-slider.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/jquery-ui.structure.css">
    <link rel="stylesheet" href="css/simple-sidebar.css">

    <link href="css/ihover.css" rel="stylesheet" />
    <%--    <link rel="stylesheet" href="css/Chat.css">--%>
    <!-- Include Required Prerequisites -->
    <link href="css/FotoGallery.css" rel="stylesheet">

    <!-- Custom CSS -->
    <%--    <link href="css/pace-theme-minimal.css" rel="stylesheet" />--%>

    <%--  <script src="js/pace.min.js" data-pace-options='{ "elements": { "selectors": [".item"] }}'></script>--%>
    <style>
        @media (max-width: 768px) {
            .belowSide {
                margin-top: 30px;
            }
        }
    </style>
</head>
<body style="background-image: url('images/stars.gif');">
    <!-- Google Tag Manager (noscript) -->
    <noscript>
        <iframe src="https://www.googletagmanager.com/ns.html?id=GTM-WHJ98Z6"
            height="0" width="0" style="display: none; visibility: hidden"></iframe>
    </noscript>
    <!-- End Google Tag Manager (noscript) -->
    <script src="js/jquery.min.js"></script>
    <script src="js/jquery-ui.js"></script>
    <script src="js/bootstrap-hover-dropdown.min.js"></script>
    <script src="js/moment.js"></script>
    <script src="js/jquery.bsPhotoGallery.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap-hover-dropdown.min.js"></script>
    <script src="js/daterangepicker.js"></script>
    <script src="js/showText.min.js"></script>

    <h1 style="display: none" itemprop="name">Maremma nel tufo Ã¨ una country house a Pitigliano, nella maremma toscana vicino alle terme di Saturnia </h1>
    <h2 style="display: none" itemprop="name">Maremma Nel tufo Ã¨ amica degli animali e del ciclo turismo </h2>
    <uc:NavigationMenu runat="server" />
    <%--<div class="wrapper">
<div class="container-fluid">--%>
    <%--<div class="row belowNavBar" ></div>--%>
    <div id="sidebar-wrapper" style="background-image: url('images/stars.gif')">
        <form runat="server" class="col-md-12 infoi">
            <div id="formPrenotazioni">
                <uc:Prenotazione runat="server" />
            </div>

            <%--    <uc:Chat runat="server"/>--%>
        </form>
    </div>
    <div id="wrapper" style="margin-left: 15px;">
        <div class="row">
            <div id="msg1" class="didascaliaPosition2 "></div>
        </div>

        <div id="myCarousel" class="carousel slide">
            <div class="carousel-caption" style="bottom: 0; top: 50%;">
                <div id="msg" class="didascaliaPosition"></div>
            </div>
            <div class="carousel-inner">
                <div class="item active">
                    <img class="fill img-responsive" src="images/Piscina4.jpg" alt="piscina" />
                </div>
                <div class="item">
                    <img class="fill img-responsive" src="images/Piscina1.jpg" alt="piscina" />
                </div>
                <div class="item">
                    <img class="fill img-responsive" src="images/Piscina3.jpg" alt="piscina" />
                </div>
                <div class="item">
                    <img class="fill img-responsive" src="images/Piscina.jpg" alt="piscina" />
                </div>
                <div class="item">
                    <img class="fill img-responsive" src="images/fabbricato.jpg" alt="interno">
                </div>
                <div class="item">
                    <img class="fill img-responsive" src="images/CharlieChaplin.jpeg" alt="interno">
                </div>
                <div class="item">
                    <img class="fill img-responsive" src="images/Audrey.jpeg" alt="interno">
                </div>
                <div class="item">
                    <img class="fill img-responsive" src="images/1_Corridoio.jpeg" alt="interno">
                </div>
                <div class="item">
                    <img class="fill img-responsive" src="images/Facciata.jpg" alt="facciata" />
                </div>
                <div class="item">
                    <img class="fill img-responsive" src="images/giardino.JPG" alt="giardino" />
                </div>
                <div class="item">
                    <img class="fill img-responsive" src="images/vigneto.jpg" alt="vigneto"/>
                </div>
                <div class="item">
                    <img class="fill img-responsive" src="images/uliveto.jpg" alt="oliveta">
                </div>
            </div>
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" role="button" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
        <hr />
        <div class="row">
            <div class="col-md-8">
            <div class="info3 text-center" style="color: whitesmoke">
                Si dice che la colazione sia il pasto pi&uacute; importante della giornata, cerchiamo di renderla indimenticabile  per i nostri ospiti .
            <br />
                ...Scopri le nostre proposte...
                
            </div>
            </div>
            <div class="col-md-4">
            <img src="images/timon.gif" class="img img-responsive"/> </div>
        </div>

        <div class="row" style="margin-top: 30px;">
            <div class="colazioneClass">
                <uc:Colazione runat="server" />
            </div>
        </div>
        <hr />

        <div class="row" style="background-color: transparent; color: whitesmoke; border-color: whitesmoke; background-size: cover; width: 100%; margin-top: 30px;">

            <div class="col-md-4">
                <img src="images/trilly.png" class="img img-responsive" alt="" />
            </div>
            <uc:TermeSorano runat="server" />
        </div>
        <hr />
        <div style="padding-top: 30px;">
            <uc:Footer runat="server" />
        </div>
    </div>
    <script>
        $(document).ready(function () {
            var segnaLibro = $('#imgSegnalibro');
            segnaLibro.hide();
            $(function () {
                showText("#msg",
                    "Il luogo del vostro relax, nella verde terra di toscana, tra le colline del Fiora.Vi ospiteremo in comodi mini-appartamenti e camere accoglienti",
                    0,
                    50);
            });

            $(function () {
                showText("#msg1",
                    "Il luogo del vostro relax, nella verde terra di toscana, tra le colline del Fiora.Vi ospiteremo in comodi mini-appartamenti e camere accoglienti",
                    0,
                    50);
            });
            $('[id$=imgclear]').click(function () {
                var segnaLibro = $('#imgSegnalibro');
                $('#formPrenotazioni').toggle("slow");
                segnaLibro.show();
            });
            $('#imgSegnalibro').click(function () {
                var segnaLibro = $('#imgSegnalibro');
                $('#formPrenotazioni').toggle("slow");
                segnaLibro.hide();
            });




        });


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








