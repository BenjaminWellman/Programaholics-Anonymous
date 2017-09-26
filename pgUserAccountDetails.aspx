<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/ProgramaholicsAnonymous.master" CodeFile="pgUserAccountDetails.aspx.cs" Inherits="pgUserAccountDetails" %>
<%@ MasterType VirtualPath ="~/ProgramaholicsAnonymous.master" %>
<%@ PreviousPageType VirtualPath="~/pgLogin.aspx" %> 


        <asp:Content ID="ContentArea1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
            <asp:Label ID="Label7" runat="server" Text="Account Details" Font-Bold="True"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblCustID" runat="server" Text="User ID:" Font-Italic="True"></asp:Label>
            &nbsp;
            <asp:Label ID="customerID" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnFindUser" runat="server" OnClick="btnFindUser_Click" Text="Find" Width="80px" />
            &nbsp;&nbsp;&nbsp;


            <asp:Button ID="btnClearForm" runat="server" Text="Clear" OnClick="btnClearForm_Click" PostBackUrl="~/pgUserAccountDetails.aspx" Width="80px" />
            &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnSubmit" runat="server" PostBackUrl="~/pgUserAccountConfirmation.aspx" Text="Submit" Width="80px" />   
            <br />
            <br />

    
        <asp:Label ID="Label1" runat="server" Text="User Name:" Width="120px" style="text-align:right"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtUserName" runat="server" Width="100px"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="City:" Width="120px" style="text-align:right"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtCity" runat="server" Width="100px"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="State:" Width="120px" style="text-align:right"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtState" runat="server" Width="100px"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Best Language:" Width="120px" style="text-align:right"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtFavoriteLanguage" runat="server" Width="100px"></asp:TextBox>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Worst Language:" Width="120px" style="text-align:right"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtLeastFavoriteLanguage" runat="server" Width="100px"></asp:TextBox>
        <br />
        <asp:Label ID="Label6" runat="server" Text="Program Date:" Width="120px" style="text-align:right"></asp:Label>
            &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtLastProgramDate" runat="server" Width="100px"></asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;
            <br />
        <br />
            <asp:Button ID="btnUpdateUser" runat="server" OnClick="btnUpdateUser_Click" Text="Update" Width="80px" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnAddUser" runat="server" Text="Add" Width="80px" OnClick="btnAddUser_Click" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnDeleteUser" runat="server" OnClick="btnDeleteUser_Click" Text="Delete" Width="80px" />
            &nbsp;&nbsp;
            <br />
            </asp:Content>



        <asp:Content ID="ContentArea2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">


            <asp:Label ID="Label8" runat="server" Text="Application Details" Font-Bold="True"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblGVDataBase" runat="server" Text="Database: " Font-Italic="True"></asp:Label>
            <asp:GridView ID="gvUserList" runat="server" Font-Size="9" style="background-color:white">
            </asp:GridView>
            <br />
            <asp:Label ID="lblGVXML" runat="server" Text="XML File:" Font-Italic="True"></asp:Label>
            <asp:GridView ID="gvXML" runat="server" Font-Size="9" style="background-color:white">
            </asp:GridView>
            &nbsp;
            <br />
        <asp:Button ID="btnUpdateXML" runat="server" OnClick="btnUpdateXML_Click" Text="Export Stats" Width="120px" />
        </asp:Content>
