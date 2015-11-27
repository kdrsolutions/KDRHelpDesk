<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="DodajZgloszenie.aspx.cs" Inherits="DodajZgloszenie" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:HelpDeskConnectionString %>"
        SelectCommand="SELECT NULL AS IdTypu, 'Wybierz...' AS Nazwa
        UNION
        SELECT IdTypu, Nazwa FROM [Tematy] WHERE ([Aktywny] = 1)"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:HelpDeskConnectionString %>"
        SelectCommand="SELECT NULL AS IdStatusu, 'Wybierz...' AS Nazwa
        UNION ALL
        SELECT * FROM [ZgloszeniaStatusy]"></asp:SqlDataSource>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="IDZgloszenia" DataSourceID="SqlDataSource2"
        InsertItemPosition="LastItem" OnItemInserting="ListView1_ItemInserting" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
        <ItemTemplate>
            <tr style="background-color: #E0FFFF; color: #333333;">
                <td>
                    <asp:Button ID="SelectButton" runat="server" CommandName="Select" Text="Wybierz" />
                </td>
                <td>
                    <asp:Label ID="IDZgloszeniaLabel" runat="server" Text='<%# Eval("IDZgloszenia") %>' />
                </td>
                <td>
                    <asp:Label ID="IdTematuLabel" runat="server" Text='<%# Eval("IDTematu") %>' />
                </td>
                <td>
                    <asp:Label ID="OpisLabel" runat="server" Text='<%# Eval("Opis") %>' />
                </td>
                <td>
                    <asp:Label ID="IdStatusuLabel" runat="server" Text='<%# Eval("StatusNazwa") %>' />
                </td>
                <td>
                    <asp:Label ID="TematLabel" runat="server" Text='<%# Eval("Temat") %>' />
                </td>
                <td>
                    <asp:Label ID="DataZgloszeniaLabel" runat="server" Text='<%# Eval("DataZgloszenia") %>' />
                </td>
                <td>
                    <asp:Label ID="DataZakonczeniaLabel" runat="server" Text='<%# Eval("DataZakonczenia") %>' />
                </td>
              
                <td>
                    <asp:Label ID="IdSpecjalistyLabel" runat="server" Text='<%# Eval("Specjalista") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse;
                border-color: #999999; border-style: none; border-width: 1px;">
                <tr>
                    <td>
                        No data was returned.
                    </td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </td>
                <td>
                </td>
                <td>
                    <asp:TextBox ID="TematTextBox" runat="server" Text='<%# Bind("Temat") %>' />
                </td>
                <td>
                    <asp:TextBox ID="OpisTextBox" runat="server" Text='<%# Bind("Opis") %>' />
                </td>
                <td>
                    <asp:DropDownList ID="dropdownlist1" runat="server" DataSourceID="sqldatasource3"
                        DataTextField="nazwa" DataValueField="Idstatusu">
                    </asp:DropDownList>
                 </td>
                 <td>
                    <asp:DropDownList ID="dropdownlist2" runat="server" DataSourceID="sqldatasource5"
                        DataTextField="nazwa" DataValueField="idtypu">
                    </asp:DropDownList>
                </td>
                
                <td>
                    <asp:TextBox ID="DataZgloszeniaTextBox" runat="server" Text='<%# Bind("DataZgloszenia") %>' />
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
        </InsertItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;
                            border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;
                            font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color: #E0FFFF; color: #333333;">
                                <th runat="server">
                                </th>
                                <th runat="server">
                                    IDZgloszenia
                                </th>
                                <th runat="server">
                                    IDTematu
                                </th>
                                <th runat="server">
                                    Opis
                                </th>
                                <th runat="server">
                                    IdStatusu
                                </th>
                                <th runat="server">
                                    Temat
                                </th>
                                <th runat="server">
                                    DataZgloszenia
                                </th>
                                <th runat="server">
                                    DataZakonczenia
                                </th>
                                <th runat="server">
                                    Specjalista
                                </th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center; background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif;
                        color: #FFFFFF">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False"
                                    ShowPreviousPageButton="False" />
                                <asp:NumericPagerField />
                                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False"
                                    ShowPreviousPageButton="False" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <EditItemTemplate>
            <tr style="background-color: #999999;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
                <td>
                    <asp:Label ID="IDZgloszeniaLabel1" runat="server" Text='<%# Eval("IDZgloszenia") %>' />
                </td>
                <td>
                    <asp:TextBox ID="TematTextBox" runat="server" Text='<%# Bind("Temat") %>' />
                </td>
                <td>
                    <asp:TextBox ID="OpisTextBox" runat="server" Text='<%# Bind("Opis") %>' />
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3"
                        DataTextField="Nazwa" DataValueField="IdStatusu" SelectedValue='<%# Bind("IdStatusu") %>'>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource5"
                        DataTextField="Nazwa" DataValueField="IdTypu" SelectedValue='<%# Bind("IdTypu") %>'>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:TextBox ID="DataZgloszeniaTextBox" runat="server" Text='<%# Bind("DataZgloszenia") %>' />
                </td>
                <td>
                    <asp:TextBox ID="DataZakonczeniaTextBox" runat="server" Text='<%# Bind("DataZakonczenia") %>' />
                </td>
                <td>
                </td>
                <td>
                    <asp:TextBox ID="IdSpecjalistyTextBox" runat="server" Text='<%# Bind("Specjalista") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <SelectedItemTemplate>
            <tr style="background-color: #E2DED6; font-weight: bold; color: #333333;">
                <td>
                </td>
                <td>
                    <asp:Label ID="IDZgloszeniaLabel" runat="server" Text='<%# Eval("IDZgloszenia") %>' />
                </td>
                <td>
                    <asp:Label ID="TematLabel" runat="server" Text='<%# Eval("Temat") %>' />
                </td>
                <td>
                    <asp:Label ID="OpisLabel" runat="server" Text='<%# Eval("Opis") %>' />
                </td>
                <td>
                    <asp:Label ID="IdStatusuLabel" runat="server" Text='<%# Eval("IdStatusu") %>' />
                </td>
                <td>
                    <asp:Label ID="IdTematuLabel" runat="server" Text='<%# Eval("IdTematu") %>' />
                </td>
                <td>
                    <asp:Label ID="DataZgloszeniaLabel" runat="server" Text='<%# Eval("DataZgloszenia") %>' />
                </td>
                <td>
                    <asp:Label ID="DataZakonczeniaLabel" runat="server" Text='<%# Eval("DataZakonczenia") %>' />
                </td>
                <td>
                    <asp:Label ID="IdUzytkownikaLabel" runat="server" Text='<%# Eval("IdUzytkownika") %>' />
                </td>
                <td>
                    <asp:Label ID="IdSpecjalistyLabel" runat="server" Text='<%# Eval("Specjalista") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HelpDeskConnectionString %>"
        DeleteCommand="DELETE FROM [Zgloszenia] WHERE [IDZgloszenia] = @IDZgloszenia"
        InsertCommand="INSERT INTO [Zgloszenia] ([Temat], [Opis], [IdStatusu], [IdTematu], [DataZgloszenia], [DataZakonczenia], [IdUzytkownika], [IdSpecjalisty]) VALUES (@Temat, @Opis, 1, @IdTematu, @DataZgloszenia, @DataZakonczenia, @IdUzytkownika, @IdSpecjalisty)"
        SelectCommand="SELECT z.* , s.Nazwa AS StatusNazwa, u.Nazwisko + ' ' + u.Imie AS Specjalista
