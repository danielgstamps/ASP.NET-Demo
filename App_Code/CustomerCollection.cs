using System.Collections.Generic;
using System.Diagnostics;
using System.Web;

/// <summary>
/// Summary description for CustomerCollection
/// </summary>
public class CustomerCollection
{
    private readonly List<Customer> _customerCollection;

    public CustomerCollection()
    {
        this._customerCollection = new List<Customer>();
    }

    public Customer this[int index]
    {
        get { return this._customerCollection[index]; }
        set
        {
            Trace.Assert(value != null, "Must enter a valid Customer object.");
            this._customerCollection[index] = value;
        }
    }

    public Customer this[string name]
    {
        get
        {
            return this._customerCollection.Find(customer => customer.Name == name);
        }
    }

    public int Count()
    {
        return this._customerCollection.Count;
    }

    public void AddItem(Customer newCustomer)
    {
        this._customerCollection.Add(newCustomer);
    }

    public void RemoveAt(int index)
    {
        this._customerCollection.RemoveAt(index);
    }

    public void Clear()
    {
        this._customerCollection.Clear();
    }

    public static CustomerCollection GetCustomers()
    {
        if (HttpContext.Current.Session["CustomerList"] == null)
        {
            HttpContext.Current.Session["CustomerList"] = new CustomerCollection();
        }

        return (CustomerCollection) HttpContext.Current.Session["CustomerList"];
    }
}