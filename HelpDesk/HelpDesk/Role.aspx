<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Role.aspx.cs" Inherits="HelpDesk.Role" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <b></b>
    <asp:Label ID="Label1" runat="server" Text="Lista Ról"></asp:Label></b>
    <br />
    <br />
    <table class="table table-bordered table-hover">
        <tr>
            <th>ID</th>
            <th>Nazwa</th>
            <i>
                <th>Narzędzia</th>
            </i>

        </tr>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="sql1" OnItemCanceling="ListView1_ItemCanceling" OnItemDeleting="ListView1_ItemDeleting" OnItemEditing="ListView1_ItemEditing" OnItemInserting="ListView1_ItemInserting" OnItemUpdating="ListView1_ItemUpdating" OnItemInserted="ListView1_ItemInserted">
            <ItemTemplate>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="Edyt" runat="server" Text="Edytuj" Class="btn btn-primary" CommandName="Edit" />
                        <asp:Button ID="Usun" runat="server" Text="Usuń" Class="btn btn-default" CommandName="Delete" />
                    </td>

                </tr>

            </ItemTemplate>
            <EditItemTemplate>
                <tr>
                    <td>
                        <asp:TextBox ID="Id" runat="server" Text='<%# Bind("Id") %>'></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="Name" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="Zapi" runat="server" Text="Zapisz" Class="btn btn-success" CommandName="Update" />
                        <asp:Button ID="Anul" runat="server" Text="Anuluj" Class="btn btn-warning" CommandName="Cancel" />
                    </td>

                </tr>
            </EditItemTemplate>

            <InsertItemTemplate>
                <tr>
                    <td>
                        <asp:TextBox ID="Id" runat="server" Text='<%# Bind("Id") %>'></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="Name" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="Zapi" runat="server" Text="Zapisz" Class="btn btn-success" CommandName="Insert" />
                        <asp:Button ID="Anul" runat="server" Text="Anuluj" Class="btn btn-warning" CommandName="Cancel" />
                    </td>

                </tr>
            </InsertItemTemplate>

        </asp:ListView>
        <tr>
            <td colspan="2">
                <asp:Button ID="Doda" runat="server" Text="Dodaj Rolę" Visible="true" CssClass="btn btn-success" OnClick="Doda_Click" /></td>

        </tr>
    </table>


    <br />
    <b></b>
    <asp:Label ID="Label3" runat="server" Text="Przydzielanie Ról"></asp:Label></b>
    <br />
    <br />
    <table class="table table-bordered table-hover">
        <tr>
            <th>Nazwa Użytkownika</th>
            <th>Rola</th>
            <i>
                <th>Narzędzia</th>
            </i>

        </tr>
        <asp:ListView ID="ListView2" runat="server" DataKeyNames="UserId" DataSourceID="sql2" >
            <ItemTemplate>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("UserName") %>'></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("RoleId") %>'></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="Edyt" runat="server" Text="Edytuj" Class="btn btn-primary" CommandName="Edit" />
                        <asp:Button ID="Usun" runat="server" Text="Usuń" Class="btn btn-default" CommandName="Delete" />
                    </td>

                </tr>

            </ItemTemplate>
            <EditItemTemplate>
                <tr>
                    <td>
                        <asp:TextBox ID="Id" runat="server" Text='<%# Bind("Id") %>'></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="Name" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="Zapi" runat="server" Text="Zapisz" Class="btn btn-success" CommandName="Update" />
                        <asp:Button ID="Anul" runat="server" Text="Anuluj" Class="btn btn-warning" CommandName="Cancel" />
                    </td>

                </tr>
            </EditItemTemplate>

            <InsertItemTemplate>
                <tr>
                    <td>
                        <asp:TextBox ID="Id" runat="server" Text='<%# Bind("UserId") %>'></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="Name" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="Zapi" runat="server" Text="Zapisz" Class="btn btn-success" CommandName="Insert" />
                        <asp:Button ID="Anul" runat="server" Text="Anuluj" Class="btn btn-warning" CommandName="Cancel" />
                    </td>

                </tr>
            </InsertItemTemplate>

        </asp:ListView>


    </table>

    <asp:SqlDataSource ID="sql1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
        SelectCommand="SELECT * from AspNetRoles ORDER BY Id"
        DeleteCommand="DELETE from AspNetRoles where Id=@Id"
        UpdateCommand="Update AspNetRoles
Set Id=@Id, Name=@Name
where id=@Id"
        InsertCommand="Insert Into AspNetRoles(Id,Name) VALUES(@id,@Name)">

        <InsertParameters>
            <asp:Parameter Name="Id" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Id" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
        </UpdateParameters>
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="String" />
        </DeleteParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="sql2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
        SelectCommand="select u.UserId, u.RoleId, r.Name, s.UserName
from AspNetUserRoles u
left join AspNetRoles r on u.RoleId = r.Name
        left join AspNetUsers s on s.UserName = u.UserId">
        <InsertParameters>
            <asp:Parameter Name="UserId" Type="String" />
            <asp:Parameter Name="RoleId" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserId" Type="String" />
            <asp:Parameter Name="RoleId" Type="String" />
        </UpdateParameters>
        <DeleteParameters>
            <asp:Parameter Name="UserId" Type="String" />
            <asp:Parameter Name="RoleId" Type="String" />
        </DeleteParameters>

    </asp:SqlDataSource>
</asp:Content>
