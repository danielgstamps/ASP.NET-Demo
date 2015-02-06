using System;
using System.Drawing;

/// <author> Daniel Stamps </author>
/// <version> 2/5/2015 </version>

public partial class ContactList : System.Web.UI.Page
{
    /// <summary>
    /// The _contacts
    /// </summary>
    private CustomerCollection _contacts;

    /// <summary>
    /// Handles the Load event of the Page control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
    protected void Page_Load(object sender, EventArgs e)
    {
        this._contacts = CustomerCollection.GetCustomers(); 

        if (IsPostBack)
        {
            return;
        }

        this.PopulateContactList();
    }

    /// <summary>
    /// Populates the contact list.
    /// </summary>
    private void PopulateContactList()
    {
        for (var i = 0; i < this._contacts.Count(); i++)
        {
            var current = this._contacts[i];
            var names = current.Name.Split(' ');
            var contact = names[1] + ", " + names[0] +
                ": " + current.Phone + "; " + current.Email;
            this.lstContacts.Items.Add(contact);
        }
    }

    /// <summary>
    /// Handles the Click event of the btnSelectAdditionalCustomer control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
    protected void btnSelectAdditionalCustomer_Click(object sender, EventArgs e)
    {
        Response.Redirect("CustomerList.aspx");
    }

    /// <summary>
    /// Handles the Click event of the btnRemoveCustomer control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
    protected void btnRemoveCustomer_Click(object sender, EventArgs e)
    {
        if (this.lstContacts.SelectedIndex < 0)
        {
            this.lblMessage.ForeColor = Color.Red;
            this.lblMessage.Text = "Please select a contact to remove.";
            return;
        }

        this._contacts.RemoveAt(this.lstContacts.SelectedIndex);
        this.lstContacts.Items.Remove(this.lstContacts.SelectedItem);

        this.lblMessage.ForeColor = Color.Green;
        this.lblMessage.Text = "Contact successfully removed.";

    }

    /// <summary>
    /// Handles the Click event of the btnClear control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
    protected void btnClear_Click(object sender, EventArgs e)
    {
        this._contacts.Clear();
        this.lstContacts.Items.Clear();

        this.lblMessage.ForeColor = Color.Green;
        this.lblMessage.Text = "All contacts cleared.";
    }
}