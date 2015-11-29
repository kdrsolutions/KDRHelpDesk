<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="MojeZgloszenia.aspx.cs" Inherits="MojeZgloszenia2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content_container">
        <h4>
            Lista wysłanych zgłoszeń</h4>
        <div id="filter">
            <asp:Label ID="Label8" runat="server" Text="ID"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Label ID="Label9" runat="server" Text="Tytuł"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:Label ID="Label10" runat="server" Text="Opis"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:Label ID="Label11" runat="server" Text="Status: "></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" DataSourceID="SqlDataSource1"
                DataTextField="Nazwa" DataValueField="IdStatusu">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HelpDeskConnectionString %>"
                SelectCommand="SELECT 'Wybierz...' AS Nazwa, null AS IdStatusu
                UNION ALL
                SELECT Nazwa, IdStatusu FROM [ZgloszeniaStatusy]"></asp:SqlDataSource>
            <asp:Button ID="Button1" runat="server" Text="Filtruj" />
        </div>
        <div>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="IdZgloszenia" DataSourceID="SQL1"
                ItemPlaceholderID="placehold">
                <LayoutTemplate>
                    <table id="tab_mojezgloszenia" class="table table-bordered">
                        <thead>
                            <tr>
                                <th width="40">
                                    ID
                                </th>
                                <th>
                                    Temat
                                </th>
                                <th max-width="400">
                                    Krótki opis
                                </th>
                                <th width="100">
                                    Status
                                </th>
                                <th width="200">
                                    Data zgłoszenia
                                </th>
                                <th width="200">
                                    Data realizacji
                                </th>
                                <th width="40">
                                </th>
                            </tr>
                        </thead>
                        <tr id="placehold" runat="server">
                        </tr>
                </LayoutTemplate>
                <ItemTemplate>
                    <tr>
                        <td style="text-align: center;">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("IDZgloszenia") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Temat") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Opis") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Status") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("DataZgloszenia") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text='<%# ProcessMyDataItem(Eval("DataZakonczenia")) %>'></asp:Label>
                        </td>
                        <td style="text-align: center;">
                            <asp:LinkButton ID="LinkButton1" data-container="body" data-trigger="click" data-title='<%# Eval("Temat") %>' data-toggle="popover" data-placement="left" data-content='<%# Eval("Opis") %>'><span style="color: #272727;padding-top:2px;" class="glyphicon glyphicon-search"></span></asp:LinkButton>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SQL1" runat="server" CancelSelectOnNullParameter="false" ConnectionString="<%$ ConnectionStrings:HelpDeskConnectionString %>"
                SelectCommand="SELECT z.[IDZgloszenia]
      ,z.[Temat]
      ,z.[Opis]
      ,s.[Nazwa] as Status
      ,t.[Nazwa] as TematKat
      ,z.[DataZgloszenia]
      ,z.[DataZakonczenia]
      ,u.Imie
      ,u.Nazwisko
      
      FROM [Zgloszenia] z
      LEFT JOIN [ZgloszeniaStatusy] s ON z.[IdStatusu] = s.[IdStatusu]
      LEFT JOIN [Tematy] t ON z.[IdTematu] = t.[IdTypu]
      LEFT JOIN [Uzytkownicy] u ON z.[IDUzytkownika] = u.IdUzytkownika
where z.IDUzytkownika = @userid AND (@idz IS NULL OR z.IDZgloszenia = @idz ) 
AND  (@temat IS NULL OR z.Temat LIKE '%' + @temat + '%' ) 
AND (@opis IS NULL OR z.Opis = '%' + @opis + '%' )
AND  (@status IS NULL OR z.IdStatusu = @status )
ORDER BY Status">
                <SelectParameters>
                    <asp:SessionParameter Name="userid" SessionField="USER_ID" />
                    <asp:ControlParameter ControlID="TextBox1" Name="idz" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox2" Name="temat" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox3" Name="opis" PropertyName="Text" />
                    <asp:ControlParameter ControlID="DropDownList1" Name="status" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
