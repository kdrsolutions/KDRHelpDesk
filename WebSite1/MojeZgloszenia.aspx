<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MojeZgloszenia.aspx.cs" Inherits="MojeZgloszenia" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="Kabaret" 
        DataKeyNames="IdKorespondencji" InsertItemPosition="LastItem" 
        onselectedindexchanged="ListView1_SelectedIndexChanged">
        <ItemTemplate>
            <tr style="background-color:#DCDCDC;color: #000000;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                        Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="IdKorespondencjiLabel" runat="server" 
                        Text='<%# Eval("IdKorespondencji") %>' />
                </td>
                <td>
                    <asp:Label ID="IdZgloszeniaLabel" runat="server" 
                        Text='<%# Eval("IdZgloszenia") %>' />
                </td>
                <td>
                    <asp:Label ID="IdUzytkownikaLabel" runat="server" 
                        Text='<%# Eval("IdUzytkownika") %>' />
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
            <tr style="background-color:#FFF8DC;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                        Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="IdKorespondencjiLabel" runat="server" 
                        Text='<%# Eval("IdKorespondencji") %>' />
                </td>
                <td>
                    <asp:Label ID="IdZgloszeniaLabel" runat="server" 
                        Text='<%# Eval("IdZgloszenia") %>' />
                </td>
                <td>
                    <asp:Label ID="IdUzytkownikaLabel" runat="server" 
                        Text='<%# Eval("IdUzytkownika") %>' />
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
                    <asp:TextBox ID="IdKorespondencjiTextBox" runat="server" 
                        Text='<%# Bind("IdKorespondencji") %>' />
                </td>
                <td>
                    <asp:TextBox ID="IdZgloszeniaTextBox" runat="server" 
                        Text='<%# Bind("IdZgloszenia") %>' />
                </td>
                <td>
                    <asp:TextBox ID="IdUzytkownikaTextBox" runat="server" 
                        Text='<%# Bind("IdUzytkownika") %>' />
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
                        <table ID="itemPlaceholderContainer" runat="server" border="1" 
                            style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                <th runat="server">
                                </th>
                                <th runat="server">
                                    IdKorespondencji</th>
                                <th runat="server">
                                    IdZgloszenia</th>
                                <th runat="server">
                                    IdUzytkownika</th>
                                <th runat="server">
                                    Tresc</th>
                                <th runat="server">
                                    Data</th>
                            </tr>
                            <tr ID="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" 
                        style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                    ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                <asp:NumericPagerField />
                                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" 
                                    ShowNextPageButton="False" ShowPreviousPageButton="False" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <EditItemTemplate>
            <tr style="background-color:#008A8C;color: #FFFFFF;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                        Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Cancel" />
                </td>
                <td>
                    <asp:Label ID="IdKorespondencjiLabel1" runat="server" 
                        Text='<%# Eval("IdKorespondencji") %>' />
                </td>
                <td>
                    <asp:TextBox ID="IdZgloszeniaTextBox" runat="server" 
                        Text='<%# Bind("IdZgloszenia") %>' />
                </td>
                <td>
                    <asp:TextBox ID="IdUzytkownikaTextBox" runat="server" 
                        Text='<%# Bind("IdUzytkownika") %>' />
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
            <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                        Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="IdKorespondencjiLabel" runat="server" 
                        Text='<%# Eval("IdKorespondencji") %>' />
                </td>
                <td>
                    <asp:Label ID="IdZgloszeniaLabel" runat="server" 
                        Text='<%# Eval("IdZgloszenia") %>' />
                </td>
                <td>
                    <asp:Label ID="IdUzytkownikaLabel" runat="server" 
                        Text='<%# Eval("IdUzytkownika") %>' />
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

<asp:SqlDataSource ID="Kabaret" runat="server" 
    ConnectionString="<%$ ConnectionStrings:HelpDesk1ConnectionString1 %>" 
    DeleteCommand="DELETE FROM [Korespondencja] WHERE [IdKorespondencji] = ?" 
    InsertCommand="INSERT INTO [Korespondencja] ([IdKorespondencji], [IdZgloszenia], [IdUzytkownika], [Tresc], [Data]) VALUES (?, ?, ?, ?, ?)" 
    ProviderName="<%$ ConnectionStrings:HelpDesk1ConnectionString1.ProviderName %>" 
    SelectCommand="SELECT * FROM [Korespondencja]" 
    
        UpdateCommand="UPDATE [Korespondencja] SET [IdZgloszenia] = ?, [IdUzytkownika] = ?, [Tresc] = ?, [Data] = ? WHERE [IdKorespondencji] = ?">
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
        <asp:Parameter Name="IdZgloszenia" Type="Int32" />
        <asp:Parameter Name="IdUzytkownika" Type="Int32" />
        <asp:Parameter Name="Tresc" Type="String" />
        <asp:Parameter Name="Data" Type="DateTime" />
    </InsertParameters>
</asp:SqlDataSource>

</asp:Content>

