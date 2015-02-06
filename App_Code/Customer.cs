using System;
using System.Diagnostics;

/// <author> Daniel Stamps </author>
/// <version> 2/5/2015 </version>

/// <summary>
/// Stores information related to a Customer.
/// </summary>
public class Customer
{
    /// <summary>
    /// The _id
    /// </summary>
    private String _id;

    /// <summary>
    /// The _name
    /// </summary>
    private String _name;

    /// <summary>
    /// The _address
    /// </summary>
    private String _address;

    /// <summary>
    /// The _city
    /// </summary>
    private String _city;

    /// <summary>
    /// The _state
    /// </summary>
    private String _state;

    /// <summary>
    /// The _zip code
    /// </summary>
    private String _zipCode;

    /// <summary>
    /// The _phone
    /// </summary>
    private String _phone;

    /// <summary>
    /// The _email
    /// </summary>
    private String _email;

    /// <summary>
    /// Gets or sets the identifier.
    /// </summary>
    /// <value>
    /// The identifier.
    /// </value>
    public String Id
    {
        get { return this._id; }
        set
        {
            Trace.Assert(value != "", "ID must be at least one character.");
            this._id = value;
        }
    }

    /// <summary>
    /// Gets or sets the name.
    /// </summary>
    /// <value>
    /// The name.
    /// </value>
    public String Name
    {
        get { return this._name; }
        set
        {
            Trace.Assert(value != "", "Name must be at least one character.");
            this._name = value;
        }
    }

    /// <summary>
    /// Gets or sets the address.
    /// </summary>
    /// <value>
    /// The address.
    /// </value>
    public String Address
    {
        get { return this._address; }
        set
        {
            Trace.Assert(value != "", "Address must be at least one character.");
            this._address = value;
        }
    }

    /// <summary>
    /// Gets or sets the city.
    /// </summary>
    /// <value>
    /// The city.
    /// </value>
    public String City
    {
        get { return this._city; }
        set
        {
            Trace.Assert(value != "", "City must be at least one character.");
            this._city = value;
        }
    }

    /// <summary>
    /// Gets or sets the state.
    /// </summary>
    /// <value>
    /// The state.
    /// </value>
    public String State
    {
        get { return this._state; }
        set
        {
            Trace.Assert(value != "", "State must be at least one character.");
            this._state = value;
        }
    }

    /// <summary>
    /// Gets or sets the zip code.
    /// </summary>
    /// <value>
    /// The zip code.
    /// </value>
    public String ZipCode
    {
        get { return this._zipCode; }
        set
        {
            Trace.Assert(value != "", "Zip code must be at least one character.");
            this._zipCode = value;
        }
    }

    /// <summary>
    /// Gets or sets the phone.
    /// </summary>
    /// <value>
    /// The phone.
    /// </value>
    public String Phone
    {
        get { return this._phone; }
        set
        {
            Trace.Assert(value != "", "Phone number must be at least one character.");
            this._phone = value;
        }
    }

    /// <summary>
    /// Gets or sets the email.
    /// </summary>
    /// <value>
    /// The email.
    /// </value>
    public String Email
    {
        get { return this._email; }
        set
        {
            Trace.Assert(value != "", "Email address must be at least one character.");
            this._email = value;
        }
    } 
}