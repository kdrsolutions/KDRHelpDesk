<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MenuRaportow.aspx.cs" Inherits="MenuRaportow" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:LinkButton ID="LinkButton1" runat="server" 
        PostBackUrl="~/RaportUzytkownicy.aspx">Użytkownicy</asp:LinkButton>
    <asp:LinkButton ID="LinkButton2" runat="server" 
    PostBackUrl="~/ListaSpraw.aspx">Lista Spraw</asp:LinkButton>
    <asp:LinkButton ID="LinkButton3" runat="server" 
        PostBackUrl="~/TerminRealizacjiSpraw.aspx">Termin Realizacji Spraw</asp:LinkButton>
    <asp:LinkButton ID="LinkButton4" runat="server" 
        PostBackUrl="~/Raport z Ocen.aspx">Raport z Ocen</asp:LinkButton>  
    <asp:LinkButton ID="LinkButton5" runat="server" 
        PostBackUrl="~/DanySpecjalista.aspx">Dany Specjalista</asp:LinkButton>      

</asp:Content>

