﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="Stylesheet" type="text/css" href="css/bootstrap.min.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:HelpDesk1ConnectionString %>" 
            SelectCommand="SELECT [ID], [NAZWISKO], [IMIE], [EMAIL], [TYP] FROM [uzytkownicy]"></asp:SqlDataSource>
    </div>
    </form>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
