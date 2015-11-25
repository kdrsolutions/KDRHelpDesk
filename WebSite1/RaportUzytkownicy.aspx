<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RaportUzytkownicy.aspx.cs" Inherits="RaportUzytkownicy" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="True" 
        DataKeyNames="IdUzytkownika" DataSourceID="SqlDataSource1">
       
    </asp:GridView>



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
   
        ConnectionString="<%$ ConnectionStrings:HelpDesk1ConnectionString %>" 
        SelectCommand="SELECT [IdUzytkownika], [Imie], [Nazwisko], [Opis], [Login], [EMail], [NrTelefonu], [Firma], [Aktywny], [Specjalista], [Administrator], [Adres] FROM [Uzytkownicy] ORDER BY [Nazwisko], [Imie], [IdUzytkownika]">
    </asp:SqlDataSource>


</asp:Content>

