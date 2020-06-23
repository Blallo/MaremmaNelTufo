<%@ Page Language="C#" %>
<%@ Register TagPrefix="uc" TagName="NavigationMenu" Src="~/Controls/NavigationMenu.ascx" %>


<%@ Register TagPrefix="uc" TagName="Footer" Src="~/Controls/Footer.ascx" %>

<%@ Register TagPrefix="uc" TagName="Prenotazione" Src="~/Controls/PrenotazioneControl2.ascx" %>

<%@ Register TagPrefix="uc" TagName="TermeSorano" Src="~/Controls/TermeSorano.ascx" %>

<%@ Register TagPrefix="uc" TagName="Colazione" Src="~/Controls/Colazione.ascx" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta property="og:type" content="website">
    <meta property="og:title" content="Country House Maremma Nel Tufo ">
    <meta property="og:description" content="Maremma nel tufo Ã¨ una country house e B&B a Pitigliano, nella maremma toscana vicino alle terme di Saturnia. Maremma Nel tufo Ã¨ amica degli animali e del ciclo turismo">
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
    <title>&#8226 Dormire a Pitigliano con piscina - Country House Maremma Nel Tufo - Terme di Saturnia| maremmaneltufo.com</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="css/full-slider.css" rel="stylesheet">
     <link href="css/ihover.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">
    <link rel="shortcut icon" href="/images/favicon.ico">
    <link rel="alternate" href="http://www.maremmaneltufo.com" hreflang="it" />
    <link rel="alternate" href="http://www.maremmaneltufo.com" hreflang="en" />
    <style>
        .mobile {
            display: none;
        }

        .web {
            display: inline;
        }

        .vcenter {
            position: fixed;
            bottom: 0px;
            width: 100%;
            left: 0%;
        }

        .flags {
            position: relative;
            margin-top: 0%;
            z-index: 150;
        }

        .titleEntry {
            font-size: 30px;
        }

       

        .piti {

            position: fixed;
            bottom: 0px;
            z-index: -1;
        }
        @media (min-width: 1200px) {
            .toggleHeading {
                visibility: visible;
                padding-bottom: 0;
                display: none;
            }

            p {
                /*/ position: relative;*/
                padding-top: 50px;
                padding-left: 20px;
                color: whitesmoke;
            }

        
        }

        @media (max-width: 768px) {
            .mob {
                position: relative;
                padding-top: 100%;
            }

            .titleEntry {
                font-size: 20px;
            }

            .mobile {
                display: inline;
            }

            .web {
                display: none;
            }

            .vcenter {
                position: fixed;
                top: 250px;
            }

            .logo {
                position: fixed;
                top: 30px;
            }

            .flags {
                position: fixed;
                top: 190px;
            }

            .vcenter {
                position: relative;
                margin-top: 20%;
                height: 20%;
            }

            .peter {
                position: fixed;
                bottom: 40px;
            }

            .peter1 {
                position: fixed;
                top: 260px;
                left: 10px;
            }

            .piti {
                position: fixed;
                bottom: 0px;

            }
        }
    </style>
</head>
<body style="background-image: url('Images/stars.gif');">
    <h1 style="display: none" itemprop="name">Maremma nel tufo Ã¨ una country housea Pitigliano, nella maremma toscana vicino alle terme di Saturnia </h1>
    <h2 style="display: none" itemprop="name">Maremma Nel tufo Ã¨ amica degli animali e del ciclo turismo </h2>
        <uc:NavigationMenu runat="server" />
    <div class="row" style="margin-left:20px;margin-top:50px">
        <div class="col-md-4 col-md-offset-0 mobile">
            <h1 style="font-size:26px;color:white;font-family:'harlow_solid_italicitalic'">
                Country House Maremma nel Tufo
            </h1>
            <p class="mobile" style="font-size:26px;color:white;font-family:'harlow_solid_italicitalic'">
                Una Maremma da "Favola"!
            </p>
            <div class="row" style="margin-left:30%">
                <img src="images/petersh.png" class="img-responsive mobile" />
                <img src="images/PitiglianoNotteM.png" class="img-responsive img-rounded mobile"/>
            </div>
        </div>
    <div class="didascaliaDiv">
     
       <div class="didascaliaCaption">
<div class="row" style="margin-left:15px">
    <div class="col-md-4 col-md-offset-0 web">
        <h1 class="didascaliaEntry" style="padding-top:200px;font-size:46px!important;">
            Country House <br />
            Maremma nel Tufo
        </h1>
        <div class="row toggleCaption" style="z-index:-1;display:block">
            <p class="web peter1 didascaliaEntry titleEntry">
                Maremma da "Favola!"
            </p>
        </div>
        <img src="images/peterh.png" class="img-responsive web peter" />
    </div>
    <div class="col-md-8 piti web" style="margin-bottom:50px;position:sticky!important">
        <img src="images/PitiglianoNotte.png" class="img-responsive img-rounded" style="position:sticky!important"/>
    </div>
