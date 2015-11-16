
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="test1.aspx.cs" Inherits="test1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" 
        DataKeyNames="ID" InsertItemPosition="LastItem">
        <ItemTemplate>
            <tr style="background-color: #E0FFFF;color: #333333;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                        Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                </td>
                <td>
                    <asp:Label ID="LOGINLabel" runat="server" Text='<%# Eval("LOGIN") %>' />
                </td>
                <td>
                    <asp:Label ID="IMIELabel" runat="server" Text='<%# Eval("IMIE") %>' />
                </td>
                <td>
                    <asp:Label ID="NAZWISKOLabel" runat="server" Text='<%# Eval("NAZWISKO") %>' />
                </td>
                <td>
                    <asp:Label ID="HASLOLabel" runat="server" Text='<%# Eval("HASLO") %>' />
                </td>
                <td>
                    <asp:Label ID="EMAILLabel" runat="server" Text='<%# Eval("EMAIL") %>' />
                </td>
                <td>
                    <asp:Label ID="TYPLabel" runat="server" Text='<%# Eval("TYP") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <AlternatingItemTemplate>
            <tr style="background-color: #FFFFFF;color: #284775;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                        Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                </td>
                <td>
                    <asp:Label ID="LOGINLabel" runat="server" Text='<%# Eval("LOGIN") %>' />
                </td>
                <td>
                    <asp:Label ID="IMIELabel" runat="server" Text='<%# Eval("IMIE") %>' />
                </td>
                <td>
                    <asp:Label ID="NAZWISKOLabel" runat="server" Text='<%# Eval("NAZWISKO") %>' />
                </td>
                <td>
                    <asp:Label ID="HASLOLabel" runat="server" Text='<%# Eval("HASLO") %>' />
                </td>
                <td>
                    <asp:Label ID="EMAILLabel" runat="server" Text='<%# Eval("EMAIL") %>' />
                </td>
                <td>
                    <asp:Label ID="TYPLabel" runat="server" Text='<%# Eval("TYP") %>' />
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
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" ValidationGroup="ins" 
                        Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Clear" />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="LOGINTextBox" runat="server" Text='<%# Bind("LOGIN") %>' />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="LOGINTextBox"  
                    ErrorMessage="Pole wymagane" ValidationGroup="ins" > </asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="IMIETextBox" runat="server" Text='<%# Bind("IMIE") %>' />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="IMIETextBox"  
                    ErrorMessage="Pole wymagane" ValidationGroup="ins" > </asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="NAZWISKOTextBox" runat="server" 
                        Text='<%# Bind("NAZWISKO") %>' />
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="NAZWISKOTextBox"  
                    ErrorMessage="Pole wymagane" ValidationGroup="ins">    </asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="HASLOTextBox" runat="server" Text='<%# Bind("HASLO") %>' />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="HASLOTextBox"  
                    ErrorMessage="Pole wymagane" ValidationGroup="ins" ></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="EMAILTextBox" runat="server" Text='<%# Bind("EMAIL") %>' />
                </td>
                <td>
                    <asp:TextBox ID="TYPTextBox" runat="server" Text='<%# Bind("TYP") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TYPTextBox"  
                    ErrorMessage="Pole wymagane" ValidationGroup="ins" ></asp:RequiredFieldValidator>
                <asp:CustomValidator id="CustomValidator1" runat="server" 
  OnServerValidate="TextValidate" 
  ControlToValidate="TYPTextBox" 
  ErrorMessage="Pole musi zawierac tylko i wylacznie cyfry" ValidationGroup="ins" >
