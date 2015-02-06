<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomerFeedback.aspx.cs" Inherits="CustomerFeedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer Feedback</title>
    <link href="Styles/Styles.css" rel="stylesheet" />
</head>
<body>
    <header>
        <h1>Digital Upscale Manager for Ballgames</h1>
        <h2>Managing Ballgames with Technology</h2>
    </header>
    <section>
        <form id="form1" runat="server" defaultfocus="txtCustomerId">           
            <asp:Label ID="lblCustomerId" runat="server" Text="Customer ID:"></asp:Label>
            <br />
            <asp:TextBox ID="txtCustomerId" runat="server" MaxLength="5" TextMode="Number" Width="71px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnGetFeedback" runat="server" OnClick="btnGetFeedback_Click" Text="Get Feedback" ValidationGroup="vlgCustomerId" />
            <br />
            <asp:RequiredFieldValidator ID="rfvCustomerId" runat="server" ControlToValidate="txtCustomerId" ErrorMessage="Please enter a valid Customer ID." ForeColor="Red" ValidationGroup="vlgCustomerId"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;
            <br />
            <asp:CompareValidator ID="cpvCustomerId" runat="server" ControlToValidate="txtCustomerId" ErrorMessage="Customer ID must be an integer." ForeColor="Red" Operator="DataTypeCheck" Type="Integer" ValidationGroup="vlgCustomerId"></asp:CompareValidator>
            <br />
            <asp:Label ID="lblFeedback" runat="server" Text="Feedback:"></asp:Label>
            <br />
            <asp:ListBox ID="lstFeedback" runat="server" Height="116px" Width="553px"></asp:ListBox>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FeedbackConnectionString %>" ProviderName="<%$ ConnectionStrings:FeedbackConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Feedback]"></asp:SqlDataSource>
            <br />
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
            <br />
            <h2>Leave feedback:</h2>
            Service time: <asp:RadioButtonList ID="rblServiceTime" runat="server" Enabled="False">
                <asp:ListItem Value="1">Satisfied</asp:ListItem>
                <asp:ListItem Value="2">Neither Satisfied Nor Dissatisfied</asp:ListItem>
                <asp:ListItem Value="3">Dissatisfied</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            Technical efficiency:<asp:RadioButtonList ID="rblTechnicalEfficiency" runat="server" Enabled="False">
                <asp:ListItem Value="1">Satisfied</asp:ListItem>
                <asp:ListItem Value="2">Neither Satisfied Nor Dissatisfied</asp:ListItem>
                <asp:ListItem Value="3">Dissatisfied</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            Problem resolution:<asp:RadioButtonList ID="rblProblemResolution" runat="server" Enabled="False">
                <asp:ListItem Value="1">Satisfied</asp:ListItem>
                <asp:ListItem Value="2">Neither Satisfied Nor Dissatisfied</asp:ListItem>
                <asp:ListItem Value="3">Dissatisfied</asp:ListItem>
            </asp:RadioButtonList>            
            <br />
            <asp:Label ID="lblComments" runat="server" Text="Additional Comments:"></asp:Label>
            <br />
            <asp:TextBox ID="txtComments" runat="server" Enabled="False" Height="88px" TextMode="MultiLine" Width="302px"></asp:TextBox>
            <br />
            <br />
            <asp:CheckBox ID="chkContact" runat="server" Enabled="False" Text="Contact me about this feedback" />
            <br />
            <br />
            <asp:Label ID="lblMethod" runat="server" Text="Select a method of contact:"></asp:Label>
            <asp:RadioButtonList ID="rblMethod" runat="server" Enabled="False">
                <asp:ListItem>Email</asp:ListItem>
                <asp:ListItem>Phone</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Button ID="btnSubmit" runat="server" Enabled="False" OnClick="btnSubmit_Click" Text="Submit Feedback" ValidationGroup="vlgSubmit" Width="164px" />
            &nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="rfvFeedbackList" runat="server" ControlToValidate="lstFeedback" ErrorMessage="Please select a feedback item." ForeColor="Red" ValidationGroup="vlgSubmit"></asp:RequiredFieldValidator>           
        </form>
    </section>   
</body>
</html>
