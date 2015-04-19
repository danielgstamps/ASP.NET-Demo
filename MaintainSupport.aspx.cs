using System;
using System.Drawing;
using System.Web.UI.WebControls;

/// <summary>
/// Code-behind file for MaintainSupport
/// </summary>
/// <author>
/// Daniel Stamps
/// </author>
/// <version>
/// Spring 2015
/// </version>
public partial class MaintainSupport : System.Web.UI.Page
{
    /// <summary>
    /// Handles the Load event of the Page control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
    protected void Page_Load(object sender, EventArgs e)
    {
        this.lblFeedback.Text = "";
    }

    /// <summary>
    /// Handles the ItemInserted event of the fvSupportStaff control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="FormViewInsertedEventArgs"/> instance containing the event data.</param>
    protected void fvSupportStaff_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        if (e.Exception != null)
        {
            e.ExceptionHandled = true;
            e.KeepInInsertMode = true;
            this.lblFeedback.ForeColor = Color.Red;
            this.lblFeedback.Text = "Could not insert Support member: Invalid data.";
            return;
        }

        this.lblFeedback.ForeColor = Color.Green;
        this.lblFeedback.Text = "Successfully added new Support member.";
        this.ddlSupportStaff.DataBind();
    }

    /// <summary>
    /// Handles the ItemUpdated event of the fvSupportStaff control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="FormViewUpdatedEventArgs"/> instance containing the event data.</param>
    protected void fvSupportStaff_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
    {
        if (e.Exception != null)
        {
            e.ExceptionHandled = true;
            e.KeepInEditMode = true;
            this.lblFeedback.ForeColor = Color.Red;
            this.lblFeedback.Text = "Could not update Support member: Invalid data.";
            return;
        }

        this.lblFeedback.ForeColor = Color.Green;
        this.lblFeedback.Text = "Successfully updated Support member.";
        this.ddlSupportStaff.DataBind();
    }

    /// <summary>
    /// Handles the ItemDeleted event of the fvSupportStaff control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="FormViewDeletedEventArgs"/> instance containing the event data.</param>
    protected void fvSupportStaff_ItemDeleted(object sender, FormViewDeletedEventArgs e)
    {
        if (e.Exception != null)
        {
            e.ExceptionHandled = true;
            this.lblFeedback.ForeColor = Color.Red;
            this.lblFeedback.Text = "Could not delete Support member: Concurrent database modification.";
            return;
        }

        this.lblFeedback.ForeColor = Color.Green;
        this.lblFeedback.Text = "Successfully deleted Support member.";
        this.ddlSupportStaff.DataBind();
    }
}