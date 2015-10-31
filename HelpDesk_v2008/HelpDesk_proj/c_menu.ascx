<%@  Control Language="C#" AutoEventWireup="true" CodeFile="c_menu.ascx.cs" Inherits="c_menu" %>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">
                <button type="button" id="small_menu" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#nav_coll" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!--<img alt="Brand" src="images/.." width="20">-->
            </a>
        </div>
        <div class="collapse navbar-collapse" id="nav_coll">
            <ul class="nav navbar-nav">
                <li><a href="CentrumZgloszen.aspx">Centrum zgłoszeń</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">Panel sterowania <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Maski uprawnień</a></li>
                        <li><a href="#">Przegląd działów</a></li>
                        <li><a href="users_table.aspx">Baza użytkowników</a></li>
                        <li><a href="#">Konfiguracja systemu</a></li>
                        <li><a href="#">Raporty i zestawienia</a></li>
                    </ul>
                </li>
            </ul>
            <div class="btn-group navbar-text navbar-right" role="group">
                <button type="button" class="btn btn-default" data-toggle="modal" data-target="#loginModal" id="loginButton">Zaloguj</button>
                <button type="button" class="btn btn-default" data-toggle="modal" data-target="#loginModal" id="registerButton">Rejestracja</button>
            </div>
            <!--<p class="navbar-text navbar-right">Zalogowany jako <a href="#">Jakub Paprocki</a> - <a href="#" class="btn_logout">Wyloguj.</a></p>-->
        </div>
    </div>
</nav>
