﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Przypomnienia.aspx.cs" Inherits="Przypomnienia" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="True" 
         DataSourceID="SqlDataSource1">
       
    </asp:GridView>



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
   
        ConnectionString="<%$ ConnectionStrings:HelpDesk1ConnectionString %>" 
        SelectCommand="SELECT *from Przypomnienia">
        
       
        
        </asp:SqlDataSource>
      
      
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
   
        ConnectionString="<%$ ConnectionStrings:HelpDesk1ConnectionString %>" 
        SelectCommand="SELECT *from ZgloszeniaStatusy">
        
       
        
        </asp:SqlDataSource>

</asp:Content>
