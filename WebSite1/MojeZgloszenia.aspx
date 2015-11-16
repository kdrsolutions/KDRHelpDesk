<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MojeZgloszenia.aspx.cs" Inherits="MojeZgloszenia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    


    <asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" 
    DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
        <ItemTemplate>
            <td runat="server" style="background-color:#DCDCDC;color: #000000;">
                ID:
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                IDTematu:
                <asp:Label ID="IDTematuLabel" runat="server" Text='<%# Eval("IDTematu") %>' />
                <br />
                IDStatusu:
                <asp:Label ID="IDStatusuLabel" runat="server" Text='<%# Eval("IDStatusu") %>' />
                <br />
                Data:
                <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                    Text="Delete" />
            </td>
        </ItemTemplate>
        <AlternatingItemTemplate>
            <td runat="server" style="background-color:#FFF8DC;">
                ID:
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                IDTematu:
                <asp:Label ID="IDTematuLabel" runat="server" Text='<%# Eval("IDTematu") %>' />
                <br />
                IDStatusu:
                <asp:Label ID="IDStatusuLabel" runat="server" Text='<%# Eval("IDStatusu") %>' />
                <br />
                Data:
                <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                    Text="Delete" />
            </td>
        </AlternatingItemTemplate>
        <EmptyDataTemplate>
            <table style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                <tr>
                    <td>
                        No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <td runat="server" style="">
                ID:
                <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
                <br />
                IDTematu:
                <asp:TextBox ID="IDTematuTextBox" runat="server" 
                    Text='<%# Bind("IDTematu") %>' />
                <br />
                IDStatusu:
                <asp:TextBox ID="IDStatusuTextBox" runat="server" 
                    Text='<%# Bind("IDStatusu") %>' />
                <br />
                Data:
                <asp:TextBox ID="DataTextBox" runat="server" Text='<%# Bind("Data") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                    Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Clear" />
            </td>
        </InsertItemTemplate>
        <LayoutTemplate>
            <table runat="server" border="1" 
                style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                <tr ID="itemPlaceholderContainer" runat="server">
                    <td ID="itemPlaceholder" runat="server">
                    </td>
                </tr>
            </table>
            <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                <asp:DataPager ID="DataPager1" runat="server">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                            ShowNextPageButton="False" ShowPreviousPageButton="False" />
                        <asp:NumericPagerField />
                        <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" 
                            ShowNextPageButton="False" ShowPreviousPageButton="False" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
        <EditItemTemplate>
            <td runat="server" style="background-color:#008A8C;color: #FFFFFF;">
                ID:
                <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                IDTematu:
                <asp:TextBox ID="IDTematuTextBox" runat="server" 
                    Text='<%# Bind("IDTematu") %>' />
                <br />
                IDStatusu:
                <asp:TextBox ID="IDStatusuTextBox" runat="server" 
                    Text='<%# Bind("IDStatusu") %>' />
                <br />
                Data:
                <asp:TextBox ID="DataTextBox" runat="server" Text='<%# Bind("Data") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                    Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Cancel" />
            </td>
        </EditItemTemplate>
        <SelectedItemTemplate>
            <td runat="server" 
                style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                ID:
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                IDTematu:
                <asp:Label ID="IDTematuLabel" runat="server" Text='<%# Eval("IDTematu") %>' />
                <br />
                IDStatusu:
                <asp:Label ID="IDStatusuLabel" runat="server" Text='<%# Eval("IDStatusu") %>' />
                <br />
                Data:
                <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                    Text="Delete" />
            </td>
        </SelectedItemTemplate>
    </asp:ListView>



<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:HelpDeskOldConnectionString2 %>" 
    DeleteCommand="DELETE FROM [BazaWiedzy] WHERE [ID] = @ID" 
    InsertCommand="INSERT INTO [BazaWiedzy] ([ID], [IDTematu], [IDStatusu], [Data]) VALUES (@ID, @IDTematu, @IDStatusu, @Data)" 
    SelectCommand="SELECT * FROM [BazaWiedzy]" 
    UpdateCommand="UPDATE [BazaWiedzy] SET [IDTematu] = @IDTematu, [IDStatusu] = @IDStatusu, [Data] = @Data WHERE [ID] = @ID">
    <DeleteParameters>
        <asp:Parameter Name="ID" Type="Int32" />
    </DeleteParameters>
    <UpdateParameters>
        <asp:Parameter Name="IDTematu" Type="Int32" />
        <asp:Parameter Name="IDStatusu" Type="Int32" />
        <asp:Parameter Name="Data" Type="DateTime" />
        <asp:Parameter Name="ID" Type="Int32" />
    </UpdateParameters>
    <InsertParameters>
        <asp:Parameter Name="ID" Type="Int32" />
        <asp:Parameter Name="IDTematu" Type="Int32" />
        <asp:Parameter Name="IDStatusu" Type="Int32" />
        <asp:Parameter Name="Data" Type="DateTime" />
    </InsertParameters>
</asp:SqlDataSource>



</asp:Content>

