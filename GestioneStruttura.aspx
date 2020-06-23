<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GestioneStruttura.aspx.cs" Inherits="GestioneStruttura" %>
<%@ Register TagPrefix="uc" TagName="NavigationMenu" Src="~/Controls/NavigationMenu.ascx" %>
<%@ Register TagPrefix="uc" TagName="Footer" Src="~/Controls/Footer.ascx" %>
<%@ Register TagPrefix="uc" TagName="Insert" Src="~/Controls/InsertAvailability.ascx" %>




<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="robots" content="noindex">
  <link rel="stylesheet" href="css/jquery-ui.css">
      <script src="/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap-hover-dropdown.min.js"></script>
    <script src="js/showText.js"></script>

  <script src="js/jquery-ui.js"></script>
  <script>

      $( function() {
          $("#datepicker").datepicker();
          $("#datepicker1").datepicker();
      } );
  </script>

       <title>Residence, B & B Maremma Tufo, Pitigliano, Agriturismi, toscana, Saturnia, Terme, Tuscany</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">
     <link href="css/bootstrap-theme.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/full-slider.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">

    </head>
    <body style="background-image:url('Images/tufo.jpg');">   
     
       <%-- <form id="form1" runat="server">--%>
     
        <div class="wrapper">
<div class="container belowNavBar">
     <div class="row" > 
              <div class="col-md-2" >
              <img class="img-responsive" src="images/logo2.png"/>
         </div> 
         </div>
     <div class="row" > 
 <div class="col-md-12 col-lg-12 col-sm-12">
     <uc:Insert runat="server" />
     </div>
         </div>
    
    </div>
            <div class="push">
               
            </div>
      
               
</div>
 <uc:Footer runat="server"  />
     <script type="text/javascript">       
     <%--   </form>--%>
         function updateQuantity(ctrl)
         {
             var data = $(ctrl).attr("actionDate");
             var roomType = $(ctrl).attr("roomType");
             var quantity = $(ctrl).val();
             $.ajax({
                 type: "POST",
                 async: false,
                 'url': 'GestioneStruttura.aspx/UpdateAvailability',
                 data: "{'data': '" + data + "', 'quantity': '" + quantity + "' , 'roomType': '" + roomType + "'}",
                 contentType: "application/json; charset=utf-8",
                 dataType: "json",
                 success: function (data, textStatus) {
                     $.each(data, function (index, element) {
                         message = element;
                     });
                       
                 },
                 error: function(data, textStatus) {
               
                 }
             });
         }

         function updatePrice(ctrl) {
             var data = $(ctrl).attr("actionDate");
             var roomType = $(ctrl).attr("roomType");
             var price = $(ctrl).val();
             $.ajax({
                 type: "POST",
                 async: false,
                 'url': 'GestioneStruttura.aspx/UpdatePrice',
                 data: "{'data': '" + data + "', 'price': '" + price + "' , 'roomType': '" + roomType + "'}",
                 contentType: "application/json; charset=utf-8",
                 dataType: "json",
                 success: function (data, textStatus) {
                     $.each(data, function (index, element) {
                         message = element;
                     });

                 },
                 error: function (data, textStatus) {

                 }
             });
         }

         function updateRestriction(ctrl) {
             var data = $(ctrl).attr("actionDate");
             var roomType = $(ctrl).attr("roomType");
             var restriction = $(ctrl).val();
             $.ajax({
                 type: "POST",
                 async: false,
                 'url': 'GestioneStruttura.aspx/UpdatePrice',
                 data: "{'data': '" + data + "', 'restriction': '" + restriction + "' , 'roomType': '" + roomType + "'}",
                 contentType: "application/json; charset=utf-8",
                 dataType: "json",
                 success: function (data, textStatus) {
                     $.each(data, function (index, element) {
                         message = element;
                     });

                 },
                 error: function (data, textStatus) {

                 }
             });
         }
     </script>
</body>
</html>
