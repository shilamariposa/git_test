<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            
        <div class="container">

            <div class="row">
                <div class="span6 offset3">
                    <asp:Label ID="Label_besked" runat="server" Text=""></asp:Label>
                    <fieldset>
                        <legend>Login</legend>
                        <div class="control-group">
                            <label class="control-label">Brugernavn:</label>
                            <div class="controls">
                                <asp:TextBox ID="TextBox_navn" runat="server" placeholder="Skriv dit brugernavn her" required="Brugernavn mangler"></asp:TextBox>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Password</label>
                            <div class="controls">
                                <asp:TextBox ID="TextBox_pass" runat="server" TextMode="Password" placeholder="Skriv dit password her" required="Password mangler!"></asp:TextBox>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label"></label>
                            <div class="controls">
                                <asp:Button CssClass="btn" ID="Button_login" runat="server" Text="Login"
                                    />;
                                
                            </div>
                        </div>
                    </fieldset>
                   
                </div>
            </div>
        </div>
        <script src="bootstrap/js/bootstrap.min.js"></script>
</asp:Content>

