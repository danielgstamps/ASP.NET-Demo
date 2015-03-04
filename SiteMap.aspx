<%@ Page Title="Site Map" Language="C#" MasterPageFile="Site.master" %>

<asp:Content ID="SiteMapContent" ContentPlaceHolderID="bodyPlaceHolder" runat="server">
    <h1> Site Map </h1>
    <asp:TreeView ID="tvNavTree" runat="server" DataSourceID="SiteMapDataSource1" ImageSet="BulletedList2" ShowExpandCollapse="False">
        <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
        <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
        <ParentNodeStyle Font-Bold="False" />
        <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px" VerticalPadding="0px" />
    </asp:TreeView>
    <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
</asp:Content>
