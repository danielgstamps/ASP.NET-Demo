using System;
using System.Drawing;
using System.Web.UI.WebControls;

/// <summary>
/// Code-behind file for CustomerMaintenance.
/// </summary>
/// <author> 
/// Daniel Stamps 
/// </author>
/// <version> 
/// Spring 2015
/// </version>
public partial class CustomerMaintenance : System.Web.UI.Page
{
    /// <summary>
    /// Handles the Load event of the Page control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    /// <summary>
    /// Handles the ItemInserted event of the dvCustomers control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="DetailsViewInsertedEventArgs"/> instance containing the event data.</param>
    protected void dvCustomers_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        if (e.Exception != null)
        {
            e.ExceptionHandled = true;
            e.KeepInInsertMode = true;
            this.lblDetailsResult.ForeColor = Color.Red;
            this.lblDetailsResult.Text = "Could not insert Customer: Concurrent database modification.";
            return;
        }

        this.lblDetailsResult.ForeColor = Color.Green;
        this.lblDetailsResult.Text = "Successfully added new Customer.";
        this.gvCustomers.DataBind();
    }

    /// <summary>
    /// Handles the ItemUpdated event of the dvCustomers control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="DetailsViewUpdatedEventArgs"/> instance containing the event data.</param>
    protected void dvCustomers_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        if (e.Exception != null)
        {
            e.ExceptionHandled = true;
            e.KeepInEditMode = true;
            this.lblDetailsResult.ForeColor = Color.Red;
            this.lblDetailsResult.Text = "Could not update Customer: Concurrent database modification.";
            return;
        }

        this.lblDetailsResult.ForeColor = Color.Green;
        this.lblDetailsResult.Text = "Successfully updated Customer.";
        this.gvCustomers.DataBind();
    }

    /// <summary>
    /// Handles the ItemDeleted event of the dvCustomers control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="DetailsViewDeletedEventArgs"/> instance containing the event data.</param>
    protected void dvCustomers_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
    {
        if (e.Exception != null)
        {
            e.ExceptionHandled = true;
            this.lblDetailsResult.ForeColor = Color.Red;
            this.lblDetailsResult.Text = "Could not delete Customer: Concurrent database modification.";
            return;
        }

        this.lblDetailsResult.ForeColor = Color.Green;
        this.lblDetailsResult.Text = "Successfully deleted Customer.";
        this.gvCustomers.DataBind();
    }

    /// <summary>
    /// Handles the SelectedIndexChanged event of the gvCustomers control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
    protected void gvCustomers_SelectedIndexChanged(object sender, EventArgs e)
    {
        this.lblDetailsResult.Text = "";
    }
}