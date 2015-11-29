<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="DanySpecjalista.aspx.cs" Inherits="DanySpecjalista" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content_container">
        <h4>Zarządzaj specjalistami</h4>
        <div id="filter">
            <asp:Label ID="Label1" runat="server" Text="Użytkownik: "></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" Width="50"></asp:TextBox>
            <asp:Label ID="Label11" runat="server" Text="Specjalizacja: "></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3"
                DataTextField="Specjalizacja" DataValueField="id">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:HelpDeskConnectionString %>"
                SelectCommand="SELECT * FROM Specjalizacje;"></asp:SqlDataSource>
            <asp:Button ID="Button1" runat="server" Text="Dodaj" OnClick="sender_Click" />
        </div>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="IdSpecjalisty" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <tr class="tbodyer">
                    <td style="text-align: center;">
                        <asp:Label ID="IdSpecjalistyLabel" runat="server" Text='<%# Eval("IdSpecjalisty") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ImieLabel" runat="server" Text='<%# Eval("Imie") %>' />
                    </td>
                    <td>
                        <asp:Label ID="NazwiskoLabel" runat="server" Text='<%# Eval("Nazwisko") %>' />
                    </td>
                    <td>
                        <asp:Label ID="SpecjalnośćLabel" runat="server" Text='<%# Eval("Specjalizacja") %>' />
                    </td>
                    <td style="text-align: center;">
                        <asp:LinkButton ID="LinkButton2" CommandName="Select" runat="server"><span style="color: #272727;padding-top:2px;" class="glyphicon glyphicon-trash"></span></asp:LinkButton>
                    </td>
                </tr>
            </ItemTemplate>
            <SelectedItemTemplate>
                <tr class="tbodyer">
                    <td style="text-align: center;">
                        <asp:Label ID="IdSpecjalistyLabel" runat="server" Text='<%# Eval("IdSpecjalisty") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ImieLabel" runat="server" Text='<%# Eval("Imie") %>' />
                    </td>
                    <td>
                        <asp:Label ID="NazwiskoLabel" runat="server" Text='<%# Eval("Nazwisko") %>' />
                    </td>
                    <td>
                        <asp:Label ID="SpecjalnośćLabel" runat="server" Text='<%# Eval("Specjalizacja") %>' />
                    </td>
                    <td style="text-align: center;">
                        <asp:LinkButton ID="LinkButton2" CommandName="Delete" runat="server"><span style="color: #5cb85c;padding-top:2px;" class="glyphicon glyphicon-ok"></span></asp:LinkButton>
                    </td>
                </tr>
            </SelectedItemTemplate>
            <EmptyDataTemplate>
                <table runat="server">
                    <tr>
                        <td>
                            Brak danych do pobrania
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
                                        Imie
                                    </th>
                                    <th runat="server">
                                        Nazwisko
                                    </th>
                                    <th runat="server" width="300">
                                        Specjalizacja
                                    </th>
                                    <th width="40">
                                        
                                    </th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
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
        SelectCommand="SELECT 
o.IdSpecjalisty,
o.Imie,
o.Nazwisko,
s.Specjalizacja
FROM [Specjaliści] o
LEFT JOIN [Specjalizacje] s ON o.[Specjalność] = s.[id]" DeleteCommand="Delete Specjaliści WHERE IdSpecjalisty=@IdSpecjalisty" />
    </asp:SqlDataSource>
</asp:Content>