</asp:CustomValidator>
                </td>
            </tr>
        </InsertItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table ID="itemPlaceholderContainer" runat="server" border="1" 
                            style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                <th runat="server">
                                </th>
                                <th runat="server">
                                    ID</th>
                                <th runat="server">
                                    LOGIN</th>
                                <th runat="server">
                                    IMIE</th>
                                <th runat="server">
                                    NAZWISKO</th>
                                <th runat="server">
                                    HASLO</th>
                                <th runat="server">
                                    EMAIL</th>
                                <th runat="server">
                                    TYP</th>
                            </tr>
                            <tr ID="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" 
                        style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
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
            <tr style="background-color: #999999;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                        Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Cancel" />
                </td>
                <td>
                    <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="LOGINTextBox" runat="server" Text='<%# Bind("LOGIN") %>' />
                </td>
                <td>
                    <asp:TextBox ID="IMIETextBox" runat="server" Text='<%# Bind("IMIE") %>' />
                </td>
                <td>
                    <asp:TextBox ID="NAZWISKOTextBox" runat="server" 
                        Text='<%# Bind("NAZWISKO") %>' />
                </td>
                <td>
                    <asp:TextBox ID="HASLOTextBox" runat="server" Text='<%# Bind("HASLO") %>' />
                </td>
                <td>
                    <asp:TextBox ID="EMAILTextBox" runat="server" Text='<%# Bind("EMAIL") %>' />
                </td>
                <td>
                    <asp:TextBox ID="TYPTextBox" runat="server" Text='<%# Bind("TYP") %>' />
                <asp:CustomValidator id="CustomValidator1" runat="server" 
  OnServerValidate="TextValidate" 
  ControlToValidate="TYPTextBox" 
  ErrorMessage="Pole musi zawierac tylko i wylacznie cyfry">
</asp:CustomValidator></td>
            </tr>
        </EditItemTemplate>
        <SelectedItemTemplate>
            <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                        Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                </td>
                <td>
                    <asp:Label ID="LOGINLabel" runat="server" Text='<%# Eval("LOGIN") %>' />
                </td>
                <td>
                    <asp:Label ID="IMIELabel" runat="server" Text='<%# Eval("IMIE") %>' />
                </td>
                <td>
                    <asp:Label ID="NAZWISKOLabel" runat="server" Text='<%# Eval("NAZWISKO") %>' />
                </td>
                <td>
                    <asp:Label ID="HASLOLabel" runat="server" Text='<%# Eval("HASLO") %>' />
                </td>
                <td>
                    <asp:Label ID="EMAILLabel" runat="server" Text='<%# Eval("EMAIL") %>' />
                </td>
                <td>
                    <asp:Label ID="TYPLabel" runat="server" Text='<%# Eval("TYP") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
</asp:ListView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:HelpDesk1ConnectionString %>" 
    DeleteCommand="DELETE FROM [uzytkownicy] WHERE [ID] = @ID" 
    InsertCommand="INSERT INTO [uzytkownicy] ([LOGIN], [IMIE], [NAZWISKO], [HASLO], [EMAIL], [TYP]) VALUES (@LOGIN, @IMIE, @NAZWISKO, @HASLO, @EMAIL, @TYP)" 
    SelectCommand="SELECT * FROM [uzytkownicy]" 
    UpdateCommand="UPDATE [uzytkownicy] SET [LOGIN] = @LOGIN, [IMIE] = @IMIE, [NAZWISKO] = @NAZWISKO, [HASLO] = @HASLO, [EMAIL] = @EMAIL, [TYP] = @TYP WHERE [ID] = @ID">
    <DeleteParameters>
        <asp:Parameter Name="ID" Type="Int32" />
    </DeleteParameters>
    <UpdateParameters>
        <asp:Parameter Name="LOGIN" Type="String" />
        <asp:Parameter Name="IMIE" Type="String" />
        <asp:Parameter Name="NAZWISKO" Type="String" />
        <asp:Parameter Name="HASLO" Type="String" />
        <asp:Parameter Name="EMAIL" Type="String" />
        <asp:Parameter Name="TYP" Type="Int32" />
        <asp:Parameter Name="ID" Type="Int32" />
    </UpdateParameters>
    <InsertParameters>
        <asp:Parameter Name="LOGIN" Type="String" />
        <asp:Parameter Name="IMIE" Type="String" />
        <asp:Parameter Name="NAZWISKO" Type="String" />
        <asp:Parameter Name="HASLO" Type="String" />
        <asp:Parameter Name="EMAIL" Type="String" />
        <asp:Parameter Name="TYP" Type="Int32" />
    </InsertParameters>
</asp:SqlDataSource>
</asp:Content>

