﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Przypomnienia.aspx.cs" Inherits="Przypomnienia" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" 
         DataSourceID="SqlDataSource1" CssClass="raport">
        <Columns>
            <asp:HyperLinkField />
        </Columns>
       
    </asp:GridView>



    <asp:SqlDataSource runat="server" 
   
        ConnectionString="<%$ ConnectionStrings:HelpDeskConnectionString %>" 
        SelectCommand="SELECT *from Przypomnienia" ID="SQLDataSource1">
        
       
        
        </asp:SqlDataSource>
      
      
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
   
        ConnectionString="<%$ ConnectionStrings:HelpDeskConnectionString %>" 
        SelectCommand="SELECT *from ZgloszeniaStatusy">
        
       
        
        </asp:SqlDataSource>


    <ul ID="ListBox1" runat="server">
    </ul>
</asp:Content>

