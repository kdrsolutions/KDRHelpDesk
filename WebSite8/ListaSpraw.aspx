<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="ListaSpraw.aspx.cs" Inherits="ListaSpraw" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content_container">
        <h4>Lista zgłoszeń dla Twojej specjalizacji</h4>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="IDZgloszenia" DataSourceID="SqlDataSource1" onitemupdating="ListView1_ItemUpdating">
            
            <ItemTemplate>
                <tr class="tbodyer">
                    <td style="text-align: center;">
                        <asp:Label ID="IDZgloszeniaLabel" runat="server" Text='<%# Eval("IDZgloszenia") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TematLabel" runat="server" Text='<%# Eval("Temat") %>' />
                    </td>
                    <td>
                        <asp:Label ID="StatusLabel" runat="server" Text='<%# Eval("Status") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DataZgloszeniaLabel" runat="server" Text='<%# Eval("DataZgloszenia") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DataRozwiazaniaLabel" runat="server" Text='<%# ProcessMyDataItem(Eval("DataZakonczenia")) %>' />
                    </td>
                    <td>
                        <asp:Label ID="IDUzytkownikaLabel" runat="server" Text='<%# String.Format("{1} {0}", Eval("Imie"), Eval("Nazwisko")) %>' />
                    </td>
                    <td style="text-align: center;">
                        <asp:LinkButton ID="LinkButton2" data-container="body" data-trigger="click" data-title='<%# Eval("Temat") %>' data-toggle="popover" data-placement="left" data-content='<%# Eval("Opis") %>'><span style="color: #272727;padding-top:2px;" class="glyphicon glyphicon-search"></span></asp:LinkButton>
                    </td>
                    <td style="text-align: center;">
                        <asp:LinkButton CommandName="Edit" ID="LinkButton1" runat="server"><span style="color: #272727; padding-top: 2px;" class="glyphicon glyphicon-cog"></span></asp:LinkButton>
                    </td>
                </tr>
            </ItemTemplate>
            <EditItemTemplate>
                <tr class="tbodyer">
                    <td style="text-align: center;">
                        <asp:Label ID="IDZgloszeniaLabel" runat="server" Text='<%# Eval("IDZgloszenia") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TematLabel" runat="server" Text='<%# Eval("Temat") %>' />
                    </td>
                    <td>
                        <asp:DropDownList ID="dropdownlist1" DataSourceID="SqlDataSource3" DataTextField="Nazwa"
                            DataValueField="IdStatusu" runat="server" />
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:HelpDeskConnectionString %>"
                            SelectCommand="SELECT * FROM ZgloszeniaStatusy;"></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:Label ID="DataZgloszeniaLabel" runat="server" Text='<%# Eval("DataZgloszenia") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DataRozwiazaniaLabel" runat="server" Text='<%# ProcessMyDataItem(Eval("DataZakonczenia")) %>' />
                    </td>
                    <td>
                        <asp:Label ID="IDUzytkownikaLabel" runat="server" Text='<%# String.Format("{1} {0}", Eval("Imie"), Eval("Nazwisko")) %>' />
                    </td>
                    <td style="text-align: center;">
                        <asp:LinkButton ID="LinkButton3" data-container="body" data-trigger="click" data-title='<%# Eval("Temat") %>' data-toggle="popover" data-placement="left" data-content='<%# Eval("Opis") %>'><span style="color: #272727;padding-top:2px;" class="glyphicon glyphicon-search"></span></asp:LinkButton>
                    </td>
                    <td style="text-align: center;">
                        <asp:LinkButton CommandName="Update" ID="LinkButton1" runat="server"><span style="color: #5cb85c; padding-top: 2px;" class="glyphicon glyphicon-ok"></span></asp:LinkButton>
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server">
                    <tr>
                        <td>
                            No data was returned.
                        </td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" class="table table-bordered">
                                <tr runat="server" class="theader">
                                    <th runat="server" width="40">
                                        ID
                                    </th>
                                    <th runat="server">
                                        Temat
                                    </th>
                                    <th runat="server">
                                        Status
                                    </th>
                                    <th runat="server">
                                        Data zgłoszenia
                                    </th>
                                    <th id="Th1" runat="server">
                                        Data rozwiązania
                                    </th>
                                    <th runat="server">
                                        Użytkownik
                                    </th>
                                    <th width="40">
                                    </th>
                                    <th width="40">
                                    </th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server" class="tbodyer">
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
        </asp:ListView>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HelpDeskConnectionString %>"
        ProviderName="<%$ ConnectionStrings:HelpDeskConnectionString.ProviderName %>"
        SelectCommand="
        SELECT 
z.IDZgloszenia,
z.temat,
s.[Nazwa] as Status,
z.DataZgloszenia,
z.DataZakonczenia,
u.Imie,
u.Nazwisko,
z.Opis

FROM [Zgloszenia] z
LEFT JOIN [ZgloszeniaStatusy] s ON z.[IdStatusu] = s.[IdStatusu]
LEFT JOIN Uzytkownicy u ON z.[IDUzytkownika] = u.[IdUzytkownika]
LEFT JOIN Specjaliści p ON p.[IDUzytkownika] = u.[IdUzytkownika]
LEFT JOIN Specjalizacje o ON o.[id] = p.Specjalność
WHERE z.IDUzytkownika = @idusera AND (p.Specjalność = z.IdSpecjalisty OR u.Administrator = '1')
ORDER BY z.IdStatusu" UpdateCommand="UPDATE Zgloszenia SET IdStatusu=@IdStatusu WHERE IDZgloszenia=@IDZgloszenia">
        <SelectParameters>
            <asp:SessionParameter Name="idusera" SessionField="USER_ID" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="IdStatusu" type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
