<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Residence.aspx.cs" Inherits="Residence" %>
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

   <title>Residence, B&B Maremma Tufo, Pitigliano, Agriturismi, toscana, Saturnia, Terme</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">
     <link href="css/bootstrap-theme.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/full-slider.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">
    </head>
    <body style="background-image:url('Images/stars.gif');">          
  <uc:NavigationMenu runat="server"/>
                  <div class="wrapper">
<div class="container belowNavBar">
     <div class="row" > 
              <div class="col-md-2" >
              <img class="img-responsive" src="images/reginadicuori.gif"/>
         </div> 
 <div class="col-md-10">
     <div class="row">
       <p style="font-family: harlow_solid_italicitalic; font-size: x-large;color: whitesmoke">
        L'offerta Residence
      </p>
     </div>
     <div class="row">
       <div class="col-md-12">
     <div id="Residence"><p style="font-family: harlow_solid_italicitalic; font-size: x-large;color: whitesmoke">L'offerta Residence è valida per tutti i nostri appartamenti Caminetto, Rifugio e Arcobaleno (click per dettagli):<span id="ResidenceSpan">+</span></p>
        <div id="ResidenceInfo" hidden>
            <p style="font-family: harlow_solid_italicitalic; font-size: x-large;color: whitesmoke">L'offerta comprende: </p>
              <ul style="font-family: harlow_solid_italicitalic; font-size: x-large;color: whitesmoke">
                  <li>Pernottamento</li>
                  <li>Biancheria da camera e da Bagno</li>
                  <li>Pulizia Finale</li>
              </ul>
           <p style="font-family: harlow_solid_italicitalic; font-size: x-large;color: whitesmoke">è inoltre possibile usufruire dell'offerta residence anche per lunghi periodi, fino ad un massimo di un anno. </p>     
         </div>
        </div>
        </div>
       </div>
      </div>
  </div>
  <div class="col-md-6 col-md-offset-3" style="color: whitesmoke" >
  <uc:BoxInformazioni runat="server"></uc:BoxInformazioni>
</div>
  </div>
                      <div class="push"></div>
      
               </div> 
 <uc:Footer runat="server"  />
  
                 
 
 </body>
     <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap-hover-dropdown.min.js"></script>
    <script src="js/showText.js"></script>
    <script>
        $(document).ready(
        function () {
            $("#ResidenceInfo").hide();
            $("#Residence").click(function () {
                if ($("#ResidenceInfo").is(':visible'))
               {       
                    $('#ResidenceInfo').slideUp();
                    $('#ResidenceSpan').text('+');
                }
               else
                {
                    $('#ResidenceInfo').slideDown();
                    $('#ResidenceSpan').text('-');
                 }
            });
        });

    

    
    </script>
    
    <script>
        
    $(document).ready(function() {
    $("#name").click(function () {  $("#name").css('background-color' , '#FFFFFF');});
    $("#email").click(function () { $("#email").css('background-color', '#FFFFFF'); });
    $("#Message1").click(function () { $("#Message1").css('background-color', '#FFFFFF'); });
    $("#Telefono").click(function () { $("#Telefono").css('background-color', '#FFFFFF'); });

    });
</script>
</html>
