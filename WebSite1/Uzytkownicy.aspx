<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Uzytkownicy.aspx.cs" Inherits="Uzytkownicy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="IdUzytkownika" 
        DataSourceID="SqlDataSource1" InsertItemPosition="LastItem" 
        oniteminserted="ListView1_ItemInserted" 
        onselectedindexchanged="ListView1_SelectedIndexChanged">
        <ItemTemplate>
            <tr style="background-color: #DCDCDC; color: #000000;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                        Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="IdUzytkownikaLabel" runat="server" 
                        Text='<%# Eval("IdUzytkownika") %>' />
                </td>
                <td>
                    <asp:Label ID="LoginLabel" runat="server" Text='<%# Eval("Login") %>' />
                </td>
                <td>
                    <asp:Label ID="ImieLabel" runat="server" Text='<%# Eval("Imie") %>' />
                </td>
                <td>
                    <asp:Label ID="NazwiskoLabel" runat="server" Text='<%# Eval("Nazwisko") %>' />
                </td>
                <td>
                    <asp:Label ID="EMailLabel" runat="server" Text='<%# Eval("EMail") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="AktywnyCheckBox" runat="server" Checked='<%# Eval("Aktywny") %>'
                        Enabled="false" />
                </td>
                <td>
                    <asp:CheckBox ID="SpecjalistaCheckBox" runat="server" Checked='<%# Eval("Specjalista") %>'
                        Enabled="false" />
                </td>
                <td>
                    <asp:CheckBox ID="AdministratorCheckBox" runat="server" 
                        Checked='<%# Eval("Administrator") %>' Enabled="false" />
                </td>
                <td>
                    <asp:Label ID="AdresLabel" runat="server" Text='<%# Eval("Adres") %>' />
                </td>
                <td>
                    <asp:Label ID="OpisLabel" runat="server" Text='<%# Eval("Opis") %>' />
                </td>
                <td>
                    <asp:Label ID="FirmaLabel" runat="server" Text='<%# Eval("Firma") %>' />
                </td>
                <td>
                    <asp:Label ID="NrTelefonuLabel" runat="server" 
                        Text='<%# Eval("NrTelefonu") %>' />
                </td>
                <td>
                    <asp:Label ID="HashHasloLabel" runat="server" Text='<%# Eval("HashHaslo") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <AlternatingItemTemplate>
            <tr style="background-color: #FFF8DC;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                        Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="IdUzytkownikaLabel" runat="server" 
                        Text='<%# Eval("IdUzytkownika") %>' />
                </td>
                <td>
                    <asp:Label ID="LoginLabel" runat="server" Text='<%# Eval("Login") %>' />
                </td>
                <td>
                    <asp:Label ID="ImieLabel" runat="server" Text='<%# Eval("Imie") %>' />
                </td>
                <td>
                    <asp:Label ID="NazwiskoLabel" runat="server" Text='<%# Eval("Nazwisko") %>' />
                </td>
                <td>
                    <asp:Label ID="EMailLabel" runat="server" Text='<%# Eval("EMail") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="AktywnyCheckBox" runat="server" Checked='<%# Eval("Aktywny") %>'
                        Enabled="false" />
                </td>
                <td>
                    <asp:CheckBox ID="SpecjalistaCheckBox" runat="server" Checked='<%# Eval("Specjalista") %>'
                        Enabled="false" />
                </td>
                <td>
                    <asp:CheckBox ID="AdministratorCheckBox" runat="server" 
                        Checked='<%# Eval("Administrator") %>' Enabled="false" />
                </td>
                <td>
                    <asp:Label ID="AdresLabel" runat="server" Text='<%# Eval("Adres") %>' />
                </td>
                <td>
                    <asp:Label ID="OpisLabel" runat="server" Text='<%# Eval("Opis") %>' />
                </td>
                <td>
                    <asp:Label ID="FirmaLabel" runat="server" Text='<%# Eval("Firma") %>' />
                </td>
                <td>
                    <asp:Label ID="NrTelefonuLabel" runat="server" 
                        Text='<%# Eval("NrTelefonu") %>' />
                </td>
                <td>
                    <asp:Label ID="HashHasloLabel" runat="server" Text='<%# Eval("HashHaslo") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse;
                border-color: #999999; border-style: none; border-width: 1px;">
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
                    <asp:TextBox ID="LoginTextBox" runat="server" Text='<%# Bind("Login") %>' />
                </td>
                <td>
                    <asp:TextBox ID="ImieTextBox" runat="server" Text='<%# Bind("Imie") %>' />
                </td>
                <td>
                    <asp:TextBox ID="NazwiskoTextBox" runat="server" Text='<%# Bind("Nazwisko") %>' />
                </td>
                <td>
                    <asp:TextBox ID="EMailTextBox" runat="server" Text='<%# Bind("EMail") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="AktywnyCheckBox" runat="server" Checked='<%# Bind("Aktywny") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="SpecjalistaCheckBox" runat="server" Checked='<%# Bind("Specjalista") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="AdministratorCheckBox" runat="server" Checked='<%# Bind("Administrator") %>' />
                </td>
                <td>
                    <asp:TextBox ID="AdresTextBox" runat="server" Text='<%# Bind("Adres") %>' />
                </td>
                <td>
                    <asp:TextBox ID="OpisTextBox" runat="server" Text='<%# Bind("Opis") %>' />
                </td>
                <td>
                    <asp:TextBox ID="FirmaTextBox" runat="server" Text='<%# Bind("Firma") %>' />
                </td>
                <td>
                    <asp:TextBox ID="NrTelefonuTextBox" runat="server" Text='<%# Bind("NrTelefonu") %>' />
                </td>
                <td>
                    <asp:TextBox ID="HashHasloTextBox" runat="server" 
                        Text='<%# Bind("HashHaslo") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;
                            border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;
                            font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color: #DCDCDC; color: #000000;">
                                <th runat="server">
                                </th>
                                <th runat="server">
                                    IdUzytkownika</th>
                                <th runat="server">
                                    Login</th>
                                <th runat="server">
                                    Imie</th>
                                <th runat="server">
                                    Nazwisko</th>
                                <th runat="server">
                                    EMail</th>
                                <th runat="server">
                                    Aktywny</th>
                                <th runat="server">
                                    Specjalista</th>
                                <th runat="server">
                                    Administrator</th>
                                <th runat="server">
                                    Adres</th>
                                <th runat="server">
                                    Opis</th>
                                <th runat="server">
                                    Firma</th>
                                <th runat="server">
                                    NrTelefonu</th>
                                <th runat="server">
                                    HashHaslo</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center; background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif;
                        color: #000000;">
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
            <tr style="background-color:#008A8C;color: #FFFFFF;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                        Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Cancel" />
                </td>
                <td>
                    <asp:Label ID="IdUzytkownikaLabel1" runat="server" 
                        Text='<%# Eval("IdUzytkownika") %>' />
                </td>
                <td>
                    <asp:TextBox ID="LoginTextBox" runat="server" Text='<%# Bind("Login") %>' />
                </td>
                <td>
                    <asp:TextBox ID="ImieTextBox" runat="server" Text='<%# Bind("Imie") %>' />
                </td>
                <td>
                    <asp:TextBox ID="NazwiskoTextBox" runat="server" 
                        Text='<%# Bind("Nazwisko") %>' />
                </td>
                <td>
                    <asp:TextBox ID="EMailTextBox" runat="server" Text='<%# Bind("EMail") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="AktywnyCheckBox" runat="server" 
                        Checked='<%# Bind("Aktywny") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="SpecjalistaCheckBox" runat="server" 
                        Checked='<%# Bind("Specjalista") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="AdministratorCheckBox" runat="server" 
                        Checked='<%# Bind("Administrator") %>' />
                </td>
                <td>
                    <asp:TextBox ID="AdresTextBox" runat="server" Text='<%# Bind("Adres") %>' />
                </td>
                <td>
                    <asp:TextBox ID="OpisTextBox" runat="server" Text='<%# Bind("Opis") %>' />
                </td>
                <td>
                    <asp:TextBox ID="FirmaTextBox" runat="server" Text='<%# Bind("Firma") %>' />
                </td>
                <td>
                    <asp:TextBox ID="NrTelefonuTextBox" runat="server" 
                        Text='<%# Bind("NrTelefonu") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <%--<SelectedItemTemplate>
            <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                <td>
                    <asp:Label ID="IdUzytkownikaLabel" runat="server" 
                        Text='<%# Eval("IdUzytkownika") %>' />
                </td>
                <td>
                    <asp:Label ID="LoginLabel" runat="server" Text='<%# Eval("Login") %>' />
                </td>
                <td>
                    <asp:Label ID="ImieLabel" runat="server" Text='<%# Eval("Imie") %>' />
                </td>
                <td>
                    <asp:Label ID="NazwiskoLabel" runat="server" Text='<%# Eval("Nazwisko") %>' />
                </td>
                <td>
                    <asp:Label ID="EMailLabel" runat="server" Text='<%# Eval("EMail") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="AktywnyCheckBox" runat="server" 
                        Checked='<%# Eval("Aktywny") %>' Enabled="false" />
                </td>
                <td>
                    <asp:CheckBox ID="SpecjalistaCheckBox" runat="server" 
                        Checked='<%# Eval("Specjalista") %>' Enabled="false" />
                </td>
                <td>
                    <asp:CheckBox ID="AdministratorCheckBox" runat="server" 
                        Checked='<%# Eval("Administrator") %>' Enabled="false" />
                </td>
                <td>
                    <asp:Label ID="AdresLabel" runat="server" Text='<%# Eval("Adres") %>' />
                </td>
                <td>
                    <asp:Label ID="OpisLabel" runat="server" Text='<%# Eval("Opis") %>' />
                </td>
                <td>
                    <asp:Label ID="FirmaLabel" runat="server" Text='<%# Eval("Firma") %>' />
                </td>
                <td>
                    <asp:Label ID="NrTelefonuLabel" runat="server" 
                        Text='<%# Eval("NrTelefonu") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>--%><EditItemTemplate>
            <tr style="background-color:#008A8C;color: #FFFFFF;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                        Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Cancel" />
                </td>
                <td>
                    <asp:Label ID="IdUzytkownikaLabel1" runat="server" 
                        Text='<%# Eval("IdUzytkownika") %>' />
                </td>
                <td>
                    <asp:TextBox ID="LoginTextBox" runat="server" Text='<%# Bind("Login") %>' />
                </td>
                <td>
                    <asp:TextBox ID="ImieTextBox" runat="server" Text='<%# Bind("Imie") %>' />
                </td>
                <td>
                    <asp:TextBox ID="NazwiskoTextBox" runat="server" 
                        Text='<%# Bind("Nazwisko") %>' />
                </td>
                <td>
                    <asp:TextBox ID="EMailTextBox" runat="server" Text='<%# Bind("EMail") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="AktywnyCheckBox" runat="server" 
                        Checked='<%# Bind("Aktywny") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="SpecjalistaCheckBox" runat="server" 
                        Checked='<%# Bind("Specjalista") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="AdministratorCheckBox" runat="server" 
                        Checked='<%# Bind("Administrator") %>' />
                </td>
                <td>
                    <asp:TextBox ID="AdresTextBox" runat="server" Text='<%# Bind("Adres") %>' />
                </td>
                <td>
                    <asp:TextBox ID="OpisTextBox" runat="server" Text='<%# Bind("Opis") %>' />
                </td>
                <td>
                    <asp:TextBox ID="FirmaTextBox" runat="server" Text='<%# Bind("Firma") %>' />
                </td>
                <td>
                    <asp:TextBox ID="NrTelefonuTextBox" runat="server" 
                        Text='<%# Bind("NrTelefonu") %>' />
                </td>
                <td>
                    <asp:TextBox ID="HashHasloTextBox" runat="server" 
                        Text='<%# Bind("HashHaslo") %>' />
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
                    <asp:Label ID="IdUzytkownikaLabel" runat="server" 
                        Text='<%# Eval("IdUzytkownika") %>' />
                </td>
                <td>
                    <asp:Label ID="LoginLabel" runat="server" Text='<%# Eval("Login") %>' />
                </td>
                <td>
                    <asp:Label ID="ImieLabel" runat="server" Text='<%# Eval("Imie") %>' />
                </td>
                <td>
                    <asp:Label ID="NazwiskoLabel" runat="server" Text='<%# Eval("Nazwisko") %>' />
                </td>
                <td>
                    <asp:Label ID="EMailLabel" runat="server" Text='<%# Eval("EMail") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="AktywnyCheckBox" runat="server" 
                        Checked='<%# Eval("Aktywny") %>' Enabled="false" />
                </td>
                <td>
                    <asp:CheckBox ID="SpecjalistaCheckBox" runat="server" 
                        Checked='<%# Eval("Specjalista") %>' Enabled="false" />
                </td>
                <td>
                    <asp:CheckBox ID="AdministratorCheckBox" runat="server" 
                        Checked='<%# Eval("Administrator") %>' Enabled="false" />
                </td>
                <td>
                    <asp:Label ID="AdresLabel" runat="server" Text='<%# Eval("Adres") %>' />
                </td>
                <td>
                    <asp:Label ID="OpisLabel" runat="server" Text='<%# Eval("Opis") %>' />
                </td>
                <td>
                    <asp:Label ID="FirmaLabel" runat="server" Text='<%# Eval("Firma") %>' />
                </td>
                <td>
                    <asp:Label ID="NrTelefonuLabel" runat="server" 
                        Text='<%# Eval("NrTelefonu") %>' />
                </td>
                <td>
                    <asp:Label ID="HashHasloLabel" runat="server" Text='<%# Eval("HashHaslo") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HelpDesk1ConnectionString %>"
        
        SelectCommand="SELECT [IdUzytkownika], [Login], [Imie], [Nazwisko], [EMail], [Aktywny], [Specjalista], [Administrator], [Adres], [Opis], [Firma], [NrTelefonu], [HashHaslo] FROM [Uzytkownicy]" 
        DeleteCommand="DELETE FROM [Uzytkownicy] WHERE [IdUzytkownika] = @IdUzytkownika" 
        InsertCommand="INSERT INTO [Uzytkownicy] ([Login], [Imie], [Nazwisko], [EMail], [Aktywny], [Specjalista], [Administrator], [Adres], [Opis], [Firma], [NrTelefonu], [HashHaslo]) VALUES (@Login, @Imie, @Nazwisko, @EMail, @Aktywny, @Specjalista, @Administrator, @Adres, @Opis, @Firma, @NrTelefonu, HashBytes('sha1',@HashHaslo))" 
        UpdateCommand="UPDATE [Uzytkownicy] SET [Login] = @Login, [Imie] = @Imie, [Nazwisko] = @Nazwisko, [EMail] = @EMail, [Aktywny] = @Aktywny, [Specjalista] = @Specjalista, [Administrator] = @Administrator, [Adres] = @Adres, [Opis] = @Opis, [Firma] = @Firma, [NrTelefonu] = @NrTelefonu, [HashHaslo] = HashBytes('sha1',@HashHaslo) WHERE [IdUzytkownika] = @IdUzytkownika">
        <DeleteParameters>
            <asp:Parameter Name="IdUzytkownika" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="Login" Type="String" />
            <asp:Parameter Name="Imie" Type="String" />
            <asp:Parameter Name="Nazwisko" Type="String" />
            <asp:Parameter Name="EMail" Type="String" />
            <asp:Parameter Name="Aktywny" Type="Boolean" />
            <asp:Parameter Name="Specjalista" Type="Boolean" />
            <asp:Parameter Name="Administrator" Type="Boolean" />
            <asp:Parameter Name="Adres" Type="String" />
            <asp:Parameter Name="Opis" Type="String" />
            <asp:Parameter Name="Firma" Type="String" />
            <asp:Parameter Name="NrTelefonu" Type="String" />
            <asp:Parameter Name="HashHaslo" Type="String" />
            <asp:Parameter Name="IdUzytkownika" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="Login" Type="String" />
            <asp:Parameter Name="Imie" Type="String" />
            <asp:Parameter Name="Nazwisko" Type="String" />
            <asp:Parameter Name="EMail" Type="String" />
            <asp:Parameter Name="Aktywny" Type="Boolean" />
            <asp:Parameter Name="Specjalista" Type="Boolean" />
            <asp:Parameter Name="Administrator" Type="Boolean" />
            <asp:Parameter Name="Adres" Type="String" />
            <asp:Parameter Name="Opis" Type="String" />
            <asp:Parameter Name="Firma" Type="String" />
            <asp:Parameter Name="NrTelefonu" Type="String" />
            <asp:Parameter Name="HashHaslo" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>
