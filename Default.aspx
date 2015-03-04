<%@ Page Title="BallGames Homepage" MasterPageFile="Site.master" Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<asp:Content ID="homeContent" ContentPlaceHolderID="bodyPlaceHolder" runat="server">
    <h1>Welcome to our homepage!</h1>
    <p>Click the buttons below to navigate through the site.</p>
    <asp:Button ID="btnCustomerList" runat="server" Text="Customer List" OnClick="btnCustomerList_Click" />
    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnCustomerFeedback" runat="server" Text="Customer Feedback" OnClick="btnCustomerFeedback_Click" />
</asp:Content> 
