<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gridView.aspx.cs" Inherits="gridView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" 
        DataSourceID="SqlDataSource1" Width="1226px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowSelectButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="LOGIN" HeaderText="LOGIN" SortExpression="LOGIN" />
            <asp:BoundField DataField="IMIE" HeaderText="IMIE" SortExpression="IMIE" />
            <asp:BoundField DataField="NAZWISKO" HeaderText="NAZWISKO" 
                SortExpression="NAZWISKO" />
            <asp:BoundField DataField="HASLO" HeaderText="HASLO" SortExpression="HASLO" />
            <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
            <asp:BoundField DataField="TYP" HeaderText="TYP" SortExpression="TYP" />
        </Columns>
    </asp:GridView>
    
     <%-- <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
        AllowSorting="True"  
        DataSourceID="SqlDataSource2" Width="589px">
          <Columns>
              <asp:CommandField ShowSelectButton="True" />
          </Columns>
    </asp:GridView>--%>
    
    
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:HelpDeskConnectionString %>" 
        DeleteCommand="DELETE FROM [uzytkownicy] WHERE [ID] = @ID" 
        InsertCommand="INSERT INTO [uzytkownicy] ([LOGIN], [IMIE], [NAZWISKO], [HASLO], [EMAIL], [TYP]) VALUES (@LOGIN, @IMIE, @NAZWISKO, @HASLO, @EMAIL, @TYP)" 
        SelectCommand="SELECT * FROM [uzytkownicy]" 
        UpdateCommand="UPDATE [uzytkownicy] SET [LOGIN] = @LOGIN, [IMIE] = @IMIE, [NAZWISKO] = @NAZWISKO, [HASLO] = @HASLO, [EMAIL] = @EMAIL, [TYP] = @TYP WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="LOGIN" Type="String" />
            <asp:Parameter Name="IMIE" Type="String" />
            <asp:Parameter Name="NAZWISKO" Type="String" />
            <asp:Parameter Name="HASLO" Type="String" />
            <asp:Parameter Name="EMAIL" Type="String" />
            <asp:Parameter Name="TYP" Type="Int32" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="LOGIN" Type="String" />
            <asp:Parameter Name="IMIE" Type="String" />
            <asp:Parameter Name="NAZWISKO" Type="String" />
            <asp:Parameter Name="HASLO" Type="String" />
            <asp:Parameter Name="EMAIL" Type="String" />
            <asp:Parameter Name="TYP" Type="Int32" />
        </InsertParameters>
    </asp:SqlDataSource>


  <%--  <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:HelpDesk1ConnectionString %>" 
        SelectCommand="SELECT LOGIN as xyz,NAZWISKO,IMIE FROM [uzytkownicy]" 
        >--%>
        
        
    </asp:SqlDataSource>


</asp:Content>

