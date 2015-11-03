<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/MP_styles.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid">
        <div class="row" id="MP_main_row">
            <div class="col-lg-3" id="MP_menu">
            </div>
            <div class="col-lg-9" id="MP_cont_col">
                <div class="row">
                    <div id="MP_navbar">
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

    <script src="js/bootstrap.min.js"></script>

</asp:Content>
