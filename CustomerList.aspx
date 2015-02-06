<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomerList.aspx.cs" Inherits="CustomerList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer List</title>
</head>
<body>
    <header>
        <h1>Digital Upscale Manager for Ballgames</h1>
        <h2>Managing Ballgames with Technology</h2>
        <p><br/><br/></p>
    </header>
    <section>
        <form id="form1" runat="server">       
            Select a Customer:<br />
            <asp:DropDownList ID="ddlCustomer" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name" AutoPostBack="True">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
            <br />       
            <br />      
            <asp:Table ID="Table1" runat="server">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server"> CustomerID: </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="lblId" runat="server" Text="[lblId]"></asp:Label> 
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server"> Name: </asp:TableCell>
                    <asp:TableCell runat="server">
                         <asp:Label ID="lblName" runat="server" Text="[lblName]"></asp:Label> 
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server"> Address: </asp:TableCell>
                    <asp:TableCell runat="server">
                         <asp:Label ID="lblAddress" runat="server" Text="[lblAddress]"></asp:Label> 
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server"> City: </asp:TableCell>
                    <asp:TableCell runat="server">
                         <asp:Label ID="lblCity" runat="server" Text="[lblCity]"></asp:Label> 
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server"> State: </asp:TableCell>
                    <asp:TableCell runat="server">
                         <asp:Label ID="lblState" runat="server" Text="[lblState]"></asp:Label> 
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server"> Zip Code: </asp:TableCell>
                    <asp:TableCell runat="server">
                         <asp:Label ID="lblZipCode" runat="server" Text="[lblZipCode]"></asp:Label> 
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server"> Phone: </asp:TableCell>
                    <asp:TableCell runat="server">
                         <asp:Label ID="lblPhone" runat="server" Text="[lblPhone]"></asp:Label> 
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server"> Email: </asp:TableCell>
                    <asp:TableCell runat="server">
                         <asp:Label ID="lblEmail" runat="server" Text="[lblEmail]"></asp:Label> 
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <br />
            <asp:Button ID="btnAddContact" runat="server" OnClick="btnAddContact_Click" Text="Add to Contacts" />
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnViewContacts" runat="server" Text="View Contact List" OnClick="btnViewContacts_Click" />
        </form>
    </section> 
</body>
</html>
