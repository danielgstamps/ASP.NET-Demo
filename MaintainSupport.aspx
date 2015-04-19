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
    <br />
    <asp:FormView ID="fvSupportStaff" runat="server" CellPadding="4" DataKeyNames="SupportID" DataSourceID="sdsSupportStaffDetails" ForeColor="#333333" OnItemDeleted="fvSupportStaff_ItemDeleted" OnItemInserted="fvSupportStaff_ItemInserted" OnItemUpdated="fvSupportStaff_ItemUpdated">
        <EditItemTemplate>
            <table>
                <tr>
                    <td>ID:</td>
                    <td><asp:Label ID="SupportIDLabel1" runat="server" Text='<%# Eval("SupportID") %>' /></td>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td>
                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                        <asp:RequiredFieldValidator ID="rfvEditName" runat="server" ControlToValidate="NameTextBox" ErrorMessage="Name is a required field." Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td>
                        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                         <asp:RequiredFieldValidator ID="rfvEditEmail" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Email is a required field." Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Phone</td>
                    <td>
                        <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                         <asp:RequiredFieldValidator ID="rfvEditPhone" runat="server" ControlToValidate="PhoneTextBox" ErrorMessage="Phone Number is a required field." Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" /> &nbsp;
                        <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </td>
                </tr>
            </table>
        </EditItemTemplate>
        <EditRowStyle BackColor="#EFF3FB" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            <table>
                <tr>
                    <td>Name:</td>
                    <td>
                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                        <asp:RequiredFieldValidator ID="rfvInsertName" runat="server" ControlToValidate="NameTextBox" ErrorMessage="Name is a required field." Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td>
                        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                        <asp:RequiredFieldValidator ID="rfvInsertEmail" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Email is a required field." Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Phone:</td>
                    <td>
                        <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                        <asp:RequiredFieldValidator ID="rfvInsertPhone" runat="server" ControlToValidate="PhoneTextBox" ErrorMessage="Phone Number is a required field." Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" /> &nbsp;
                        <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </td>
                </tr>
            </table>       
        </InsertItemTemplate>
        <ItemTemplate>
            <table>
                <tr>
                    <td>ID:</td>
                    <td><asp:Label ID="SupportIDLabel" runat="server" Text='<%# Eval("SupportID") %>' /></td>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td><asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' /></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' /></td>
                </tr>
                <tr>
                    <td>Phone:</td>
                    <td><asp:Label ID="PhoneLabel" runat="server" Text='<%# Bind("Phone") %>' /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:LinkButton ID="btnEdit" Text="Edit" CommandName="Edit" runat="server"/> &nbsp;
                        <asp:LinkButton ID="btnNew" Text="New" CommandName="New" runat="server"/> &nbsp;
                        <asp:LinkButton ID="btnDelete" Text="Delete" CommandName="Delete" runat="server"/>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:FormView>
    <asp:SqlDataSource ID="sdsSupportStaffDetails" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" 
        SelectCommand="SELECT * FROM [Support] WHERE ([SupportID] = ?)" 
        DeleteCommand="DELETE FROM [Support] WHERE [SupportID] = ?" 
        InsertCommand="INSERT INTO [Support] ([Name], [Email], [Phone]) VALUES (?, ?, ?)" 
        UpdateCommand="UPDATE [Support] SET [Name] = ?, [Email] = ?, [Phone] = ? WHERE [SupportID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="SupportID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlSupportStaff" Name="SupportID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="SupportID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Label ID="lblFeedback" runat="server"></asp:Label>
    <br />
    <asp:ValidationSummary ID="vsSummary" runat="server" ForeColor="Red" HeaderText="Please correct the following errors:" />
</asp:Content>

