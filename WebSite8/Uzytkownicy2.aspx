<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Uzytkownicy2.aspx.cs" Inherits="MojeZgloszenia2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content_container">
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="IdUzytkownika" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <tr class="tbodyer">
                    <td>
                        <asp:Label ID="IdUzytkownikaLabel" runat="server" Text='<%# Eval("IdUzytkownika") %>' />
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
                        <asp:CheckBox ID="AdministratorCheckBox" runat="server" Checked='<%# Eval("Administrator") %>'
                            Enabled="false" />
                    </td>
                    <td>
                        <asp:Label ID="AdresLabel" runat="server" Text='<%# Eval("Adres") %>' />
                    </td>
                    <td>
                        <asp:Label ID="FirmaLabel" runat="server" Text='<%# Eval("Firma") %>' />
                    </td>
                    <td>
                        <asp:Label ID="OpisLabel" runat="server" Text='<%# Eval("Opis") %>' />
                    </td>
                    <td>
                        <asp:Label ID="NrTelefonuLabel" runat="server" Text='<%# Eval("NrTelefonu") %>' />
                    </td>
                    <td>
                        <asp:Label ID="LoginLabel" runat="server" Text='<%# Eval("Login") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <AlternatingItemTemplate>
                <tr class="tbodyer">
                    <td>
                        <asp:Label ID="IdUzytkownikaLabel" runat="server" Text='<%# Eval("IdUzytkownika") %>' />
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
                        <asp:CheckBox ID="AdministratorCheckBox" runat="server" Checked='<%# Eval("Administrator") %>'
                            Enabled="false" />
                    </td>
                    <td>
                        <asp:Label ID="AdresLabel" runat="server" Text='<%# Eval("Adres") %>' />
                    </td>
                    <td>
                        <asp:Label ID="FirmaLabel" runat="server" Text='<%# Eval("Firma") %>' />
                    </td>
                    <td>
                        <asp:Label ID="OpisLabel" runat="server" Text='<%# Eval("Opis") %>' />
                    </td>
                    <td>
                        <asp:Label ID="NrTelefonuLabel" runat="server" Text='<%# Eval("NrTelefonu") %>' />
                    </td>
                    <td>
                        <asp:Label ID="LoginLabel" runat="server" Text='<%# Eval("Login") %>' />
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
                        &nbsp;
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
                        <asp:TextBox ID="FirmaTextBox" runat="server" Text='<%# Bind("Firma") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="OpisTextBox" runat="server" Text='<%# Bind("Opis") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="NrTelefonuTextBox" runat="server" Text='<%# Bind("NrTelefonu") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="LoginTextBox" runat="server" Text='<%# Bind("Login") %>' />
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
                                        IdUzytkownika
                                    </th>
                                    <th runat="server">
                                        Imie
                                    </th>
                                    <th runat="server">
                                        Nazwisko
                                    </th>
                                    <th runat="server">
                                        EMail
                                    </th>
                                    <th runat="server">
                                        Aktywny
                                    </th>
                                    <th runat="server">
                                        Specjalista
                                    </th>
                                    <th runat="server">
                                        Administrator
                                    </th>
                                    <th runat="server">
                                        Adres
                                    </th>
                                    <th runat="server">
                                        Firma
                                    </th>
                                    <th runat="server">
                                        Opis
                                    </th>
                                    <th runat="server">
                                        NrTelefonu
                                    </th>
                                    <th runat="server">
                                        Login
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
                        <asp:Label ID="IdUzytkownikaLabel1" runat="server" Text='<%# Eval("IdUzytkownika") %>' />
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
                        <asp:TextBox ID="FirmaTextBox" runat="server" Text='<%# Bind("Firma") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="OpisTextBox" runat="server" Text='<%# Bind("Opis") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="NrTelefonuTextBox" runat="server" Text='<%# Bind("NrTelefonu") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="LoginTextBox" runat="server" Text='<%# Bind("Login") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <SelectedItemTemplate>
                <tr class="tbodyer">
                    <td>
                        <asp:Label ID="IdUzytkownikaLabel" runat="server" Text='<%# Eval("IdUzytkownika") %>' />
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
                        <asp:CheckBox ID="AdministratorCheckBox" runat="server" Checked='<%# Eval("Administrator") %>'
                            Enabled="false" />
                    </td>
                    <td>
                        <asp:Label ID="AdresLabel" runat="server" Text='<%# Eval("Adres") %>' />
                    </td>
                    <td>
                        <asp:Label ID="FirmaLabel" runat="server" Text='<%# Eval("Firma") %>' />
                    </td>
                    <td>
                        <asp:Label ID="OpisLabel" runat="server" Text='<%# Eval("Opis") %>' />
                    </td>
                    <td>
                        <asp:Label ID="NrTelefonuLabel" runat="server" Text='<%# Eval("NrTelefonu") %>' />
                    </td>
                    <td>
                        <asp:Label ID="LoginLabel" runat="server" Text='<%# Eval("Login") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HelpDeskConnectionString %>"
        ProviderName="<%$ ConnectionStrings:HelpDeskConnectionString.ProviderName %>"
        SelectCommand="SELECT [IdUzytkownika], [Imie], [Nazwisko], [EMail], [Aktywny], [Specjalista], [Administrator], [Adres], [Firma], [Opis], [NrTelefonu], [Login] FROM [Uzytkownicy] ORDER BY [Imie], [Nazwisko], [IdUzytkownika]">
    </asp:SqlDataSource>
</asp:Content>
