<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login_page.aspx.cs" Inherits="login_page" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="Stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <link href="css/login_styles.css" rel="stylesheet" type="text/css" />
    <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <div id="wrong_password" runat="server" class="alert alert-danger" visible="false"
            role="alert">
            Podano nieprawidłowe dane logowania, spróbuj ponownie.
        </div>
        <div id="login_frame">
            <h3>
                <b>Help</b>Desk</h3>
            <div id="login_lab_zone">
                <div class="form-group">
                    <label for="login_lab" class="col-sm-2 col-xs-2 control-label">
                        ID:
                    </label>
                    <div class="col-sm-10 col-xs-10">
                        <asp:TextBox ID="login_lab" runat="server" CssClass="form-control" placeholder="Nazwa użytkownika"
                            MaxLength="20" /></asp:TextBox>
                        <asp:RequiredFieldValidator ID="valid1" runat="server" ControlToValidate="login_lab"
                            Display="none" ErrorMessage="*" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="password_lab" class="col-sm-2 col-xs-2 control-label">
                        Hasło:
                    </label>
                    <div class="col-sm-10 col-xs-10">
                        <asp:TextBox ID="password_lab" runat="server" CssClass="form-control" placeholder="Twoje hasło"
                            TextMode="Password" MaxLength="30"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="valid2" runat="server" ControlToValidate="password_lab"
                            Display="none" ErrorMessage="*" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-10 col-xs-10 zapn_hasl">
                        <a href="#"><span>Zapomniałem hasła</span></a>
                    </div>
                    <div class="col-sm-2 col-xs-2">
                        <asp:Button ID="signin" runat="server" Text="Zaloguj" CssClass="btn btn-default"
                            OnClick="signin_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>

    <script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>

    <script src="js/bootstrap.min.js"></script>

</body>
</html>
