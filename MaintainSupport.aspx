<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="MaintainSupport.aspx.cs" Inherits="MaintainSupport" %>

<asp:Content ID="headerContent" ContentPlaceHolderID="headPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="bodyContent" ContentPlaceHolderID="bodyPlaceHolder" Runat="Server">
    <h1>Support Maintenance</h1>
    Select a Support Staff Member: <br/> <br/>
    <asp:DropDownList ID="ddlSupportStaff" runat="server" DataSourceID="sdsSupportStaff" DataTextField="Name" DataValueField="SupportID" AutoPostBack="True"></asp:DropDownList>
    <asp:SqlDataSource ID="sdsSupportStaff" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT [Name], [SupportID] FROM [Support] ORDER BY [Name]"></asp:SqlDataSource>
    <br />
    <br />
    Support Staff Details:<br />
    <asp:FormView ID="fvSupportStaff" runat="server" CellPadding="4" DataKeyNames="SupportID" DataSourceID="sdsSupportStaffDetails" ForeColor="#333333">
        <EditItemTemplate>
            SupportID:
            <asp:Label ID="SupportIDLabel1" runat="server" Text='<%# Eval("SupportID") %>' />
            <br />
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            Phone:
            <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            Phone:
            <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            SupportID:
            <asp:Label ID="SupportIDLabel" runat="server" Text='<%# Eval("SupportID") %>' />
            <br />
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            Email:
            <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            Phone:
            <asp:Label ID="PhoneLabel" runat="server" Text='<%# Bind("Phone") %>' />
            <br />
        </ItemTemplate>
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:FormView>
    <asp:SqlDataSource ID="sdsSupportStaffDetails" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Support] WHERE ([SupportID] = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlSupportStaff" DefaultValue="" Name="SupportID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