</div>
           <!-- <div class="col-md-4 col-md-offset-0 web">
                <img class="toggleCaption img-responsive" src="images/logo6.png" alt="logo" />
            </div>
            <div class="col-md-4 col-md-offset-0 mobile logo">
                <img class="toggleCaption img-responsive" src="images/logo4.png" alt="logo" />
            </div>-->

          <%--  <div class="mobile flags">
                <a href="DefaultIT.aspx" title="Entra nel sito" class="btn">
                    <img class="toggleCaption2  img-responsive" src="images/flag/itflagH.jpg" alt="Entra nel sito" /></a>
                <a href="En/DefaultEN.aspx" title="Web Site Enter" class="btn">
                    <img class="toggleCaption3 img-responsive" src="images/flag/enflagH.jpg" alt="Web Site" /></a>
                <a href="De/DefaultDE.aspx" title="Web Site Enter" class="btn">
                    <img class="toggleCaption3 img-responsive" src="images/flag/deFlagH.png" alt="Website" /></a>
            </div>--%>
           

        <div class="row">
             <%--   <div class="col-md-12 piti web">
            <img src="images/PitiglianoNotte.png" class="img-responsive img-rounded" />
            </div>--%>
           
            <!--<div style="width:10%; top: 30%;z-index: 100"><img src="images/stars.gif"  alt="" style="position:absolute" frameBorder="0" class="giphy-embed" allowFullScreen/></div>-->
          <%--  <div class="vcenter">

           <%--     <div class="col-md-4">
                      <div class="web">
                            <a href="DefaultIT.aspx" title="Entra nel sito" class="btn">
                                <img class="toggleCaption2  img-responsive" src="images/flag/itFlag.png" alt="Entra nel sito" /></a>
                            <a href="En/DefaultEN.aspx" title="Web Site Enter" class="btn">
                                <img class="toggleCaption3 img-responsive" src="images/flag/enflag.png" alt="Web Site" /></a>
                            <a href="De/DefaultDE.aspx" title="Web Site Enter" class="btn">
                                <img class="toggleCaption3 img-responsive" src="images/flag/deflag.png" alt="Website" /></a>
                        </div>
                    </div>
                    <div class="row toggleCaption" style="z-index: -1">
                        <p class="mobile peter1 didascaliaEntry">Una Maremma da "Favola"!</p>
                        <p class="web peter1 didascaliaEntry titleEntry">Una Maremma da "Favola"!</p>
                    </div>
                    <div class="row ">
                            <img src="images/peterh.png" class="img-responsive web peter" alt="" />
                            <img src="images/peterhs.png" class="img-responsive mobile peter" alt="" />
                    </div>
                    <div class="col-md-4">
                            <img src="images/PitiglianoNotteM.png" class="img-responsive img-rounded mobile piti" />                        
                    </div>
                    </div>--%>
               
            </div>
        </div>
    </div>
    </div>
 
       <div class="web col-md-10" style="background-color: black; z-index: 8999; bottom: 0; position: fixed;">

                              

                                <form runat="server">

                                <uc:Prenotazione runat="server" />

                                </form>

                            </div>

           <hr />

        <div class="row">

            <div class="col-md-8">

            <div class="info3 text-center" style="color: whitesmoke; font-size: 26px!important">

              Si dice che la colazione sia il pasto più importante della giornata. Iniziala al meglio nella nostra Country House  

                <br />

                    ... ecco le nostre proposte ...

                

                </div>

            </div>

         

            <div class="col-md-4">

            <img src="../images/timon.gif" class="img img-responsive"/> </div>

        </div>



        <div class="row" style="margin-top: 30px;margin-left: 20%">

            <div class="colazioneClass">

                <uc:Colazione runat="server" />

            </div>

        </div>

        <hr />



        <div class="row" style="background-color: transparent; color: whitesmoke; border-color: whitesmoke; background-size: cover; width: 100%; margin-top: 30px;">



          <div class="col-md-12 mobile">

            <uc:TermeSorano runat="server" />

           </div>

            <div class="col-md-10 web" style="margin-top: 5%">

            <uc:TermeSorano runat="server" />

           </div>

              <div class="col-md-2 web">

                <img src="../images/trilly.png" class="img img-responsive" alt="" />

            </div>

        </div>

        <hr />

        <div style="padding-top: 30px;">

            <uc:Footer runat="server" />

        </div>
      
 <script src="/js/jquery.min.js"></script>

    <script src="/js/jquery-ui.min.js"></script>

    <script src="/js/bootstrap.min.js"></script>

    <script src="/js/bootstrap-hover-dropdown.min.js"></script>

    <script src="/js/moment.js"></script>

    <script src="/js/jquery.bsPhotoGallery.js"></script>

    <script src="/js/daterangepicker.js"></script>

    <script src="/js/showText.min.js"></script>
    <script>
        $('.carousel').carousel(

            {
                interval: 5000,
                cycle: true

            });


        var carouselContainer = $('.carousel');
        var slideInterval = 20000;
        $('.toggleHeading').hide();
        $('.toggleCaption').hide();
        $('.toggleCaption2').hide();
        $('.toggleCaption3').hide();
        $('.toggleCaption4').hide();

        var caption2 = $('.toggleCaption')
            .addClass('animated fadeInUp')
            .one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend',
                function () {
                    $(this).removeClass('animated fadeInUp');
                });

        var caption3 = $('.toggleCaption2')
            .addClass('animated fadeInUp')
            .one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend',
                function () {
                    $(this).removeClass('animated fadeInUp');
                });
        var caption4 = $('.toggleCaption3')
            .addClass('animated fadeInUp')
            .one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend',
                function () {
                    $(this).removeClass('animated fadeInUp');
                });

        var caption5 = $('.toggleCaption4')
            .addClass('animated fadeInUp')
            .one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend',
                function () {
                    $(this).removeClass('animated fadeInUp');
                });
        var caption = $('.toggleHeading')
            .addClass('animated fadeInRight')
            .one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend',
                function () {
                    $(this).removeClass('animated fadeInRight');
                });
        caption.delay(3000).slideToggle("slow");
        caption2.delay(1000).slideToggle();
        caption3.delay(3000).slideToggle();
        caption4.delay(3000).slideToggle();
        caption5.delay(3000).slideToggle();
    </script>
    <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-592ff19f4bffcaf7"></script>
</body>
</html>

