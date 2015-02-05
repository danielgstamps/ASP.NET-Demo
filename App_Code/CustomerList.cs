using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Runtime.CompilerServices;
using System.ServiceModel.Channels;
using System.Web;

/// <summary>
/// Summary description for CustomerList
/// </summary>
public class CustomerList
{
    private List<Customer> _customerList; 

	public CustomerList()
	{
		this._customerList = new List<Customer>();
	}

    public Customer this[int index]
    {
        get { return this._customerList[index]; }
        set
        {
            Trace.Assert(value != null, "Must enter a valid Customer object.");
            this._customerList[index] = value;
        }
    }

    public Customer this[string name]
    {
        get
        {
            return this._customerList.Find(customer => customer.Name == name);
        }
    }

    public int Count()
    {
        return this._customerList.Count;
    }

    public void AddItem(Customer newCustomer)
    {
        this._customerList.Add(newCustomer);
    }

    public void RemoveAt(int index)
    {
        this._customerList.RemoveAt(index);
    }

    public void Clear()
    {
        this._customerList.Clear();
    }

 //   public static CustomerList GetCustomers()
 //   {
        // gets the list of Customers from the session state object
        // Creates a new session state object if one doesnt exist.
//    }
}