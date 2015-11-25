<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="MojeZgloszenia.aspx.cs" Inherits="MojeZgloszenia2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <body>
        <div>
            <asp:Label ID="Label8" runat="server" Text="IDZgloszenia"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
            <br />
            <asp:Label ID="Label9" runat="server" Text="Tytuł"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
            <br />
            <asp:Label ID="Label10" runat="server" Text="Opis"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label11" runat="server" Text="Status: "></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server"  AutoPostBack="true"
                DataSourceID="SqlDataSource1" DataTextField="Nazwa" DataValueField="IdStatusu">
            </asp:DropDownList>
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:HelpDeskConnectionString %>" 
                SelectCommand="SELECT 'Wybierz...' AS Nazwa, null AS IdStatusu
                UNION ALL
                SELECT Nazwa, IdStatusu FROM [ZgloszeniaStatusy]"></asp:SqlDataSource>
            
            <asp:Button ID="Button1" runat="server" Text="Filtruj" />
            
        </div>
        <div>
            <table class="table table-bordered table-hover">
                <tr>
                    <th>
                        ID
                    </th>
                    <th width="230">
                        Tytuł
                    </th>
                    <th width="230">
                        Opis
                    </th>
                    <th>
                        Status
                    </th>
                    <th>
                        Kategoria
                    </th>
                    <th>
                        Data Zgłoszenia
                    </th>
                    <th>
                        Data Zakończenia
                    </th>
                </tr>
                <asp:ListView ID="ListView1" runat="server" DataKeyNames="IdZgloszenia" DataSourceID="SQL1"
                    ItemPlaceholderID="placehold">
                    <LayoutTemplate>
                        <ul>
                            <asp:PlaceHolder ID="placehold" runat="server"></asp:PlaceHolder>
                        </ul>
                    </LayoutTemplate>
                    <ItemTemplate>
                        <tr>
                            <td>
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
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("TematKat") %>'></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("DataZgloszenia") %>'></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("DataZakonczenia") %>'></asp:Label>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SQL1" runat="server" CancelSelectOnNullParameter="false" ConnectionString="<%$ ConnectionStrings:HelpDesk1ConnectionString %>"
                    SelectCommand="SELECT z.[IDZgloszenia]
      ,z.[Temat]
      ,z.[Opis]
      ,s.[Nazwa] as Status
      ,t.[Nazwa] as TematKat
      ,z.[DataZgloszenia]
      ,z.[DataZakonczenia]
      FROM [HelpDesk].[dbo].[Zgloszenia] z
      LEFT JOIN [HelpDesk].[dbo].[ZgloszeniaStatusy] s ON z.[IdStatusu] = s.[IdStatusu]
      LEFT JOIN [HelpDesk].[dbo].[Tematy] t ON z.[IdTematu] = t.[IdTypu]
      LEFT JOIN [HelpDesk].[dbo].[Uzytkownicy] u ON z.[IDUzytkownika] = u.IdUzytkownika
where z.IDUzytkownika = @userid AND (@idz IS NULL OR z.IDZgloszenia = @idz ) 
AND  (@temat IS NULL OR z.Temat LIKE '%' + @temat + '%' ) 
AND (@opis IS NULL OR z.Opis = '%' + @opis + '%' )
AND  (@status IS NULL OR z.IdStatusu = @status )">
                    <SelectParameters>
                        <asp:SessionParameter Name="userid" SessionField="USER_ID" />
                        <asp:ControlParameter ControlID="TextBox1" Name="idz" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox2" Name="temat" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox3" Name="opis" PropertyName="Text" />
                        <asp:ControlParameter ControlID="DropDownList1" Name="status" PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:ListView ID="ListView2" runat="server" DataKeyNames="IDZgloszenia" DataSourceID="SQL1">
                    <ItemTemplate>
                        <tr style="background-color: #DCDCDC; color: #000000;">
                            <td>
                                <asp:Label ID="IDZgloszeniaLabel" runat="server" Text='<%# Eval("IDZgloszenia") %>' />
                            </td>
                            <td>
                                <asp:Label ID="TematLabel" runat="server" Text='<%# Eval("Temat") %>' />
                            </td>
                            <td>
                                <asp:Label ID="OpisLabel" runat="server" Text='<%# Eval("Opis") %>' />
                            </td>
                            <td>
                                <asp:Label ID="StatusLabel" runat="server" Text='<%# Eval("Status") %>' />
                            </td>
                            <td>
                                <asp:Label ID="TematKatLabel" runat="server" Text='<%# Eval("TematKat") %>' />
                            </td>
                            <td>
                                <asp:Label ID="DataZgloszeniaLabel" runat="server" Text='<%# Eval("DataZgloszenia") %>' />
                            </td>
                            <td>
                                <asp:Label ID="DataZakonczeniaLabel" runat="server" Text='<%# Eval("DataZakonczenia") %>' />
                            </td>
                        </tr>
                    </ItemTemplate>
                    
                    <EmptyDataTemplate>
                        <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse;
                            border-color: #999999; border-style: none; border-width: 1px;">
                            <tr>
                                <td>
                                    No data was returned.
                                </td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;
                                        border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;
                                        font-family: Verdana, Arial, Helvetica, sans-serif;">
                                        <tr runat="server" style="background-color: #DCDCDC; color: #000000;">
                                            <th runat="server">
                                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument="IDZgloszenia" CommandName="Sort">IDZgloszenia</asp:LinkButton>
                                            </th>
                                            <th runat="server">
                                                Temat
                                            </th>
                                            <th runat="server">
                                                Opis
                                            </th>
                                            <th runat="server">
                                                Status
                                            </th>
                                            <th runat="server">
                                                TematKat
                                            </th>
                                            <th runat="server">
                                                DataZgloszenia
                                            </th>
                                            <th runat="server">
                                                DataZakonczenia
                                            </th>
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
                    
                  
                </asp:ListView>
        </div>
    </body>
</asp:Content>
