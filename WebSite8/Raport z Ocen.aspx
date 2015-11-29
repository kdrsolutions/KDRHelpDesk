<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Raport z Ocen.aspx.cs" Inherits="Raport_z_Ocen" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content_container">
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="IdOceny" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <tr class="tbodyer">
                    <td>
                        <asp:Label ID="IdOcenyLabel" runat="server" Text='<%# Eval("IdOceny") %>' />
                    </td>
                    <td>
                        <asp:Label ID="IdZgloszeniaLabel" runat="server" Text='<%# Eval("IdZgloszenia") %>' />
                    </td>
                    <td>
                        <asp:Label ID="OcenaLabel" runat="server" Text='<%# Eval("Ocena") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <AlternatingItemTemplate>
                <tr class="tbodyer">
                    <td>
                        <asp:Label ID="IdOcenyLabel" runat="server" Text='<%# Eval("IdOceny") %>' />
                    </td>
                    <td>
                        <asp:Label ID="IdZgloszeniaLabel" runat="server" Text='<%# Eval("IdZgloszenia") %>' />
                    </td>
                    <td>
                        <asp:Label ID="OcenaLabel" runat="server" Text='<%# Eval("Ocena") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EmptyDataTemplate>
                <table runat="server">
                    <tr>
                        <td>
                            No data was returned.
                        </td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr class="tbodyer">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>
                        <asp:TextBox ID="IdOcenyTextBox" runat="server" Text='<%# Bind("IdOceny") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="IdZgloszeniaTextBox" runat="server" Text='<%# Bind("IdZgloszenia") %>' />
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
                            <table id="itemPlaceholderContainer" runat="server" class="table table-bordered">
                                <tr runat="server" class="theader">
                                    <th runat="server">
                                        IdOceny
                                    </th>
                                    <th runat="server">
                                        IdZgloszenia
                                    </th>
                                    <th runat="server">
                                        Ocena
                                    </th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <EditItemTemplate>
                <tr class="tbodyer">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:Label ID="IdOcenyLabel1" runat="server" Text='<%# Eval("IdOceny") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="IdZgloszeniaTextBox" runat="server" Text='<%# Bind("IdZgloszenia") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="OcenaTextBox" runat="server" Text='<%# Bind("Ocena") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <SelectedItemTemplate>
                <tr class="tbodyer">
                    <td>
                        <asp:Label ID="IdOcenyLabel" runat="server" Text='<%# Eval("IdOceny") %>' />
                    </td>
                    <td>
                        <asp:Label ID="IdZgloszeniaLabel" runat="server" Text='<%# Eval("IdZgloszenia") %>' />
                    </td>
                    <td>
                        <asp:Label ID="OcenaLabel" runat="server" Text='<%# Eval("Ocena") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HelpDeskConnectionString %>"
        ProviderName="<%$ ConnectionStrings:HelpDeskConnectionString.ProviderName %>"
        SelectCommand="SELECT * FROM [Ocena]"></asp:SqlDataSource>
</asp:Content>
