<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sole.aspx.cs" Inherits="Sole" %>
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

   <title>Peter Pan, B & B Maremma nel Tufo, Pitigliano, Agriturismi, Toscana, Terme di saturnia</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">
     <link href="css/bootstrap-theme.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/full-slider.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">
       <link rel="stylesheet" href="css/simple-sidebar.css">
    </head>
<body style="background-image: url('images/stars.gif');">

      <uc:NavigationMenu runat="server" />

  <div class="didascaliaPosition2New">
      <div id="msg1">
           
          <img src="Images/PeterPanSmall.png" />
          " Peter Pan "<br/>
      </div>
  </div>
       

  <div id="sidebar-wrapper">
      <div class="row">
          <div id="msg" style="margin-top: 45%" class="didascaliaPositionNew">  <img src="Images/PeterPan.png"/><br/></div>
      </div>
  </div>
  <div id="wrapper" style="margin-left: 15px;">

      <div id="myCarousel" class="carousel slide">
            <div class="carousel-inner" id="innerCarousel" runat="server"></div>


             


              <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                  <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                  <span class="sr-only">Previous</span>
              </a>


              <a class="right carousel-control" role="button" href="#myCarousel" data-slide="next">

                  <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                  <span class="sr-only">Next</span>
              </a>


     
      </div>
 
      <div style="padding-top: 30px;">

          <uc:Footer runat="server" />
      </div>
  </div>
      
            <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap-hover-dropdown.min.js"></script>
    <script src="js/showText.js"></script>
    <!-- Script to Activate the Carousel -->
    <script>
        $('.carousel').carousel({
            interval: 5000 //changes the speed
        });
    </script>
   <script>
          $(function ()
          {
            showText("#msg", "Peter Pan è una camera matrimoniale con possibilità di aggiungere un terzo letto, bagno e ingresso indipendente", 0, 50);
          });

          $(function () {
              showText("#msg1", "Peter Pan è una camera matrimoniale con possibilità di aggiungere un terzo letto, bagno e ingresso indipendente", 0, 50);
          });


   </script>



</body>
</html>
