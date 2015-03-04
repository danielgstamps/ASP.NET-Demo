using System;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.Web.UI;

/// <author> Daniel Stamps </author>
/// <version> 2/5/2015 </version>

public partial class CustomerList : Page
{
    /// <summary>
    /// The _selected customer
    /// </summary>
    private Customer _selectedCustomer;

    /// <summary>
    /// Handles the Load event of the Page control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.ddlCustomer.DataBind();
        }

        this.DisplayCustomerData();
    }

    /// <summary>
    /// Gets the selected customer.
    /// </summary>
    /// <returns></returns>
    private Customer GetSelectedCustomer()
    {
        var customerTable = (DataView) this.SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        Debug.Assert(customerTable != null);

        customerTable.RowFilter = string.Format("Name = '{0}'", this.ddlCustomer.SelectedValue);
        var row = customerTable[0];

        var customer = new Customer()
        {
            Id = row["CustomerID"].ToString(), 
            Name = row["Name"].ToString(),
            Address = row["Address"].ToString(),
            City = row["City"].ToString(),
            State = row["State"].ToString(),
            ZipCode = row["ZipCode"].ToString(),
            Phone = row["Phone"].ToString(),
            Email = row["Email"].ToString()
        };

        return customer;
    }

    /// <summary>
    /// Displays the customer data.
    /// </summary>
    private void DisplayCustomerData()
    {
        this._selectedCustomer = this.GetSelectedCustomer();
        this.lblId.Text = this._selectedCustomer.Id;
        this.lblName.Text = this._selectedCustomer.Name;
        this.lblAddress.Text = this._selectedCustomer.Address;
        this.lblCity.Text = this._selectedCustomer.City;
        this.lblState.Text = this._selectedCustomer.State;
        this.lblZipCode.Text = this._selectedCustomer.ZipCode;
        this.lblPhone.Text = this._selectedCustomer.Phone;
        this.lblEmail.Text = this._selectedCustomer.Email;
    }

    /// <summary>
    /// Handles the Click event of the btnAddContact control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
    protected void btnAddContact_Click(object sender, EventArgs e)
    {
        var customers = CustomerCollection.GetCustomers();

        if (customers[this._selectedCustomer.Name] != null)
        {
            this.lblMessage.ForeColor = Color.Red;
            this.lblMessage.Text = this._selectedCustomer.Name + " is already in the Contact List.";
            return;
        }

        customers.AddItem(this._selectedCustomer);

        this.lblMessage.ForeColor = Color.Green;
        this.lblMessage.Text = this._selectedCustomer.Name + " successfully added to the Contact List.";

        Response.Redirect("ContactList.aspx");
    }
}