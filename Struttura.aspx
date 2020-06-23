<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Struttura.aspx.cs" Inherits="Struttura" %>
<%@ Register TagPrefix="uc" TagName="NavigationMenu" Src="~/Controls/NavigationMenu.ascx" %>
<%@ Register TagPrefix="uc" TagName="Footer" Src="~/Controls/Footer.ascx" %>
<%@ Register TagPrefix="uc" TagName="TermeSorano" Src="~/Controls/TermeSorano.ascx" %>


<!DOCTYPE html>
<html lang="en">
   <head>
  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

   <title>La Struttura , B&B Maremma nel Tufo, Pitigliano, Agriturismi, toscana, Saturnia</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">
     <link href="css/bootstrap-theme.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/full-slider.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">
    <link href="css/FotoGallery.css" rel="stylesheet">
    </head>
 <body style="background-image:url('Images/stars.gif');">       
    <uc:NavigationMenu runat="server"/>
<div class="wrapper">
   <div class="container-fluid">
    <div class="row belowNavBar" ></div>
    <div class="row">
       <div class="col-md-2">
        <img class="img-responsive" src="images/STREGATTO.png"/>
        </div>
        <div class="col-md-10">
             <ul class="first">
            
              
                 <li>
                     <img class="img-circle" alt="Maremma Nel Tufo" src="images/Struttura/fabbricatoS.jpg"/>
                 </li>
                 <li>
                     <img class="img-circle" alt="Facciata esterna" src="images/Struttura/Facciata.jpg"/>
                 </li> 
                 <li>
                     <img  class="img-circle" alt="Piscina" src="images/Piscina.jpg"/>   
                 </li>
                 <li>
                     <img  class="img-circle" alt="Piscina in notturna" src="images/piscina7.jpg"/>   
                 </li>
                
                 <li>
                     <img class="img-circle" alt="I nostri olivi" src="images/Struttura/gli_olivi.jpg"/>
                 </li>      
                 <li>
                     <img class="img-circle" alt="l'oliveta" src="images/Struttura/uliveto.jpg"/>
                 </li> 
                 <li>
                     <img  class="img-circle" alt="Il vigneto" src="images/Struttura/vigneto.jpg"/>
                 </li>
                 <li>
                     <img class="img-circle" alt="Audery!" src="images/Struttura/Audrey.jpeg"/>
                 </li>  
                 <li>
                     <img class="img-circle" alt="un particolare" src="images/Struttura/CharlieChaplin.jpeg"/>
                 </li>  
                 <li>
                     <img class="img-circle" alt="Lupin" src="images/Struttura/5_Lupin.jpeg"/>
                 </li>      
                 <li>
                     <img class="img-circle" alt="Peter Pan" src="images/Struttura/PeterPan4.jpg"/>
                 </li>            
           </ul>    
         <p style="color: white" class="didascaliaCorsivo toggleCaption lead">"In questo luogo sarete accolti dalla gentilezza e dal sorriso di Maria Elena e della sua famiglia.
                   Maria Elena, ha deciso di intraprendere un'attività che rispecchiasse le esigenze di un luogo che, ancora oggi, 
                   nell'era della tecnologia e del consumismo,  è prevalentemente incentrato sull'agricoltura e sulla cura del territorio.
                   Da questa volontà nasce l'azienda “Maremma Nel Tufo”, che si trova a soli 2 chilometri da Pitigliano ed è un  
                   accogliente rifugio per chi vuole un angolo tranquillo, non troppo lontano dal centro del paese, ma immerso nel verde, tra olivi, vigneti e alberi da frutto.
                   L'azienda offre la possibilità di dormire in comode camere o usufruire di piccoli o grandi appartamenti.
                  </p>
                  <p style="color: white" class="didascaliaCorsivo toggleCaption2 lead">
                   Ogni camera è dotata di bagno privato e di Phon. Le cucine hanno il frigo e sono complete di stoviglie.  
                   La piscina tra gli olivi di mt. 7×14 è utilizzata solo dagli ospiti della nostra casa. All’ingresso della piscina si 
                   trova una veranda comune coperta  per chi, oltre all’abbronzatura, preferisce un sano relax.
                   La struttura, dispone di un Parcheggio privato gratuito per auto e moto, inoltre a 20 mt, si trova la  fermata dell'autobus
                   per chi vuole lasciare l’auto a casa.
                    Tutte le camere e gli appartamenti, sono arredati a tema di un diverso cartone animato. 
                   All'interno della struttura, gli ospito potranno "incontrare", Peter Pan, Topolino, Cenerentola, Alice e molti altri... 
                   PS: ci raccomandiamo di fare attenzione al famigerato Lupin, che si aggira nella struttura con la sua banda! "</p>
              
            
        </div>
        
          
    </div>
         </div>

  <div class="push"></div>
</div>
         <div class="row">
      <uc:TermeSorano runat="server" />
        </div>
      <uc:Footer runat="server"  />
   
</body>
  
    <!-- Bootstrap Core JavaScript -->   
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap-hover-dropdown.min.js"></script>
    <script src="js/showText.js"></script>
    <script src="js/jquery.bsPhotoGallery.js"></script>
    <script>
        $(document).ready(function () {
            $('ul.first').bsPhotoGallery({
                "classes": "col-lg-2 col-md-4 col-sm-3 col-xs-4 col-xxs-12 img-circle",
                "hasModal": true
            });
        });
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
    </script>

</html>
