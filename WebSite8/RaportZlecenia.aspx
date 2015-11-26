<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RaportZlecenia.aspx.cs" Inherits="RaportZlecenia" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="True" 
         DataSourceID="SqlDataSource1">
       
    </asp:GridView>



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
   
        ConnectionString="<%$ ConnectionStrings:HelpDeskConnectionString %>" 
        SelectCommand="SELECT *from Zgloszenia">
        
       
        
        </asp:SqlDataSource>
      
  

</asp:Content>

