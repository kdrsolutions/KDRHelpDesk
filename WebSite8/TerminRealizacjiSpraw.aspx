<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TerminRealizacjiSpraw.aspx.cs" Inherits="TerminRealizacjiSpraw" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="IDZgloszenia" 
        DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <tr style="background-color: #FFFBD6;color: #333333;">
                <td>
                    <asp:Label ID="IDZgloszeniaLabel" runat="server" 
                        Text='<%# Eval("IDZgloszenia") %>' />
                </td>
                <td>
                    <asp:Label ID="IdStatusuLabel" runat="server" Text='<%# Eval("IdStatusu") %>' />
                </td>
                <td>
                    <asp:Label ID="IdTematuLabel" runat="server" Text='<%# Eval("IdTematu") %>' />
                </td>
                <td>
                    <asp:Label ID="DataZgloszeniaLabel" runat="server" 
                        Text='<%# Eval("DataZgloszenia") %>' />
                </td>
                <td>
                    <asp:Label ID="DataZakonczeniaLabel" runat="server" 
                        Text='<%# Eval("DataZakonczenia") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <AlternatingItemTemplate>
            <tr style="background-color: #FAFAD2;color: #284775;">
                <td>
                    <asp:Label ID="IDZgloszeniaLabel" runat="server" 
                        Text='<%# Eval("IDZgloszenia") %>' />
                </td>
                <td>
                    <asp:Label ID="IdStatusuLabel" runat="server" Text='<%# Eval("IdStatusu") %>' />
                </td>
                <td>
                    <asp:Label ID="IdTematuLabel" runat="server" Text='<%# Eval("IdTematu") %>' />
                </td>
                <td>
                    <asp:Label ID="DataZgloszeniaLabel" runat="server" 
                        Text='<%# Eval("DataZgloszenia") %>' />
                </td>
                <td>
                    <asp:Label ID="DataZakonczeniaLabel" runat="server" 
                        Text='<%# Eval("DataZakonczenia") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" 
                style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>
                        No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                        Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Clear" />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="IdStatusuTextBox" runat="server" 
                        Text='<%# Bind("IdStatusu") %>' />
                </td>
                <td>
                    <asp:TextBox ID="IdTematuTextBox" runat="server" 
                        Text='<%# Bind("IdTematu") %>' />
                </td>
                <td>
                    <asp:TextBox ID="DataZgloszeniaTextBox" runat="server" 
                        Text='<%# Bind("DataZgloszenia") %>' />
                </td>
                <td>
                    <asp:TextBox ID="DataZakonczeniaTextBox" runat="server" 
                        Text='<%# Bind("DataZakonczenia") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table ID="itemPlaceholderContainer" runat="server" border="1" 
                            style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:100%;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color: #FFFBD6;color: #333333;">
                                <th runat="server">
                                    IDZgloszenia</th>
                                <th runat="server">
                                    IdStatusu</th>
                                <th runat="server">
                                    IdTematu</th>
                                <th runat="server">
                                    DataZgloszenia</th>
                                <th runat="server">
                                    DataZakonczenia</th>
                            </tr>
                            <tr ID="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" 
                        style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                    ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <EditItemTemplate>
            <tr style="background-color: #FFCC66;color: #000080;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                        Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Cancel" />
                </td>
                <td>
                    <asp:Label ID="IDZgloszeniaLabel1" runat="server" 
                        Text='<%# Eval("IDZgloszenia") %>' />
                </td>
                <td>
                    <asp:TextBox ID="IdStatusuTextBox" runat="server" 
                        Text='<%# Bind("IdStatusu") %>' />
                </td>
                <td>
                    <asp:TextBox ID="IdTematuTextBox" runat="server" 
                        Text='<%# Bind("IdTematu") %>' />
                </td>
                <td>
                    <asp:TextBox ID="DataZgloszeniaTextBox" runat="server" 
                        Text='<%# Bind("DataZgloszenia") %>' />
                </td>
                <td>
                    <asp:TextBox ID="DataZakonczeniaTextBox" runat="server" 
                        Text='<%# Bind("DataZakonczenia") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <SelectedItemTemplate>
            <tr style="background-color: #FFCC66;font-weight: bold;color: #000080;">
                <td>
                    <asp:Label ID="IDZgloszeniaLabel" runat="server" 
                        Text='<%# Eval("IDZgloszenia") %>' />
                </td>
                <td>
                    <asp:Label ID="IdStatusuLabel" runat="server" Text='<%# Eval("IdStatusu") %>' />
                </td>
                <td>
                    <asp:Label ID="IdTematuLabel" runat="server" Text='<%# Eval("IdTematu") %>' />
                </td>
                <td>
                    <asp:Label ID="DataZgloszeniaLabel" runat="server" 
                        Text='<%# Eval("DataZgloszenia") %>' />
                </td>
                <td>
                    <asp:Label ID="DataZakonczeniaLabel" runat="server" 
                        Text='<%# Eval("DataZakonczenia") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:HelpDesk1ConnectionString1 %>" 
        ProviderName="<%$ ConnectionStrings:HelpDesk1ConnectionString1.ProviderName %>" 
        SelectCommand="SELECT [IDZgloszenia], [IdStatusu], [IdTematu], [DataZgloszenia], [DataZakonczenia] FROM [Zgloszenia] ORDER BY [IdStatusu], [IdTematu], [DataZakonczenia]">
    </asp:SqlDataSource>

</asp:Content>

