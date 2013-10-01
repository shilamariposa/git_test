<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="brugere.aspx.cs" Inherits="brugere" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionStringbrugertabel %>' SelectCommand="SELECT [Id], [navn], [email], [telefon], [password] FROM [Table]"></asp:SqlDataSource>

    <asp:Repeater ID="Repeater1" DataSourceID="SqlDataSource1" runat="server">

        <ItemTemplate>

            <div class="bruger">
            <div class="Text">

                <%# Eval("Id") %>
                <%# Eval("Navn") %>
                <%# Eval("Email") %>
                <%# Eval("Telefon") %>
                <%# Eval("Password") %>

                <br />
               
            </div>
            </div>

        </ItemTemplate>

    </asp:Repeater>
 <a href="Default.aspx">tilbage</a>
</asp:Content>

