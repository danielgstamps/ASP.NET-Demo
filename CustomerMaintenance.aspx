<%@ Page Title="Customer Maintenance" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CustomerMaintenance.aspx.cs" Inherits="CustomerMaintenance" %>

<asp:Content ID="CustomerMaintenanceContent" ContentPlaceHolderID="bodyPlaceHolder" Runat="Server">
    <h1>Customer Maintenance</h1>
    Select a Customer:
    <br/>
    <asp:GridView ID="gvCustomers" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CustomerID" DataSourceID="sdsCustomers" ForeColor="#333333" GridLines="None" PageSize="6" OnSelectedIndexChanged="gvCustomers_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:CommandField ShowSelectButton="True" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <br />
    Customer Details:
    <br/>
    <asp:DetailsView ID="dvCustomers" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="CustomerID" DataSourceID="sdsCustomerDetails" ForeColor="#333333" GridLines="None" Height="50px" Width="125px" OnItemInserted="dvCustomers_ItemInserted" OnItemDeleted="dvCustomers_ItemDeleted" OnItemUpdated="dvCustomers_ItemUpdated">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
        <EditRowStyle BackColor="#2461BF" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" InsertVisible="False" ReadOnly="True" SortExpression="CustomerID" />
            <asp:TemplateField HeaderText="Name" SortExpression="Name">
                <EditItemTemplate>
                    <asp:TextBox ID="txtEditName" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditName" runat="server" ControlToValidate="txtEditName" ErrorMessage="Name is a required field." ForeColor="Red">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txtInsertName" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvInsertName" runat="server" ControlToValidate="txtInsertName" ErrorMessage="Name is a required field." ForeColor="Red">*</asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Address" SortExpression="Address">
                <EditItemTemplate>
                    <asp:TextBox ID="txtEditAddress" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditAddress" runat="server" ControlToValidate="txtEditAddress" ErrorMessage="Address is a required field." ForeColor="Red">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txtInsertAddress" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvInsertAddress" runat="server" ControlToValidate="txtInsertAddress" ErrorMessage="Address is a required field." ForeColor="Red">*</asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="City" SortExpression="City">
                <EditItemTemplate>
                    <asp:TextBox ID="txtEditCity" runat="server" Text='<%# Bind("City") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditCity" runat="server" ControlToValidate="txtEditCity" ErrorMessage="City is a required field." ForeColor="Red">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txtInsertCity" runat="server" Text='<%# Bind("City") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvInsertCity" runat="server" ControlToValidate="txtInsertCity" ErrorMessage="City is a required field." ForeColor="Red">*</asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("City") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="State" SortExpression="State">
                <EditItemTemplate>
                    <asp:TextBox ID="txtEditState" runat="server" Text='<%# Bind("State") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditState" runat="server" ControlToValidate="txtEditState" ErrorMessage="State is a required field." ForeColor="Red">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txtInsertState" runat="server" Text='<%# Bind("State") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvInsertState" runat="server" ControlToValidate="txtInsertState" ErrorMessage="State is a required field." ForeColor="Red">*</asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("State") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ZipCode" SortExpression="ZipCode">
                <EditItemTemplate>
                    <asp:TextBox ID="txtEditZipCode" runat="server" Text='<%# Bind("ZipCode") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditZipCode" runat="server" ControlToValidate="txtEditZipCode" ErrorMessage="ZipCode is a required field." ForeColor="Red">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txtInsertZipCode" runat="server" Text='<%# Bind("ZipCode") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvInsertZipCode" runat="server" ControlToValidate="txtInsertZipCode" ErrorMessage="ZipCode is a required field." ForeColor="Red">*</asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("ZipCode") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Phone" SortExpression="Phone">
                <EditItemTemplate>
                    <asp:TextBox ID="txtEditPhone" runat="server" Text='<%# Bind("Phone") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditPhone" runat="server" ControlToValidate="txtEditPhone" ErrorMessage="Phone is a required field." ForeColor="Red">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txtInsertPhone" runat="server" Text='<%# Bind("Phone") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvInsertPhone" runat="server" ControlToValidate="txtInsertPhone" ErrorMessage="Phone is a required field." ForeColor="Red">*</asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Phone") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email" SortExpression="Email">
                <EditItemTemplate>
                    <asp:TextBox ID="txtEditEmail" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditEmail" runat="server" ControlToValidate="txtEditEmail" ErrorMessage="Email is a required field." ForeColor="Red">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txtInsertEmail" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvInsertEmail" runat="server" ControlToValidate="txtInsertEmail" ErrorMessage="Email is a required field." ForeColor="Red">*</asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:DetailsView>
    <br />
    <asp:Label ID="lblDetailsResult" runat="server"></asp:Label>
    <br />
    <asp:ValidationSummary ID="vsDetailsSummary" runat="server" ForeColor="Red" HeaderText="Please correct the following errors:" />
    <asp:SqlDataSource ID="sdsCustomerDetails" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Customer] WHERE ([CustomerID] = ?)" DeleteCommand="DELETE FROM [Customer] WHERE [CustomerID] = ?" InsertCommand="INSERT INTO [Customer] ([Name], [Address], [City], [State], [ZipCode], [Phone], [Email]) VALUES (?, ?, ?, ?, ?, ?, ?)" UpdateCommand="UPDATE [Customer] SET [Name] = ?, [Address] = ?, [City] = ?, [State] = ?, [ZipCode] = ?, [Phone] = ?, [Email] = ? WHERE [CustomerID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="CustomerID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="ZipCode" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="gvCustomers" Name="CustomerID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="ZipCode" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="CustomerID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sdsCustomers" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Customer] ORDER BY [Name]"></asp:SqlDataSource>
</asp:Content>

