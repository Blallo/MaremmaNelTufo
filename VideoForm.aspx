
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .video{
position: relative;
padding-top:30px;
padding-bottom:56.25%;
height:0;
overflow:hidden;
}
        .video video{
position:absolute;
top:0;
left: 0;
width:100%;
height:100%;
}
    </style>
</head>
<body  style="background-color:black">
        <div class="row">
              <img src="../../images/newLogo.PNG" class="responsiveLogo" style="margin-left:10px; margin-top: -10px;">
    <form id="form1" runat="server">
        <div class="video">
    <video  src="video/MyVideo.mp4?autoplay=1" controls="controls" autoplay="autoplay"></video>
</div>

    </form>
            </div>
</body>
</html>
