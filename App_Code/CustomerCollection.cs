using System.Collections.Generic;
using System.Diagnostics;
using System.Web;

/// <author> Daniel Stamps </author>
/// <version> 2/5/2015 </version>

/// <summary>
/// Represents a collection of Customers.
/// </summary>
public class CustomerCollection
{
    /// <summary>
    /// The _customer collection
    /// </summary>
    private readonly List<Customer> _customerCollection;

    /// <summary>
    /// Initializes a new instance of the <see cref="CustomerCollection"/> class.
    /// </summary>
    public CustomerCollection()
    {
        this._customerCollection = new List<Customer>();
    }

    /// <summary>
    /// Gets or sets the <see cref="Customer"/> at the specified index.
    /// </summary>
    /// <value>
    /// The <see cref="Customer"/>.
    /// </value>
    /// <param name="index">The index.</param>
    public Customer this[int index]
    {
        get { return this._customerCollection[index]; }
        set
        {
            Trace.Assert(value != null, "Must enter a valid Customer object.");
            this._customerCollection[index] = value;
        }
    }

    /// <summary>
    /// Gets the <see cref="Customer"/> with the specified name.
    /// </summary>
    /// <value>
    /// The <see cref="Customer"/>.
    /// </value>
    /// <param name="name">The name.</param>
    /// <returns>The customer with the specified name.</returns>
    public Customer this[string name]
    {
        get
        {
            return this._customerCollection.Find(customer => customer.Name == name);
        }
    }

    /// <summary>
    /// Gets the number of Customers in the collection.
    /// </summary>
    /// <returns>The number of Customers in the collection.</returns>
    public int Count()
    {
        return this._customerCollection.Count;
    }

    /// <summary>
    /// Adds a new Customer.
    /// </summary>
    /// <param name="newCustomer">The new customer.</param>
    public void AddItem(Customer newCustomer)
    {
        this._customerCollection.Add(newCustomer);
    }

    /// <summary>
    /// Removes the Customer at the specified index.
    /// </summary>
    /// <param name="index">The index.</param>
    public void RemoveAt(int index)
    {
        this._customerCollection.RemoveAt(index);
    }

    /// <summary>
    /// Clears the collection of all Customers.
    /// </summary>
    public void Clear()
    {
        this._customerCollection.Clear();
    }

    /// <summary>
    /// Creates a Session object that stores the collection.
    /// </summary>
    /// <returns>A Session object that stores the collection.</returns>
    public static CustomerCollection GetCustomers()
    {
        if (HttpContext.Current.Session["CustomerList"] == null)
        {
            HttpContext.Current.Session["CustomerList"] = new CustomerCollection();
        }

        return (CustomerCollection) HttpContext.Current.Session["CustomerList"];
    }
}