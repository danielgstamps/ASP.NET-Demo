<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BallGames Homepage</title>
</head>
<body>
    <header>
        <h1>Digital Upscale Manager for Ballgames</h1>
        <h2>Managing Ballgames with Technology</h2>
        <p><br/></p>
    </header>
    <section>
        <form id="form1" runat="server">
            <h1>Welcome to our homepage!</h1>
            <p>Click the buttons below to navigate through the site.</p>
            <asp:Button ID="btnCustomerList" runat="server" Text="Customer List" OnClick="btnCustomerList_Click" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnCustomerFeedback" runat="server" Text="Customer Feedback" OnClick="btnCustomerFeedback_Click" />
        </form>
    </section>
</body>
</html>
