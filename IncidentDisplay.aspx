<%@ Page Title="Incident Display" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="IncidentDisplay.aspx.cs" Inherits="IncidentDisplay" %>

<asp:Content ID="IncidentDisplayBodyContent" ContentPlaceHolderID="bodyPlaceHolder" Runat="Server">
    <h1> Incident Maintenance</h1>
    Select a Customer to view related incidents:<br />
    <br />
    <asp:DropDownList ID="ddlCustomers" runat="server" AutoPostBack="True" DataSourceID="sdsBallGamesDataSource" DataTextField="Name" DataValueField="CustomerID">
    </asp:DropDownList>
    <asp:SqlDataSource ID="sdsBallGamesDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT [CustomerID], [Name] FROM [Customer] ORDER BY [Name]"></asp:SqlDataSource>
    
    <br /><br/>
    <asp:DataList ID="dlIncidents" runat="server" DataSourceID="sdsIncidents" BorderColor="Blue" BorderWidth="2px" CellPadding="5" GridLines="Both" Width="621px">
        <HeaderTemplate>
            <table>
                <tr>
                    <td style="width:30%">Software/Incident</td>
                    <td style="width:20%">Technician Name</td>
                    <td style="width:15%">Date Opened</td>
                    <td style="width:15%">Date Closed</td>
                </tr>
            </table>
        </HeaderTemplate>
        <ItemTemplate>
            <table>
                <tr>
                    <td style="width:30%"><asp:Label ID="SoftwareNameLabel" runat="server" Text='<%# Eval("Name") %>' /></td>
                    <td style="width:20%"><asp:Label ID="TechnicianNameLabel" runat="server" Text='<%# Eval("Expr1") %>' /></td>
                    <td style="width:15%"><asp:Label ID="DateOpenedLabel" runat="server" Text='<%# Eval("DateOpened") %>' /></td>
                    <td style="width:15%"><asp:Label ID="DateClosedLabel" runat="server" Text='<%# Eval("DateClosed") %>' /></td>
                </tr>
                <tr>
                    <td colspan="4"><asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' /></td>
                </tr>
            </table>          
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="sdsIncidents" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT Feedback.SoftwareID, Feedback.SupportID, Feedback.DateOpened, Feedback.DateClosed, Feedback.Description, Software.Name, Support.Name AS Expr1 FROM ((Feedback INNER JOIN Software ON Feedback.SoftwareID = Software.SoftwareID) INNER JOIN Support ON Feedback.SupportID = Support.SupportID) WHERE (Feedback.CustomerID = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlCustomers" Name="CustomerID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    
</asp:Content>

