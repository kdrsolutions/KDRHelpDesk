<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<%@ Register TagPrefix="uc" TagName="min_menu" Src="~/Controls/min_menu.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/MP_styles.css" rel="stylesheet" type="text/css" />
    <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table width="100%" height="100%" border="0">
        <tr>
            <td id="MP_menu_col" class="hidden-xs">
                <div id="MP_logo">
                    <span><b>Help</b>Desk</span>
                </div>
                <div id="MP_sumary">
                    <span>sumary</span>
                </div>
                <ul id="MP_menu">
                    <li id="Li1" runat="server" visible="False">
                        <a href="#">
                            <div class="col-xs-10">
                                <span>Moje podsumowanie</span>
                            </div>
                            <div class="col-xs-2" style="border-left: 1px solid #202020;">
                                <span class="glyphicon glyphicon-dashboard li_icon"></span>
                            </div>
                        </a>
                    </li>
                    <li id="Li2" runat="server" visible="False">
                        <a href="#">
                            <div class="col-xs-10">
                                <span>Wysłane zgłoszenia</span>
                            </div>
                            <div class="col-xs-2" style="border-left: 1px solid #202020;">
                                <span class="glyphicon glyphicon-bullhorn li_icon"></span>
                            </div>
                        </a>
                    </li>
                    <li id="Li3" runat="server" visible="False">
                        <a href="#">
                            <div class="col-xs-10">
                                <span>Moje zgłoszenia</span>
                            </div>
                            <div class="col-xs-2" style="border-left: 1px solid #202020;">
                                <span class="glyphicon glyphicon-bullhorn li_icon"></span>
                            </div>
                        </a>
                    </li>
                    <li id="Li4" runat="server" visible="False">
                        <a href="#">
                            <div class="col-xs-10">
                                <span>Moje zgłoszenia</span>
                            </div>
                            <div class="col-xs-2" style="border-left: 1px solid #202020;">
                                <span class="glyphicon glyphicon-bullhorn li_icon"></span>
                            </div>
                        </a>
                    </li>
                    <li id="Li5" runat="server" visible="False">
                        <a href="#">
                            <div class="col-xs-10">
                                <span>Moje zgłoszenia</span>
                            </div>
                            <div class="col-xs-2" style="border-left: 1px solid #202020;">
                                <span class="glyphicon glyphicon-bullhorn li_icon"></span>
                            </div>
                        </a>
                    </li>
                    <li id="Li6" runat="server" visible="False">
                        <a href="#">
                            <div class="col-xs-10">
                                <span>Moje zgłoszenia</span>
                            </div>
                            <div class="col-xs-2" style="border-left: 1px solid #202020;">
                                <span class="glyphicon glyphicon-bullhorn li_icon"></span>
                            </div>
                        </a>
                    </li>
                    <li id="Li7" runat="server" visible="False">
                        <a href="#">
                            <div class="col-xs-10">
                                <span>Moje zgłoszenia</span>
                            </div>
                            <div class="col-xs-2" style="border-left: 1px solid #202020;">
                                <span class="glyphicon glyphicon-bullhorn li_icon"></span>
                            </div>
                        </a>
                    </li>
                </ul>
            </td>
            <td id="MP_content_col">
                <div id="MP_navbar">
                    <uc:min_menu ID="Min_menu1" runat="server" />
                    <div id="MP_nav_user">
                        <span class="glyphicon glyphicon-user"></span>
                        <div id="MP_login_as">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div id="person_details">
                                        <asp:Label ID="Label1" runat="server" Text="wylogowany"></asp:Label>
                                        <asp:Button ID="logout_exit" runat="server" Text="Wyloguj" CssClass="logout_btn btn btn-default"
                                            OnClick="logout_Click" />
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <img id="avatar" src="http://qasioun.net/images/userAvatar.png" class="img-circle"
                                        alt="" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="MP_add_problem">
                        <a href="#"><span class="glyphicon glyphicon-plus" data-toggle="tooltip" data-placement="left"
                            title="Dodaj zgłoszenie"></span></a>
                    </div>
                </div>
                <div id="MP_content">
                </div>
                <div id="MP_footer">
                </div>
            </td>
        </tr>
    </table>

    <script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>

    <asp:HiddenField ID="HiddenField1" runat="server" Value="0" />

    <script src="js/bootstrap.min.js"></script>

    <script>
        $(function() {
            $('[data-toggle="tooltip"]').tooltip()
        })
    </script>

</asp:Content>
