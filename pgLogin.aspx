<%@ Page Title="" Language="C#" MasterPageFile="~/ProgramaholicsAnonymous.master" AutoEventWireup="true" CodeFile="pgLogin.aspx.cs" Inherits="pgLogin" %>
<%@ MasterType VirtualPath ="~/ProgramaholicsAnonymous.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Login"></asp:Label>
    <br />
    <br />
    <asp:Label ID="lblUserID" runat="server" Text="User ID:" Width="70px" style="text-align:right"></asp:Label>
    &nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtUserID" runat="server" Width="100px"></asp:TextBox>
    <br />
    <asp:Label ID="lblPassword" runat="server" Text="Password:" Width="70px" style="text-align:right"></asp:Label>
    &nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="100px"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" Width="80px" />
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

