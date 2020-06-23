<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LastMinutes.aspx.cs" Inherits="LastMinutes" %>
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

   <title>Last Minutes, B&B Maremma Tufo, Pitigliano, Agriturismi, toscana, Saturnia, Terme</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">
    
     <link href="css/bootstrap-theme.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/full-slider.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">   

    <!-- Bootstrap Core JavaScript -->
   
          <link href="css/bootstrap-editable.css" rel="stylesheet">

    </head>
    <body style="background-image:url('Images/stars.gif');">          
  <uc:NavigationMenu runat="server"/>

         <div class="wrapper">
<div class="container belowNavBar">
     <div class="row" > 
              <div class="col-md-2" >
              <img class="img img-responsive" src="images/bianconiglio.png"/>
         </div> 
 <div class="col-md-10">
     <div class="row">
       <p class="regionPanel3" style="color: whitesmoke">
        Le nostre offerte per i "ritardatari".....
      </p>
     </div>
     <div class="row">
       <div class="col-md-4">
     <div id="LastMinutes" class="regionPanel3" ><p class="regionPanel3p" style="color: whitesmoke">Pacchetto Last Minutes:  <span id="LastMinutesSpan">+</span></p>
        <div id="LastMinutesInfo"hidden>
               <p class="regionPanel4" style="color: whitesmoke">Soggiorni minori di 7 notti</p>  
            <ul class="regionPanel4" style="color: whitesmoke">
                 
                  <li>Il soggiorno comprende Pernottamento e prima colazione</li>
                  <li>5% di sconto sul costo totale del soggiorno.</li>
              </ul>
              <p class="regionPanel4" style="color: whitesmoke">Soggiorni maggiori di 7 notti</p>
              <ul class="regionPanel4" style="color: whitesmoke">

                  <li>Il soggiorno comprende Pernottamento e prima colazione</li>
                  <li>10% di sconto sul costo totale del soggiorno.</li>
             </ul> 
            <p class="regionPanel5" style="color: whitesmoke">Il pacchetto è valido per chi prenota con 2 giorni di anticipo rispetto alla data di check-in.</p>
                       
         </div>
        </div>
        </div>
    
          <div class="col-md-4">
     <div id="LastSecond" class="regionPanel3"   ><p class="regionPanel3p" style="color: whitesmoke"style="color: whitesmoke">Pacchetto Last Second:  <span id="LastSecondSpan">+</span></p>
        <div id="LastSecondInfo" hidden>
             
              <p class="regionPanel4" style="color: whitesmoke">Soggiorni minori di 7 notti</></p>
            <ul class="regionPanel4" style="color: whitesmoke">
                  
                  <li>Il soggiorno comprende Pernottamento e prima colazione</li>
                  <li>10% di sconto sul costo totale del soggiorno.</li>
              </ul>
             <p class="regionPanel4" style="color: whitesmoke">Soggiorni maggiori di 7 notti</p>
              <ul class="regionPanel4" style="color: whitesmoke">
                 
                  <li>Il soggiorno comprende Pernottamento e prima colazione</li>
                  <li>15% di sconto sul costo totale del soggiorno.</li>
             </ul>    
             <p class="regionPanel5" style="color: whitesmoke">Il pacchetto è valido per chi prenota con 1 giorno di anticipo rispetto alla data di check-in.</p>        
         </div>
        </div>
        </div>
     <div class="col-md-4">
     <div id="LastMoment" class="regionPanel3" ><p class="regionPanel3p" style="color: whitesmoke">Pacchetto Last Moment: <span id="LastMomentSpan">+</span></p>
        <div id="LastMomentInfo" hidden>
            
               <p class="regionPanel4" style="color: whitesmoke">Soggiorni minori di 7 notti</p>
              <ul class="regionPanel4" style="color: whitesmoke">
               
                  <li>Il soggiorno comprende Pernottamento e prima colazione</li>
                  <li>15% di sconto sul costo totale del soggiorno.</li>
              </ul>
               <p class="regionPanel4" style="color: whitesmoke">Soggiorni maggiori di 7 notti</p>
              <ul class="regionPanel4" style="color: whitesmoke">
                  
                  <li>Il soggiorno comprende Pernottamento e prima colazione</li>
                  <li>20% di sconto sul costo totale del soggiorno.</li>
             </ul>   
              <p class="regionPanel5" style="color: whitesmoke">
                  Il pacchetto è valido per chi prenota il giorno stesso della data di check-in.
              </p>         
         </div>
        </div>
        </div>       
       </div>
      <div class="col-md-4" id="nuovaOfferta">
      </div>
      </div>
  </div>
  <div class="col-md-6 col-md-offset-3" style="color: whitesmoke" >
  <uc:BoxInformazioni runat="server"></uc:BoxInformazioni>
</div>
  </div>

            <div class="push"></div>
</div>
            <!-- Footer -->
        <uc:Footer runat="server"  />
   
 
 </body>
     <script src="js/jquery.js"></script>
  <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap-hover-dropdown.min.js"></script>
    <script src="js/showText.js"></script>
               <script src="js/bootstrap-editable.min.js"></script>
    <script>
        $(document).ready(
            function () {
                $("#LastMinutesInfo").hide();
                $("#LastMinutes").click(function () {
                    if ($("#LastMinutesInfo").is(':visible'))
                    {       
                        $('#LastMinutesInfo').slideUp();
                        $('#LastMinutesSpan').text('+');
                    }
                    else
                    {
                        $('#LastMinutesInfo').slideDown();
                        $('#LastMinutesSpan').text('-');
                    }
                });

                $("#LastSecondInfo").hide();
                $("#LastSecond").click(function () {
                    if ($("#LastSecondInfo").is(':visible')) {
                        $('#LastSecondInfo').slideUp();
                        $('#LastSecondSpan').text('+');
                    }
                    else {
                        $('#LastSecondInfo').slideDown();
                        $('#LastSecondSpan').text('-');
                    }
                });

                $("#LastMomentInfo").hide();
                $("#LastMoment").click(function () {
                    if ($("#LastMomentInfo").is(':visible')) {
                        $('#LastMomentInfo').slideUp();
                        $('#LastMomentSpan').text('+');
                    }
                    else {
                        $('#LastMomentInfo').slideDown();
                        $('#LastMomentSpan').text('-');
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
    <script>
        
                function test (){
              

                $('#popup')
                    .editable({
                        url: function(params) {
                            return $.ajax({
                                type: 'POST',
                                url: 'LastMinutes.aspx/Test',
                                data: JSON.stringify(params),
                                contentType: 'application/json; charset=utf-8',
                                dataType: 'json',
                                async: true,
                                cache: false,
                                timeout: 10000,
                                toggle: 'manual',
                                mode: 'popup',
                                title: 'Enter comment',
                                emptytext: '',

                                display: function(value, response) {
                                    return false; //disable this method
                                },
                                success: function(response, newValue) {
                                    alert("success saving: " + newValue);
                                    $('#nuovaOfferta').html('<div class="row">' + newValue + '</div>');
                                    $('#popup').editable('hide');
                                }
                            })
                        }
                    });
                $('#popup').editable('show');
             
                }
    </script>
</html>