FROM [Zgloszenia] z
LEFT JOIN ZgloszeniaStatusy s ON s.IdStatusu = z.IdStatusu
LEFT JOIN Uzytkownicy u ON u.IdUzytkownika = z.IDSpecjalisty
WHERE (u.[IdUzytkownika] = 2) 
ORDER BY [DataZgloszenia] DESC" UpdateCommand="UPDATE [Zgloszenia] SET [Temat] = @Temat, [Opis] = @Opis, [IdStatusu] = @IdStatusu, [IdTematu] = @IdTematu, [DataZgloszenia] = @DataZgloszenia, [DataZakonczenia] = @DataZakonczenia,  [IdSpecjalisty] = @IdSpecjalisty WHERE [IDZgloszenia] = @IDZgloszenia">
        <SelectParameters>
            <asp:SessionParameter Name="IdUzytkownika" SessionField="USER_ID" Type="Int32" />
        </SelectParameters>
        <DeleteParameters>
            <asp:Parameter Name="IDZgloszenia" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="Temat" Type="String" />
            <asp:Parameter Name="Opis" Type="String" />
            <asp:Parameter Name="IdStatusu" Type="Int32" />
            <asp:Parameter Name="IdTematu" Type="Int32" />
            <asp:Parameter Name="DataZgloszenia" Type="DateTime" />
            <asp:Parameter Name="DataZakonczenia" Type="DateTime" />
            <asp:Parameter Name="IdSpecjalisty" Type="Int32" />
            <asp:Parameter Name="IDZgloszenia" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="Temat" Type="String" />
            <asp:Parameter Name="Opis" Type="String" />
            <asp:Parameter Name="IdTematu" Type="Int32" />
            <asp:Parameter Name="DataZgloszenia" Type="DateTime" />
            <asp:Parameter Name="DataZakonczenia" Type="DateTime" />
            <asp:SessionParameter Name="IdUzytkownika" SessionField="USER_ID" Type="Int32" />
            <asp:Parameter Name="IdSpecjalisty" Type="Int32" />
        </InsertParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HelpDeskConnectionString %>"
        DeleteCommand="DELETE FROM [Zgloszenia] WHERE [IDZgloszenia] = @IDZgloszenia"
        InsertCommand="INSERT INTO [Zgloszenia] ([IDZgloszenia], [Temat], [Opis], [IdStatusu], [IdTematu], [DataZgloszenia], [DataZakonczenia], [IdUzytkownika], [IdSpecjalisty]) VALUES (@IDZgloszenia, @Temat, @Opis, @IdStatusu, @IdTematu, @DataZgloszenia, @DataZakonczenia, @IdUzytkownika, @IdSpecjalisty)"
        SelectCommand="SELECT * FROM [Zgloszenia] WHERE ([IdUzytkownika] = @IdUzytkownika) ORDER BY [DataZgloszenia] DESC"
        UpdateCommand="UPDATE [Zgloszenia] SET [Temat] = @Temat, [Opis] = @Opis, [IdStatusu] = @IdStatusu, [IdTematu] = @IdTematu, [DataZgloszenia] = @DataZgloszenia, [DataZakonczenia] = @DataZakonczenia, [IdUzytkownika] = @IdUzytkownika, [IdSpecjalisty] = @IdSpecjalisty WHERE [IDZgloszenia] = @IDZgloszenia">
        <SelectParameters>
            <asp:SessionParameter Name="IdUzytkownika" SessionField="userid" Type="Int32" />
        </SelectParameters>
        <DeleteParameters>
            <asp:Parameter Name="IDZgloszenia" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="Temat" Type="String" />
            <asp:Parameter Name="Opis" Type="String" />
            <asp:Parameter Name="IdStatusu" Type="Int32" />
            <asp:Parameter Name="IdTematu" Type="Int32" />
            <asp:Parameter Name="DataZgloszenia" Type="DateTime" />
            <asp:Parameter Name="DataZakonczenia" Type="DateTime" />
            <asp:Parameter Name="IdUzytkownika" Type="Int32" />
            <asp:Parameter Name="IdSpecjalisty" Type="Int32" />
            <asp:Parameter Name="IDZgloszenia" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="IDZgloszenia" Type="Int32" />
            <asp:Parameter Name="Temat" Type="String" />
            <asp:Parameter Name="Opis" Type="String" />
            <asp:Parameter Name="IdStatusu" Type="Int32" />
            <asp:Parameter Name="IdTematu" Type="Int32" />
            <asp:Parameter Name="DataZgloszenia" Type="DateTime" />
            <asp:Parameter Name="DataZakonczenia" Type="DateTime" />
            <asp:Parameter Name="IdUzytkownika" Type="Int32" />
            <asp:Parameter Name="IdSpecjalisty" Type="Int32" />
        </InsertParameters>
    </asp:SqlDataSource>
    
    <asp:ListView ID="ListView2" runat="server" DataKeyNames="IdKorespondencji" Visible="false"
        DataSourceID="SqlDataSource4" InsertItemPosition="LastItem">
        <ItemTemplate>
            <tr style="background-color: #DCDCDC; color: #000000;">
                <td>
                </td>
                <td>
                    <asp:Label ID="IdKorespondencjiLabel" runat="server" Text='<%# Eval("IdKorespondencji") %>' />
                </td>
                <td>
                    <asp:Label ID="IdZgloszeniaLabel" runat="server" Text='<%# Eval("IdZgloszenia") %>' />
                </td>
                <td>
                    <asp:Label ID="IdUzytkownikaLabel" runat="server" Text='<%# Eval("IdUzytkownika") %>' />
                </td>
                <td>
                    <asp:Label ID="TrescLabel" runat="server" Text='<%# Eval("Tresc") %>' />
                </td>
                <td>
                    <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <AlternatingItemTemplate>
            <tr style="background-color: #FFF8DC;">
                <td>
                </td>
                <td>
                    <asp:Label ID="IdKorespondencjiLabel" runat="server" Text='<%# Eval("IdKorespondencji") %>' />
                </td>
                <td>
                    <asp:Label ID="IdZgloszeniaLabel" runat="server" Text='<%# Eval("IdZgloszenia") %>' />
                </td>
                <td>
                    <asp:Label ID="IdUzytkownikaLabel" runat="server" Text='<%# Eval("IdUzytkownika") %>' />
                </td>
                <td>
                    <asp:Label ID="TrescLabel" runat="server" Text='<%# Eval("Tresc") %>' />
                </td>
                <td>
                    <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse;
                border-color: #999999; border-style: none; border-width: 1px;">
                <tr>
                    <td>
                        No data was returned.
                    </td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                    <asp:TextBox ID="IdUzytkownikaTextBox" runat="server" Text='<%# Bind("IdUzytkownika") %>' />
                </td>
                <td>
                    <asp:TextBox ID="TrescTextBox" runat="server" Text='<%# Bind("Tresc") %>' />
                </td>
                <td>
                    <asp:TextBox ID="DataTextBox" runat="server" Text='<%# Bind("Data") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;
                            border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;
                            font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color: #DCDCDC; color: #000000;">
                                <th runat="server">
                                </th>
                                <th runat="server">
                                    IdKorespondencji
                                </th>
                                <th runat="server">
                                    IdZgloszenia
                                </th>
                                <th runat="server">
                                    IdUzytkownika
                                </th>
                                <th runat="server">
                                    Tresc
                                </th>
                                <th runat="server">
                                    Data
                                </th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center; background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif;
                        color: #000000;">
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <EditItemTemplate>
            <tr style="background-color: #008A8C; color: #FFFFFF;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
                <td>
                    <asp:Label ID="IdKorespondencjiLabel1" runat="server" Text='<%# Eval("IdKorespondencji") %>' />
                </td>
                <td>
                    <asp:TextBox ID="IdZgloszeniaTextBox" runat="server" Text='<%# Bind("IdZgloszenia") %>' />
                </td>
                <td>
                    <asp:TextBox ID="IdUzytkownikaTextBox" runat="server" Text='<%# Bind("IdUzytkownika") %>' />
                </td>
                <td>
                    <asp:TextBox ID="TrescTextBox" runat="server" Text='<%# Bind("Tresc") %>' />
                </td>
                <td>
                    <asp:TextBox ID="DataTextBox" runat="server" Text='<%# Bind("Data") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <SelectedItemTemplate>
            <tr style="background-color: #008A8C; font-weight: bold; color: #FFFFFF;">
                <td>
                </td>
                <td>
                    <asp:Label ID="IdKorespondencjiLabel" runat="server" Text='<%# Eval("IdKorespondencji") %>' />
                </td>
                <td>
                    <asp:Label ID="IdZgloszeniaLabel" runat="server" Text='<%# Eval("IdZgloszenia") %>' />
                </td>
                <td>
                    <asp:Label ID="IdUzytkownikaLabel" runat="server" Text='<%# Eval("IdUzytkownika") %>' />
                </td>
                <td>
                    <asp:Label ID="TrescLabel" runat="server" Text='<%# Eval("Tresc") %>' />
                </td>
                <td>
                    <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:HelpDeskConnectionString %>"
        DeleteCommand="DELETE FROM [Korespondencja] WHERE [IdKorespondencji] = @IdKorespondencji"
        InsertCommand="INSERT INTO [Korespondencja] ([IdZgloszenia], [IdUzytkownika], [Tresc], [Data]) VALUES ( @IdZgloszenia, @IdUzytkownika, @Tresc, @Data)"
        SelectCommand="SELECT * FROM [Korespondencja] WHERE ([IdZgloszenia] = @IdZgloszenia) ORDER BY [Data]"
        UpdateCommand="UPDATE [Korespondencja] SET [IdZgloszenia] = @IdZgloszenia, [IdUzytkownika] = @IdUzytkownika, [Tresc] = @Tresc, [Data] = @Data WHERE [IdKorespondencji] = @IdKorespondencji">
        <SelectParameters>
            <asp:ControlParameter ControlID="ListView1" Name="IdZgloszenia" PropertyName="SelectedValue"
                Type="Int32" />
        </SelectParameters>
        <DeleteParameters>
            <asp:Parameter Name="IdKorespondencji" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="IdZgloszenia" Type="Int32" />
            <asp:Parameter Name="IdUzytkownika" Type="Int32" />
            <asp:Parameter Name="Tresc" Type="String" />
            <asp:Parameter Name="Data" Type="DateTime" />
            <asp:Parameter Name="IdKorespondencji" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="IdKorespondencji" Type="Int32" />
            <asp:ControlParameter ControlID="ListView1" Name="IdZgloszenia" PropertyName="SelectedValue"
                Type="Int32" />
            <asp:Parameter Name="IdUzytkownika" Type="Int32" />
            <asp:Parameter Name="Tresc" Type="String" />
            <asp:Parameter Name="Data" Type="DateTime" />
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>
