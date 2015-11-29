<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="TerminRealizacjiSpraw.aspx.cs" Inherits="TerminRealizacjiSpraw" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content_container">
        <h4>Terminarz zgłoszeń</h4>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="IDZgloszenia" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <tr class="tbodyer">
                    <td style="text-align: center;">
                        <asp:Label ID="IDZgloszeniaLabel" runat="server" Text='<%# Eval("IDZgloszenia") %>' />
                    </td>
                    <td>
                        <asp:Label ID="IdStatusuLabel" runat="server" Text='<%# Eval("Nazwa") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DataZgloszeniaLabel" runat="server" Text='<%# Eval("DataZgloszenia") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DataZakonczeniaLabel" runat="server" Text='<%# ProcessMyDataItem(Eval("DataZakonczenia")) %>' />
                    </td>
                    <td style="text-align: center;">
                        <asp:LinkButton ID="LinkButton1" CommandName="Edit" runat="server"><span style="color: #272727;padding-top:2px;" class="glyphicon glyphicon-calendar"></span></asp:LinkButton>
                    </td>
                </tr>
            </ItemTemplate>
            <EditItemTemplate>
                <tr class="tbodyer">
                    <td style="text-align: center;">
                        <asp:Label ID="IDZgloszeniaLabel" runat="server" Text='<%# Eval("IDZgloszenia") %>' />
                    </td>
                    <td>
                        <asp:Label ID="IdStatusuLabel" runat="server" Text='<%# Eval("Nazwa") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DataZgloszeniaLabel" runat="server" Text='<%# Eval("DataZgloszenia") %>' />
                    </td>
                    <td>
                        <asp:Calendar ID="Calendar1" runat="Server" SelectedDate='<%# Bind("DataZakonczenia") %>'
                            BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest"
                            Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="100%">
                            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                            <SelectorStyle BackColor="#CCCCCC" />
                            <WeekendDayStyle BackColor="#FFFFCC" />
                            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <OtherMonthDayStyle ForeColor="#808080" />
                            <NextPrevStyle VerticalAlign="Bottom" />
                            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        </asp:Calendar>
                    </td>
                    <td style="text-align: center;">
                        <asp:LinkButton ID="LinkButton2" CommandName="Update" runat="server"><span style="color: #5cb85c;padding-top:2px;" class="glyphicon glyphicon-ok"></span></asp:LinkButton><br />
                        <asp:LinkButton ID="LinkButton3" CommandName="Cancel" runat="server"><span style="color: #d9534f;padding-top:2px;" class="glyphicon glyphicon-remove"></span></asp:LinkButton>
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server">
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
                            <table id="itemPlaceholderContainer" runat="server" class="table table-bordered">
                                <tr runat="server" class="theader">
                                    <th runat="server" width="40">
                                        ID
                                    </th>
                                    <th runat="server">
                                        Status
                                    </th>
                                    <th runat="server" width="300">
                                        Data zgłoszenia
                                    </th>
                                    <th runat="server" width="300">
                                        Data realizacji
                                    </th>
                                    <th runat="server" width="40">
                                    </th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
        </asp:ListView>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HelpDeskConnectionString %>"
        ProviderName="<%$ ConnectionStrings:HelpDeskConnectionString.ProviderName %>"
        SelectCommand="SELECT 
z.[IDZgloszenia],
s.[Nazwa],
z.[DataZgloszenia], 
z.[DataZakonczenia] 
FROM [Zgloszenia] z
LEFT JOIN [ZgloszeniaStatusy] s ON z.[IdStatusu] = s.[IdStatusu]
ORDER BY [DataZgloszenia]" UpdateCommand="UPDATE Zgloszenia SET DataZakonczenia=@DataZakonczenia WHERE IDZgloszenia=@IDZgloszenia">
    </asp:SqlDataSource>
</asp:Content>
