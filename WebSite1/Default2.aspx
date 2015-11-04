<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<%@ Register TagPrefix="uc" TagName="min_menu" Src="~/Controls/min_menu.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/MP_styles.css" rel="stylesheet" type="text/css" />
    <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid">
        <div class="row" id="MP_main_row">
            <div class="col-lg-3 col-md-3 col-sm-3 hidden-xs" id="MP_menu">
                <div id="MP_logo">
                    <span><b>Help</b>Desk</span>
                </div>
                <ul>
                    <li id="mo1" runat="server"><a href="#"><span>user button</span></a></li>
                    <li id="mo2" runat="server"><a href="#"><span>user button</span></a></li>
                    <li id="mo3" runat="server"><a href="#"><span>user button</span></a></li>
                    <li id="mo4" runat="server"><a href="#"><span>spec button</span></a></li>
                    <li id="mo5" runat="server"><a href="#"><span>spec button</span></a></li>
                    <li id="mo6" runat="server"><a href="#"><span>admin button</span></a></li>
                    <li id="mo7" runat="server"><a href="#"><span>admin button</span></a></li>
                </ul>
            </div>
            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12" id="MP_cont_col">
                <div class="row">
                    <div id="MP_navbar">
                        <uc:min_menu runat="server"/>
                        <div id="MP_login_as"><span>Zalogowany jako 
                            <asp:Label ID="Label1" runat="server" Text="Jan Kowalski"></asp:Label></span></div>
                    </div>
                    <div id="MP_content">
                    </div>
                    <div id="MP_footer">
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>

    <asp:HiddenField ID="HiddenField1" runat="server" value="0" />
    <script src="js/bootstrap.min.js"></script>

</asp:Content>
