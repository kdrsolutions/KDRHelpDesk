<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DanySpecjalista.aspx.cs" Inherits="DanySpecjalista" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="IdSpecjalisty" 
    DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <tr style="background-color: #FFFBD6;color: #333333;">
                <td>
                    <asp:Label ID="IdSpecjalistyLabel" runat="server" 
                        Text='<%# Eval("IdSpecjalisty") %>' />
                </td>
                <td>
                    <asp:Label ID="ImieLabel" runat="server" Text='<%# Eval("Imie") %>' />
                </td>
                <td>
                    <asp:Label ID="NazwiskoLabel" runat="server" Text='<%# Eval("Nazwisko") %>' />
                </td>
                <td>
                    <asp:Label ID="SpecjalnośćLabel" runat="server" 
                        Text='<%# Eval("Specjalność") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <AlternatingItemTemplate>
            <tr style="background-color: #FAFAD2;color: #284775;">
                <td>
                    <asp:Label ID="IdSpecjalistyLabel" runat="server" 
                        Text='<%# Eval("IdSpecjalisty") %>' />
                </td>
                <td>
                    <asp:Label ID="ImieLabel" runat="server" Text='<%# Eval("Imie") %>' />
                </td>
                <td>
                    <asp:Label ID="NazwiskoLabel" runat="server" Text='<%# Eval("Nazwisko") %>' />
                </td>
                <td>
                    <asp:Label ID="SpecjalnośćLabel" runat="server" 
                        Text='<%# Eval("Specjalność") %>' />
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
                    <asp:TextBox ID="IdSpecjalistyTextBox" runat="server" 
                        Text='<%# Bind("IdSpecjalisty") %>' />
                </td>
                <td>
                    <asp:TextBox ID="ImieTextBox" runat="server" Text='<%# Bind("Imie") %>' />
                </td>
                <td>
                    <asp:TextBox ID="NazwiskoTextBox" runat="server" 
                        Text='<%# Bind("Nazwisko") %>' />
                </td>
                <td>
                    <asp:TextBox ID="SpecjalnośćTextBox" runat="server" 
                        Text='<%# Bind("Specjalność") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table ID="itemPlaceholderContainer" runat="server" border="1" 
                            style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color: #FFFBD6;color: #333333;">
                                <th runat="server">
                                    IdSpecjalisty</th>
                                <th runat="server">
                                    Imie</th>
                                <th runat="server">
                                    Nazwisko</th>
                                <th runat="server">
                                    Specjalność</th>
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
                    <asp:Label ID="IdSpecjalistyLabel1" runat="server" 
                        Text='<%# Eval("IdSpecjalisty") %>' />
                </td>
                <td>
                    <asp:TextBox ID="ImieTextBox" runat="server" Text='<%# Bind("Imie") %>' />
                </td>
                <td>
                    <asp:TextBox ID="NazwiskoTextBox" runat="server" 
                        Text='<%# Bind("Nazwisko") %>' />
                </td>
                <td>
                    <asp:TextBox ID="SpecjalnośćTextBox" runat="server" 
                        Text='<%# Bind("Specjalność") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <SelectedItemTemplate>
            <tr style="background-color: #FFCC66;font-weight: bold;color: #000080;">
                <td>
                    <asp:Label ID="IdSpecjalistyLabel" runat="server" 
                        Text='<%# Eval("IdSpecjalisty") %>' />
                </td>
                <td>
                    <asp:Label ID="ImieLabel" runat="server" Text='<%# Eval("Imie") %>' />
                </td>
                <td>
                    <asp:Label ID="NazwiskoLabel" runat="server" Text='<%# Eval("Nazwisko") %>' />
                </td>
                <td>
                    <asp:Label ID="SpecjalnośćLabel" runat="server" 
                        Text='<%# Eval("Specjalność") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>




<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:HelpDesk1ConnectionString1 %>" 
    ProviderName="<%$ ConnectionStrings:HelpDesk1ConnectionString1.ProviderName %>" 
    SelectCommand="SELECT * FROM [Specjaliści]"></asp:SqlDataSource>




</asp:Content>

