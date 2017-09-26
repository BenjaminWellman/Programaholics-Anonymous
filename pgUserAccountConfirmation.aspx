<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/ProgramaholicsAnonymous.master" CodeFile="pgUserAccountConfirmation.aspx.cs" Inherits="pgUserAccountConfirmation" %>
<%@ MasterType VirtualPath ="~/ProgramaholicsAnonymous.master" %>
<%@ PreviousPageType VirtualPath="~/pgUserAccountDetails.aspx" %>


        <asp:Content ID="ContentArea1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
            <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Confirmation"></asp:Label>
            <br />
            <br />
    
        <asp:Label ID="Label1" runat="server" Text="User Name:" Width="120px" style="text-align:right"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblUserName" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" Text="City:" Width="120px" style="text-align:right"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblCity" runat="server"></asp:Label>
        <br />

            <asp:Label ID="Label3" runat="server" Text="State:" Width="120px" style="text-align:right"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblState" runat="server"></asp:Label>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Best Language:" Width="120px" style="text-align:right"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblFavoriteLanguage" runat="server"></asp:Label>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Worst Language:" Width="120px" style="text-align:right"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblLeastFavoriteLanguage" runat="server"></asp:Label>
            <br />
            <asp:Label ID="Label6" runat="server" Text="Program Date:" Width="120px" style="text-align:right"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblLastProgramDate" runat="server"></asp:Label>
            <br />
            <br />

        <asp:Button ID="btnConfirm" runat="server" Text="Confirm" OnClick="btnConfirm_Click" Width="80px" />
    
            <br />

        </asp:Content>



        <asp:Content ID="ContentArea2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">


        </asp:Content>