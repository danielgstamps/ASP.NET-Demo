using System;

public partial class Default : System.Web.UI.Page
{
    protected void btnCustomerList_Click(object sender, EventArgs e)
    {
        Response.Redirect("CustomerList.aspx");
    }

    protected void btnCustomerFeedback_Click(object sender, EventArgs e)
    {
        Response.Redirect("CustomerFeedback.aspx");
    }
}