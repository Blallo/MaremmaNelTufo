<%@ Language="C#" %>
<%@ Register TagPrefix="uc" TagName="NavigationMenu" Src="~/Controls/NavigationMenu.ascx" %>
<%@ Register TagPrefix="uc" TagName="BoxInformazioni" Src="~/Controls/BoxInformazioni.ascx" %>
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

   <title>Contatti, B&B Maremma Tufo, Pitigliano, Agriturismi, toscana, Saturnia, Terme</title>

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
    <div class="row belowNavBar" ></div>
 <div class="row">       
     <div class="col-md-6">  <img src="images/ReLeone2.png" class="img-responsive"/>    </div>
     <div class="col-md-5" style="color: whitesmoke">
     <div class="didascaliaCorsivo" id="telefono"  style="color: whitesmoke">Telefono (click per telefono) <span id="telefonoSpan">+</span>
       <div id="telefonoInfo">
         
        <h3>Maria Elena:<br/><br/><a href="tel:+393423282955" class="glyphicon glyphicon-earphone" style="color: whitesmoke">342-3282955</a></h3>
       
               <h3>Luciano: <br/><br/><a href="tel:+393483924598" class="glyphicon glyphicon-earphone" style="color: whitesmoke">348-3924598</a></h3>
    <%--    <h3>Luciano2:<br/><br/><a href="tel:+393468895167" class="glyphicon glyphicon-earphone" style="color: black;">346-8895167</a></h3>
   --%>    </div>
     </div>

      <div class="didascaliaCorsivo" id="mail" style="color: whitesmoke">Email (click per email) <span id="mailSpan">+</span>
        <div id="mailInfo">
          <a href="mailto:info@maremmaneltufo.com"><h3 style="color: whitesmoke">info@maremmaneltufo.com</h3></a>
        </div>
      </div>
  </div>
  <div class="col-md-5" style="color: whitesmoke">
   <uc:BoxInformazioni runat="server"></uc:BoxInformazioni>
</div>
  </div>
  <div class="push"></div>
</div>
               <div class="row">
      <uc:TermeSorano runat="server" />
        </div>
       <uc:Footer runat="server"  />
   
   
 </body>
    <script>
        $(document).ready(
        function () {
            $("#mailInfo").hide();
            $("#mail").click(function () {     
              if ($("#mailInfo").is(':visible'))
               {       
                  $('#mailInfo').slideUp();
                  $('#mailSpan').text('+');
                }
               else
                {
                  $('#mailInfo').slideDown();
                   $('#mailSpan').text('-');
                 }
            });

            $("#telefonoInfo").hide();
            $("#telefono").click(function () {
                if ($("#telefonoInfo").is(':visible')) {
                    $('#telefonoInfo').slideUp();
                    $('#telefonoSpan').text('+');
                }
                else {
                    $('#telefonoInfo').slideDown();
                    $('#telefonoSpan').text('-');
                }
            });
        });

    

    
    </script>
<script>
        
    $(document).ready(function() {
    $("#name").click(function () {  $("#name").css('background-color' , '#FFFFFF');});
    $("#email").click(function () { $("#email").css('background-color', '#FFFFFF'); });
    $("#Message1").click(function () { $("#Message1").css('background-color', '#FFFFFF'); });
    $("#Button1").click(function () {
        $("#nameLabel").text('Nome: *');
        $("#emailLabel").text('email: *');
        $("#name").css('background-color', '#FFFFFF');
        $("#email").css('background-color', '#FFFFFF');
        $("#Message1").css('background-color', '#FFFFFF'); 
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
