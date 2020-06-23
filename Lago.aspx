<%@ Page Language="C#" %>
<%@ Register TagPrefix="uc" TagName="NavigationMenu" Src="~/Controls/NavigationMenu.ascx" %>


<!DOCTYPE html>
<html lang="en">
  <head>
  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

   <title>Lago e dintorni, Bolsena, civita di bagnoregio B&B Maremma Tufo, Pitigliano, Agriturismi, toscana, Saturnia, Terme</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">
     <link href="css/bootstrap-theme.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/full-slider.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">
    </head>
       <body style="background-image:url('Images/stars.gif');">               
          <uc:NavigationMenu runat="server"/>
          <header id="myCarousel" class="carousel slide">
             <div class="carousel-inner ">
               <div class="item active">      
                    <div class="fill" style="background-image:url('Images/tour/lagodibolsena.jpg');">
                      <h2 class="didascaliaTop" hidden>il lago di bolsena</h2>
                    </div>               
               </div>
                 <div class="item" >
                     
                    <div class="fill" style="background-image:url('Images/tour/civita_di_bagnoregio.jpg');">
                    <h2 class="didascaliaTop">Bagnoregio, "la città che muore"</h2>
                    </div>            
              </div>
                  <div class="item">                    
                      <div class="fill" style="background-image:url('Images/tour/Duomo_di_orvieto_orizzontale.jpg');">
                        <h2 class="didascaliaTop">Il duomo di Orvieto</h2>
                      </div>                     
            </div>
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="icon-next"></span>
        </a>
      </div>
    </header>  

          
            <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap-hover-dropdown.min.js"></script>
    <script src="js/showText.js"></script>
    <!-- Script to Activate the Carousel -->
    <script>
        $('.carousel').carousel(

         {
             interval: 6000,
             cycle: true

         });

        $(function () {
                $('.didascaliaTop').fadeIn(2000);
        });
        $('#myCarousel').on('slid.bs.carousel', function () {
            $('.didascaliaTop').fadeIn(600);
        })
        $('#myCarousel').on('slide.bs.carousel', function () {
            $('.didascaliaTop').fadeOut(300);
        })

    </script>

</body>
</html>