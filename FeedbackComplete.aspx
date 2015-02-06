<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FeedbackComplete.aspx.cs" Inherits="FeedbackComplete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Feedback Confirmation</title>
</head>
<body>
    <header>
        <h1>Digital Upscale Manager for Ballgames</h1>
        <h2>Managing Ballgames with Technology</h2>
        <p><br/></p>
    </header>
    <section>
        <form id="form1" runat="server">
         Thank you, your feedback has been received!<br />
            <asp:Label ID="lblContact" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="Back to Feedback Submission" /> 
        </form>  
    </section>   
</body>
</html>
