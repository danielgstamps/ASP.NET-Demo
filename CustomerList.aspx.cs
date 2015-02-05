using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CustomerList : System.Web.UI.Page
{
    private Customer _selectedCustomer;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.ddlCustomer.DataBind();
        }

        this.DisplayCustomerData();
    }

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

}