<%@ Page Title="Product Maintenance" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<asp:Content ID="ProductContent" ContentPlaceHolderID="bodyPlaceHolder" Runat="Server">
    <h1>Product Maintenance</h1>
    <p>Software in database:</p>
    <asp:GridView ID="gvProducts" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="SoftwareID" DataSourceID="sdsProducts" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="SoftwareID" HeaderText="SoftwareID" ReadOnly="True" SortExpression="SoftwareID" />
            <asp:TemplateField HeaderText="Name" SortExpression="Name">
                <EditItemTemplate>
                    <asp:TextBox ID="txtEditName" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="fvEditName" runat="server" ControlToValidate="txtEditName" ErrorMessage="Name is a required field." ForeColor="Red" ValidationGroup="vgEdit">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Version" SortExpression="Version">
                <EditItemTemplate>
                    <asp:TextBox ID="txtEditVersion" runat="server" Text='<%# Bind("Version") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditVersion" runat="server" ControlToValidate="txtEditVersion" ErrorMessage="Version is a required field." ForeColor="Red" ValidationGroup="vgEdit">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvEditVersion" runat="server" ControlToValidate="txtEditVersion" ErrorMessage="Version must be an integer or decimal." ForeColor="Red" Operator="DataTypeCheck" Type="Double" ValidationGroup="vgEdit">*</asp:CompareValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Version") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ReleaseDate" SortExpression="ReleaseDate">
                <EditItemTemplate>
                    <asp:TextBox ID="txtEditReleaseDate" runat="server" Text='<%# Bind("ReleaseDate") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditReleaseDate" runat="server" ControlToValidate="txtEditReleaseDate" ErrorMessage="Release Date is a required field." ForeColor="Red" ValidationGroup="vgEdit">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvEditReleaseDate" runat="server" ControlToValidate="txtEditReleaseDate" ErrorMessage="Release Date must be a valid date." ForeColor="Red" Operator="DataTypeCheck" Type="Date" ValidationGroup="vgEdit">*</asp:CompareValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("ReleaseDate") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ValidationGroup="vgEdit" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="sdsProducts" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" DeleteCommand="DELETE FROM [Software] WHERE [SoftwareID] = ?" InsertCommand="INSERT INTO [Software] ([SoftwareID], [Name], [Version], [ReleaseDate]) VALUES (?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Software] ORDER BY [SoftwareID]" UpdateCommand="UPDATE [Software] SET [Name] = ?, [Version] = ?, [ReleaseDate] = ? WHERE [SoftwareID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="SoftwareID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="SoftwareID" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Version" Type="Decimal" />
            <asp:Parameter Name="ReleaseDate" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Version" Type="Decimal" />
            <asp:Parameter Name="ReleaseDate" Type="DateTime" />
            <asp:Parameter Name="SoftwareID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:ValidationSummary ID="vsEdit" runat="server" ForeColor="Red" HeaderText="Please correct the following errors:" ValidationGroup="vgEdit" />
    <br />
    Add a new Product:<br />
    <br />
    <table>
        <tr>
            <td class="auto-style1">Software ID:</td>
            <td>
                <asp:TextBox ID="txtInsertID" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvInsertID" runat="server" ErrorMessage="Software ID is a required field." ControlToValidate="txtInsertID" Text="*" ValidationGroup="vgInsert" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Name: </td>
            <td>
                <asp:TextBox ID="txtInsertName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvInsertName" runat="server" ErrorMessage="Name is a required field." ControlToValidate="txtInsertName" Text="*" ValidationGroup="vgInsert" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Version: </td>
            <td>
                <asp:TextBox ID="txtInsertVersion" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvInsertVersion" runat="server" ErrorMessage="Version is a required field." ControlToValidate="txtInsertVersion" Text="*" ValidationGroup="vgInsert" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cvInsertVersion" runat="server" ControlToValidate="txtInsertVersion" ErrorMessage="Version must be an integer or decimal." ForeColor="Red" Operator="DataTypeCheck" Type="Double" ValidationGroup="vgInsert">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Release Date:</td>
            <td>
                <asp:TextBox ID="txtInsertReleaseDate" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvInsertReleaseDate" runat="server" ErrorMessage="Release Date is a required field." ControlToValidate="txtInsertReleaseDate" Text="*" ValidationGroup="vgInsert" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cvInsertReleaseDate" runat="server" ControlToValidate="txtInsertReleaseDate" ErrorMessage="ReleaseDate must be a valid Date." ForeColor="Red" Operator="DataTypeCheck" Type="Date" ValidationGroup="vgInsert">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1"> </td>
            <td><asp:Button ID="btnAddSoftware" runat="server" Text="Add Software" Width="166px" ValidationGroup="vgInsert" /></td>
        </tr>
    </table>
    <br/>
     <asp:ValidationSummary ID="vsInsert" runat="server" ForeColor="Red" HeaderText="Please correct the following errors:" ValidationGroup="vgInsert" />

</asp:Content>

<asp:Content ID="Content1" runat="server" contentplaceholderid="headPlaceHolder">
    <style type="text/css">
        .auto-style1 {
            width: 159px;
        }
    </style>
</asp:Content>


