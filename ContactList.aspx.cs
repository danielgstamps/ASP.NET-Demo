using System;
using System.Activities.Expressions;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.DynamicData;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ContactList : System.Web.UI.Page
{
    private CustomerCollection _contacts;

    protected void Page_Load(object sender, EventArgs e)
    {
        this._contacts = CustomerCollection.GetCustomers(); 

        if (IsPostBack)
        {
            return;
        }

        this.PopulateContactList();
    }

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

    protected void btnSelectAdditionalCustomer_Click(object sender, EventArgs e)
    {
        Response.Redirect("CustomerList.aspx");
    }

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

    protected void btnClear_Click(object sender, EventArgs e)
    {
        this._contacts.Clear();
        this.lstContacts.Items.Clear();

        this.lblMessage.ForeColor = Color.Green;
        this.lblMessage.Text = "All contacts cleared.";
    }
}