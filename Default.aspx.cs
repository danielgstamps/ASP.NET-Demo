using System;

/// <author> Daniel Stamps </author>
/// <version> 2/5/2015 </version>

public partial class Default : System.Web.UI.Page
{
    /// <summary>
    /// Handles the Click event of the btnCustomerList control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
    protected void btnCustomerList_Click(object sender, EventArgs e)
    {
        Response.Redirect("CustomerList.aspx");
    }

    /// <summary>
    /// Handles the Click event of the btnCustomerFeedback control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
    protected void btnCustomerFeedback_Click(object sender, EventArgs e)
    {
        Response.Redirect("CustomerFeedback.aspx");
    }
}