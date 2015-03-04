<%@ Page Title="Contact List" MasterPageFile="Site.master" Language="C#" AutoEventWireup="true" CodeFile="ContactList.aspx.cs" Inherits="ContactList" %>

<asp:Content ID="contactListContent" ContentPlaceHolderID="bodyPlaceHolder" runat="server">
    <asp:Label ID="lblContacts" runat="server" Text="Contacts:"></asp:Label>
    <br />
    <asp:ListBox ID="lstContacts" runat="server" Height="164px" Width="404px">
    </asp:ListBox>
    <br />
    <br />
    <asp:Button ID="btnSelectAdditionalCustomer" runat="server" Text="Select Additional Customers" OnClick="btnSelectAdditionalCustomer_Click" />
    &nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblMessage" runat="server"></asp:Label>
    <br />
    <asp:Button ID="btnRemoveCustomer" runat="server" Text="Remove Customer" OnClick="btnRemoveCustomer_Click" />
    <asp:Button ID="btnClear" runat="server" Text="Clear List" OnClick="btnClear_Click" Width="89px" />
    <br />
</asp:Content>
