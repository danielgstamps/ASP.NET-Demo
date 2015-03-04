<%@ Page Title="Contact Us" Language="C#" MasterPageFile="Site.master" %>

<asp:Content ID="contactUsContent" ContentPlaceHolderID="bodyPlaceHolder" runat="server">
    <h1> Contact Us: </h1>
    <p> Phone: 88-BallGame </p>
    <p> Email: <asp:HyperLink ID="hlContactEmail" runat="server" NavigateUrl="mailto:info@ballgame.com">info@ballgame.com</asp:HyperLink> </p>
    <p> 4985 Influenza Blvd. <br/>
        FluTown, GA 30000
    </p>
    <p> Hours: <br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mon-Fri: 9:00am - 5:00pm <br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sat-Sun: Closed <br/>
    </p>
</asp:Content>