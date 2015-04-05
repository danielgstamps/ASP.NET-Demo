using System;
using System.Drawing;
using System.Web.UI.WebControls;

public partial class CustomerMaintenance : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void dvCustomers_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        if (e.Exception != null)
        {
            e.ExceptionHandled = true;
            e.KeepInInsertMode = true;
            this.lblDetailsResult.ForeColor = Color.Red;
            this.lblDetailsResult.Text = "There was a problem inserting this Customer.";
            return;
        }

        this.lblDetailsResult.ForeColor = Color.Green;
        this.lblDetailsResult.Text = "Successfully added new Customer.";
        this.gvCustomers.DataBind();
    }

    protected void dvCustomers_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        if (e.Exception != null)
        {
            e.ExceptionHandled = true;
            e.KeepInEditMode = true;
            this.lblDetailsResult.ForeColor = Color.Red;
            this.lblDetailsResult.Text = "There was a problem updating this Customer.";
            return;
        }

        this.lblDetailsResult.ForeColor = Color.Green;
        this.lblDetailsResult.Text = "Successfully updated Customer.";
        this.gvCustomers.DataBind();
    }

    protected void dvCustomers_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
    {
        if (e.Exception != null)
        {
            e.ExceptionHandled = true;
            this.lblDetailsResult.ForeColor = Color.Red;
            this.lblDetailsResult.Text = "There was a problem deleting this Customer.";
            return;
        }

        this.lblDetailsResult.ForeColor = Color.Green;
        this.lblDetailsResult.Text = "Successfully deleted Customer.";
        this.gvCustomers.DataBind();
    }

    protected void gvCustomers_SelectedIndexChanged(object sender, EventArgs e)
    {
        this.lblDetailsResult.Text = "";
    }
}