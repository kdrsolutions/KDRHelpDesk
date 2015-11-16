<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="rap.aspx.cs" Inherits="rap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="true" 
        DataSourceID="SqlDataSource2" Width="1020px">
       
    </asp:GridView>

<asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:HelpDeskOldConnectionString2 %>" 
         
        SelectCommand="SELECT * FROM [uzytkownicy]" >
       
    </asp:SqlDataSource>


    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="true" 
        DataSourceID="SqlDataSource2" Width="1020px">
       
    </asp:GridView>

<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:HelpDeskOldConnectionString2 %>" 
         
        SelectCommand="SELECT * FROM [problemy]" >
       
    </asp:SqlDataSource>






</asp:Content>

