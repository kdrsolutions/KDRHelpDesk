<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Raport z Ocen.aspx.cs" Inherits="Raport_z_Ocen" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="IdOceny" 
    DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <tr style="background-color: #FFFBD6;color: #333333;">
                <td>
                    <asp:Label ID="IdOcenyLabel" runat="server" Text='<%# Eval("IdOceny") %>' />
                </td>
                <td>
                    <asp:Label ID="IdZgloszeniaLabel" runat="server" 
                        Text='<%# Eval("IdZgloszenia") %>' />
                </td>
                <td>
                    <asp:Label ID="OcenaLabel" runat="server" Text='<%# Eval("Ocena") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <AlternatingItemTemplate>
            <tr style="background-color: #FAFAD2;color: #284775;">
                <td>
                    <asp:Label ID="IdOcenyLabel" runat="server" Text='<%# Eval("IdOceny") %>' />
                </td>
                <td>
                    <asp:Label ID="IdZgloszeniaLabel" runat="server" 
                        Text='<%# Eval("IdZgloszenia") %>' />
                </td>
                <td>
                    <asp:Label ID="OcenaLabel" runat="server" Text='<%# Eval("Ocena") %>' />
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
                    <asp:TextBox ID="IdOcenyTextBox" runat="server" Text='<%# Bind("IdOceny") %>' />
                </td>
                <td>
                    <asp:TextBox ID="IdZgloszeniaTextBox" runat="server" 
                        Text='<%# Bind("IdZgloszenia") %>' />
                </td>
                <td>
                    <asp:TextBox ID="OcenaTextBox" runat="server" Text='<%# Bind("Ocena") %>' />
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
                                    IdOceny</th>
                                <th runat="server">
                                    IdZgloszenia</th>
                                <th runat="server">
                                    Ocena</th>
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
                    <asp:Label ID="IdOcenyLabel1" runat="server" Text='<%# Eval("IdOceny") %>' />
                </td>
                <td>
                    <asp:TextBox ID="IdZgloszeniaTextBox" runat="server" 
                        Text='<%# Bind("IdZgloszenia") %>' />
                </td>
                <td>
                    <asp:TextBox ID="OcenaTextBox" runat="server" Text='<%# Bind("Ocena") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <SelectedItemTemplate>
            <tr style="background-color: #FFCC66;font-weight: bold;color: #000080;">
                <td>
                    <asp:Label ID="IdOcenyLabel" runat="server" Text='<%# Eval("IdOceny") %>' />
                </td>
                <td>
                    <asp:Label ID="IdZgloszeniaLabel" runat="server" 
                        Text='<%# Eval("IdZgloszenia") %>' />
                </td>
                <td>
                    <asp:Label ID="OcenaLabel" runat="server" Text='<%# Eval("Ocena") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>


<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:HelpDesk1ConnectionString1 %>" 
    ProviderName="<%$ ConnectionStrings:HelpDesk1ConnectionString1.ProviderName %>" 
    SelectCommand="SELECT * FROM [Ocena]"></asp:SqlDataSource>


</asp:Content>

