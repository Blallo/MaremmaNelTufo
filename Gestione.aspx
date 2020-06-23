<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Gestione.aspx.cs" Inherits="Gestione" %>
<%@ Register TagPrefix="uc" TagName="Footer" Src="~/Controls/Footer.ascx" %>
<%@ Import Namespace="System.Web.Security" %>

<html>
<head id="Head1" runat="server">
  <meta name="robots" content="noindex">
  <title>Forms Authentication - Login</title>
</head>
 <body style="background-image:url('Images/tufo.jpg');"> 
             <div class="wrapper">
<div class="container belowNavBar">
     <div class="row" > 
  <form id="form1" runat="server">
    <h3>
      Logon Page</h3>
    <table>
      <tr>
        <td>
          E-mail address:</td>
        <td>
          <asp:TextBox ID="UserEmail" runat="server" /></td>
        <td>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
            ControlToValidate="UserEmail"
            Display="Dynamic" 
            ErrorMessage="Cannot be empty." 
            runat="server" />
        </td>
      </tr>
      <tr>
        <td>
          Password:</td>
        <td>
          <asp:TextBox ID="UserPass" TextMode="Password" 
             runat="server" />
        </td>
        <td>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
            ControlToValidate="UserPass"
            ErrorMessage="Cannot be empty." 
            runat="server" />
        </td>
      </tr>
      <tr>
        <td>
          Remember me?</td>
        <td>
          <asp:CheckBox ID="Persist" runat="server" /></td>
      </tr>
    </table>
    <asp:Button ID="Submit1" OnClick="Submit1_OnClick" Text="Log On" runat="server" />
    <p>
      <asp:Label ID="Msg" ForeColor="red" runat="server" />
    </p>
  </form>
            </div>
    
    </div>
            <div class="push"></div>
      
               
</div>
 <uc:Footer runat="server"  />
</body>
   
</html>
