using System;

/// <author> Daniel Stamps </author>
/// <version> 2/5/2015 </version>

public partial class FeedbackComplete : System.Web.UI.Page
{
    /// <summary>
    /// Handles the Load event of the Page control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Contact"] == null)
        {
            return;
        }

        var contact = Convert.ToBoolean(Session["Contact"]);
        if (contact)
        {
            this.lblContact.Text = "We will be contacting you soon!";
        }
        else
        {
            this.lblContact.Text = "Have a nice day!";
        }
    }

    /// <summary>
    /// Handles the Click event of the btnBack control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("CustomerFeedback.aspx");
    }
}