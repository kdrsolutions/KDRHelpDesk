<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Przypomnienia2.aspx.cs" Inherits="Przypomnienia2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content_container">
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="IdPrzypomnienia" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <tr class="tbodyer">
                    <td style="text-align: center;">
                        <asp:Label ID="IdPrzypomnieniaLabel" runat="server" Text='<%# Eval("IdPrzypomnienia") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TypOkresuLabel" runat="server" Text='<%# Eval("okres") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DataNastWywolLabel" runat="server" Text='<%# Eval("DataNastWywol") %>' />
                    </td>
                    <td>
                        <asp:Label ID="OpisLabel" runat="server" Text='<%# Eval("Opis") %>' />
                    </td>
                     <td style="text-align: center;">
                        <asp:LinkButton ID="LinkButton2" runat="server"><span style="color: #202020; padding-top: 2px;" class="glyphicon glyphicon-eye-open"></span></asp:LinkButton>
                    </td>
                    <td style="text-align: center;">
                        <asp:LinkButton CommandName="Select" ID="LinkButton1" runat="server"><span style="color: #d9534f; padding-top: 2px;" class="glyphicon glyphicon-trash"></span></asp:LinkButton>
                    </td>
                </tr>
            </ItemTemplate>
            <SelectedItemTemplate>
                <tr class="tbodyer">
                    <td style="text-align: center;">
                        <asp:Label ID="IdPrzypomnieniaLabel" runat="server" Text='<%# Eval("IdPrzypomnienia") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TypOkresuLabel" runat="server" Text='<%# Eval("okres") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DataNastWywolLabel" runat="server" Text='<%# Eval("DataNastWywol") %>' />
                    </td>
                    <td>
                        <asp:Label ID="OpisLabel" runat="server" Text='<%# Eval("Opis") %>' />
                    </td>
                     <td style="text-align: center;">
                        <asp:LinkButton ID="LinkButton2" runat="server"><span style="color: #202020; padding-top: 2px;" class="glyphicon glyphicon-eye-open"></span></asp:LinkButton>
                    </td>
                    <td style="text-align: center;">
                        <asp:LinkButton ID="LinkButton3" CommandName="Delete" runat="server"><span style="color: #5cb85c;padding-top:2px;" class="glyphicon glyphicon-ok"></span></asp:LinkButton>
                    </td>
                </tr>
            </SelectedItemTemplate>
            <EmptyDataTemplate>
                <table id="Table1" runat="server">
                    <tr>
                        <td>
                            No data was returned.
                        </td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table id="Table2" runat="server">
                    <tr id="Tr1" runat="server">
                        <td id="Td1" runat="server">
                            <table id="itemPlaceholderContainer" runat="server" class="table table-bordered">
                                <tr id="Tr2" runat="server" class="theader">
                                    <th id="Th1" runat="server" width="40">
                                        ID
                                    </th>
                                    <th id="Th2" runat="server" width="150">
                                        Cykl
                                    </th>
                                    <th id="Th3" runat="server" width="200">
                                        Następne wywołanie
                                    </th>
                                    <th id="Th5" runat="server">
                                        Opis
                                    </th>
                                    <th width="40">
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
p.IdPrzypomnienia,
t.okres,
p.DataNastWywol,
p.Opis
FROM [Przypomnienia] p
LEFT JOIN typy_okresu t ON t.id = p.TypOkresu
WHERE [IdUzytkownika] = @userid

ORDER BY p.TypOkresu" DeleteCommand="Delete Przypomnienia WHERE IdPrzypomnienia=@IdPrzypomnienia">
        <SelectParameters>
            <asp:SessionParameter Name="userid" SessionField="USER_ID" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
