<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="IncidentDisplay.aspx.cs" Inherits="IncidentDisplay" %>

<asp:Content ID="IncidentDisplayBodyContent" ContentPlaceHolderID="bodyPlaceHolder" Runat="Server">
    <h1> Incident Maintenance</h1>
    Select a Customer to view related incidents:<br />
    <br />
    <asp:DropDownList ID="ddlCustomers" runat="server" AutoPostBack="True" DataSourceID="sdsBallGamesDataSource" DataTextField="Name" DataValueField="CustomerID">
    </asp:DropDownList>
    <asp:SqlDataSource ID="sdsBallGamesDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT [CustomerID], [Name] FROM [Customer] ORDER BY [CustomerID]"></asp:SqlDataSource>
    
    <br />
    <asp:DataList ID="dlIncidents" runat="server" CellPadding="4" DataSourceID="sdsIncidents" ForeColor="#333333">
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
    </asp:DataList>
    <asp:SqlDataSource ID="sdsIncidents" runat="server"></asp:SqlDataSource>
    
</asp:Content>

