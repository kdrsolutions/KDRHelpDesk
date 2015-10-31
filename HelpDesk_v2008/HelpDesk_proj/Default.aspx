<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default2" %>

<%@ Register Src="c_menu.ascx" TagName="c_menu" TagPrefix="HelpDesk" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="css/page_style.css" />
</head>
<body>
    <form id="form1" runat="server">
    <HelpDesk:c_menu ID="c_menu" runat="server" />
    <div class="container-fluid">
        <div class="row">
            <!-- Tutaj pisz nowy kod -->
            
        </div>
    </div>
    <div class="modal fade" id="loginModal" tabindex="-1" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        <span>&times;</span></button>
                    <h4 class="modal-title">
                        Logowanie</h4>
                </div>
                <div class="modal-body">
                    <p>
                        One fine body&hellip;</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">
                        Anuluj</button>
                    <button type="button" class="btn btn-primary">
                        Zatwierdź</button>
                </div>
            </div>
        </div>
    </div>
    </form>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

    <script src="js/bootstrap.min.js"></script>

</body>
</html>
