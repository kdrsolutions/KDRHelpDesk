<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="DodajZgloszenie.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content_container">
        <div class="row">
            <div class="col-lg-offset-2 col-lg-8">
                <form class="form-horizontal">
                <div id="send_message" runat="server" class="alert alert-danger" visible="false"
                    role="alert">
                    Zgłoszenie zostało przesłane do realizacji
                </div>
                <fieldset>
                    <!-- Form Name -->
                    <legend>Tworzenie zgłoszenia</legend>
                    <!-- Select Basic -->
                    <div class="form-group" style="text-align: right;">
                        <label class="col-md-2 control-label" style="padding-top: 5px;" for="selectbasic">
                            Odbiorca:</label>
                        <div class="col-md-4">
                            <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" DataSourceID="SqlDataSource3"
                                DataTextField="Specjalizacja" DataValueField="id">
                            </asp:DropDownList>
                        </div>
                    </div>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:HelpDeskConnectionString %>"
                        SelectCommand="SELECT * FROM Specjalizacje;"></asp:SqlDataSource><br />
                    <br />
                    <!-- Text input-->
                    <div class="form-group" style="text-align: right;">
                        <label class="col-md-2 control-label" style="padding-top: 5px;" for="textinput">
                            Tytuł:</label>
                        <div class="col-md-10">
                            <input id="nazwatematu" runat="server" name="textinput" type="text" placeholder="Nazwa problemu"
                                class="form-control input-md" required="" maxlength="50">
                        </div>
                    </div>
                    <br />
                    <br />
                    <!-- Textarea -->
                    <div class="form-group">
                        <div class="col-md-12">
                            <textarea class="form-control" runat="server" id="Opis" placeholder="Tutaj opisz nam swój problem..."
                                name="Opis" style="width: 100%; height: 300px;" required=""></textarea>
                        </div>
                    </div>
                    <br />
                    <!-- Button -->
                    <div class="col-md-12" style="margin-top: 10px; text-align: right;">
                        <asp:Button ID="sender" runat="server" Text="Prześlij zgłoszenie" OnClick="sender_Click"
                            class="btn btn-default" />
                    </div>
                </fieldset>
                </form>
            </div>
        </div>
    </div>
</asp:Content>
