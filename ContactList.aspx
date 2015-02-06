<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactList.aspx.cs" Inherits="ContactList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact List</title>
</head>
<body>
    <header>
        <h1>Digital Upscale Manager for Ballgames</h1>
        <h2>Managing Ballgames with Technology</h2>
        <p><br/><br/></p>
    </header>
    
    <section>
        <form id="form1" runat="server">
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
    
        </form>

    </section>
  
</body>
</html>
