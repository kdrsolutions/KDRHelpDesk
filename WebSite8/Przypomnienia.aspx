<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Przypomnienia2.aspx.cs" Inherits="Przypomnienia2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="IdPrzypomnienia" 
    DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <tr style="background-color: #FFFBD6;color: #333333;">
                <td>
                    <asp:Label ID="IdPrzypomnieniaLabel" runat="server" 
                        Text='<%# Eval("IdPrzypomnienia") %>' />
                </td>
                <td>
                    <asp:Label ID="TypOkresuLabel" runat="server" Text='<%# Eval("TypOkresu") %>' />
                </td>
                <td>
                    <asp:Label ID="DataNastWywolLabel" runat="server" 
                        Text='<%# Eval("DataNastWywol") %>' />
                </td>
                <td>
                    <asp:Label ID="DlugoscOkresuLabel" runat="server" 
                        Text='<%# Eval("DlugoscOkresu") %>' />
                </td>
                <td>
                    <asp:Label ID="OpisLabel" runat="server" Text='<%# Eval("Opis") %>' />
                </td>
                <td>
                    <asp:Label ID="KodBleduLabel" runat="server" Text='<%# Eval("KodBledu") %>' />
                </td>
                <td>
                    <asp:Label ID="IdUzytkownikaLabel" runat="server" 
                        Text='<%# Eval("IdUzytkownika") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <AlternatingItemTemplate>
            <tr style="background-color: #FAFAD2;color: #284775;">
                <td>
                    <asp:Label ID="IdPrzypomnieniaLabel" runat="server" 
                        Text='<%# Eval("IdPrzypomnienia") %>' />
                </td>
                <td>
                    <asp:Label ID="TypOkresuLabel" runat="server" Text='<%# Eval("TypOkresu") %>' />
                </td>
                <td>
                    <asp:Label ID="DataNastWywolLabel" runat="server" 
                        Text='<%# Eval("DataNastWywol") %>' />
                </td>
                <td>
                    <asp:Label ID="DlugoscOkresuLabel" runat="server" 
                        Text='<%# Eval("DlugoscOkresu") %>' />
                </td>
                <td>
                    <asp:Label ID="OpisLabel" runat="server" Text='<%# Eval("Opis") %>' />
                </td>
                <td>
                    <asp:Label ID="KodBleduLabel" runat="server" Text='<%# Eval("KodBledu") %>' />
                </td>
                <td>
                    <asp:Label ID="IdUzytkownikaLabel" runat="server" 
                        Text='<%# Eval("IdUzytkownika") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EmptyDataTemplate>
            <table id="Table1" runat="server" 
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
                    <asp:TextBox ID="TypOkresuTextBox" runat="server" 
                        Text='<%# Bind("TypOkresu") %>' />
                </td>
                <td>
                    <asp:TextBox ID="DataNastWywolTextBox" runat="server" 
                        Text='<%# Bind("DataNastWywol") %>' />
                </td>
                <td>
                    <asp:TextBox ID="DlugoscOkresuTextBox" runat="server" 
                        Text='<%# Bind("DlugoscOkresu") %>' />
                </td>
                <td>
                    <asp:TextBox ID="OpisTextBox" runat="server" Text='<%# Bind("Opis") %>' />
                </td>
                <td>
                    <asp:TextBox ID="KodBleduTextBox" runat="server" 
                        Text='<%# Bind("KodBledu") %>' />
                </td>
                <td>
                    <asp:TextBox ID="IdUzytkownikaTextBox" runat="server" 
                        Text='<%# Bind("IdUzytkownika") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <LayoutTemplate>
            <table id="Table2" runat="server">
                <tr id="Tr1" runat="server">
                    <td id="Td1" runat="server">
                        <table ID="itemPlaceholderContainer" runat="server" border="1" 
                            style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr id="Tr2" runat="server" style="background-color: #FFFBD6;color: #333333;">
                                <th id="Th1" runat="server">
                                    IdPrzypomnienia</th>
                                <th id="Th2" runat="server">
                                    TypOkresu</th>
                                <th id="Th3" runat="server">
                                    DataNastWywol</th>
                                <th id="Th4" runat="server">
                                    DlugoscOkresu</th>
                                <th id="Th5" runat="server">
                                    Opis</th>
                                <th id="Th6" runat="server">
                                    KodBledu</th>
                                <th id="Th7" runat="server">
                                    IdUzytkownika</th>
                            </tr>
                            <tr ID="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr id="Tr3" runat="server">
                    <td id="Td2" runat="server" 
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
                    <asp:Label ID="IdPrzypomnieniaLabel1" runat="server" 
                        Text='<%# Eval("IdPrzypomnienia") %>' />
                </td>
                <td>
                    <asp:TextBox ID="TypOkresuTextBox" runat="server" 
                        Text='<%# Bind("TypOkresu") %>' />
                </td>
                <td>
                    <asp:TextBox ID="DataNastWywolTextBox" runat="server" 
                        Text='<%# Bind("DataNastWywol") %>' />
                </td>
                <td>
                    <asp:TextBox ID="DlugoscOkresuTextBox" runat="server" 
                        Text='<%# Bind("DlugoscOkresu") %>' />
                </td>
                <td>
                    <asp:TextBox ID="OpisTextBox" runat="server" Text='<%# Bind("Opis") %>' />
                </td>
                <td>
                    <asp:TextBox ID="KodBleduTextBox" runat="server" 
                        Text='<%# Bind("KodBledu") %>' />
                </td>
                <td>
                    <asp:TextBox ID="IdUzytkownikaTextBox" runat="server" 
                        Text='<%# Bind("IdUzytkownika") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <SelectedItemTemplate>
            <tr style="background-color: #FFCC66;font-weight: bold;color: #000080;">
                <td>
                    <asp:Label ID="IdPrzypomnieniaLabel" runat="server" 
                        Text='<%# Eval("IdPrzypomnienia") %>' />
                </td>
                <td>
                    <asp:Label ID="TypOkresuLabel" runat="server" Text='<%# Eval("TypOkresu") %>' />
                </td>
                <td>
                    <asp:Label ID="DataNastWywolLabel" runat="server" 
                        Text='<%# Eval("DataNastWywol") %>' />
                </td>
                <td>
                    <asp:Label ID="DlugoscOkresuLabel" runat="server" 
                        Text='<%# Eval("DlugoscOkresu") %>' />
                </td>
                <td>
                    <asp:Label ID="OpisLabel" runat="server" Text='<%# Eval("Opis") %>' />
                </td>
                <td>
                    <asp:Label ID="KodBleduLabel" runat="server" Text='<%# Eval("KodBledu") %>' />
                </td>
                <td>
                    <asp:Label ID="IdUzytkownikaLabel" runat="server" 
                        Text='<%# Eval("IdUzytkownika") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>



<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:HelpDesk1ConnectionString1 %>" 
    ProviderName="<%$ ConnectionStrings:HelpDesk1ConnectionString1.ProviderName %>" 
    SelectCommand="SELECT * FROM [Przypomnienia] ORDER BY [IdUzytkownika], [IdPrzypomnienia], [Opis]">
</asp:SqlDataSource>



</asp:Content>

