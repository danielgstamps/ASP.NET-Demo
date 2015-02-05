using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Customer
/// </summary>
public class Customer
{
    private String _id;
    private String _name;
    private String _address;
    private String _city;
    private String _state;
    private String _zipCode;
    private String _phone;
    private String _email;

    public String Id
    {
        get { return this._id; }
        set
        {
            Trace.Assert(value != "", "ID must be at least one character.");
            this._id = value;
        }
    }

    public String Name
    {
        get { return this._name; }
        set
        {
            Trace.Assert(value != "", "Name must be at least one character.");
            this._name = value;
        }
    }

    public String Address
    {
        get { return this._address; }
        set
        {
            Trace.Assert(value != "", "Address must be at least one character.");
            this._address = value;
        }
    }

    public String City
    {
        get { return this._city; }
        set
        {
            Trace.Assert(value != "", "City must be at least one character.");
            this._city = value;
        }
    }

    public String State
    {
        get { return this._state; }
        set
        {
            Trace.Assert(value != "", "State must be at least one character.");
            this._state = value;
        }
    }

    public String ZipCode
    {
        get { return this._zipCode; }
        set
        {
            Trace.Assert(value != "", "Zip code must be at least one character.");
            this._zipCode = value;
        }
    }

    public String Phone
    {
        get { return this._phone; }
        set
        {
            Trace.Assert(value != "", "Phone number must be at least one character.");
            this._phone = value;
        }
    }

    public String Email
    {
        get { return this._email; }
        set
        {
            Trace.Assert(value != "", "Email address must be at least one character.");
            this._email = value;
        }
    } 



	public Customer()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}