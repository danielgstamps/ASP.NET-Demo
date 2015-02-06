using System;
using System.Diagnostics;

/// <author> Daniel Stamps </author>
/// <version> 2/5/2015 </version>

/// <summary>
/// Summary description for Description
/// </summary>
public class Description
{
    /// <summary>
    /// The _customer identifier
    /// </summary>
    private int _customerId;

    /// <summary>
    /// The _feedback identifier
    /// </summary>
    private int _feedbackId;

    /// <summary>
    /// The _service time
    /// </summary>
    private int _serviceTime;

    /// <summary>
    /// The _efficiency
    /// </summary>
    private int _efficiency;

    /// <summary>
    /// The _resolution
    /// </summary>
    private int _resolution;

    /// <summary>
    /// The _comments
    /// </summary>
    private String _comments;

    /// <summary>
    /// The _contact
    /// </summary>
    private bool _contact;

    /// <summary>
    /// The _contact method
    /// </summary>
    private String _contactMethod;

    /// <summary>
    /// Gets or sets the customer identifier.
    /// </summary>
    /// <value>
    /// The customer identifier.
    /// </value>
    public int CustomerId
    {
        get { return this._customerId; }
        set
        {
            Trace.Assert(value != 0, "ID cannot be 0.");
            this._customerId = value;
        }
    }

    /// <summary>
    /// Gets or sets the feedback identifier.
    /// </summary>
    /// <value>
    /// The feedback identifier.
    /// </value>
    public int FeedbackId
    {
        get { return this._feedbackId; }
        set
        {
            Trace.Assert(value != 0, "ID cannot be 0.");
            this._feedbackId = value;
        }
    }

    /// <summary>
    /// Gets or sets the service time.
    /// </summary>
    /// <value>
    /// The service time.
    /// </value>
    public int ServiceTime
    {
        get { return this._serviceTime; }
        set
        {
            Trace.Assert(value > 0, "Time must be > 0.");
            this._serviceTime = value;
        }
    }

    /// <summary>
    /// Gets or sets the efficiency.
    /// </summary>
    /// <value>
    /// The efficiency.
    /// </value>
    public int Efficiency
    {
        get { return this._efficiency; }
        set
        {
            Trace.Assert(value != 0, "Efficiency cannot be 0.");
            this._efficiency = value;
        }
    }

    /// <summary>
    /// Gets or sets the resolution.
    /// </summary>
    /// <value>
    /// The resolution.
    /// </value>
    public int Resolution
    {
        get { return this._resolution; }
        set
        {
            Trace.Assert(value != 0, "Resolution cannot be 0.");
            this._resolution = value;
        }
    }

    /// <summary>
    /// Gets or sets the comments.
    /// </summary>
    /// <value>
    /// The comments.
    /// </value>
    public String Comments
    {
        get { return this._comments; }
        set
        {
            Trace.Assert(value != "", "Comment must be at least one character.");
            this._comments = value;
        }
    }

    /// <summary>
    /// Gets or sets a value indicating whether this <see cref="Description"/> is contact.
    /// </summary>
    /// <value>
    ///   <c>true</c> if contact; otherwise, <c>false</c>.
    /// </value>
    public bool Contact
    {
        get { return this._contact; }
        set
        {
            Trace.Assert(value == true || value == false, "Must be true or false.");
            this._contact = value;
        }
    }

    /// <summary>
    /// Gets or sets the contact method.
    /// </summary>
    /// <value>
    /// The contact method.
    /// </value>
    public String ContactMethod
    {
        get { return this._contactMethod; }
        set
        {
            Trace.Assert(value != "", "Contact method must be at least one character.");
            this._contactMethod = value;
        }
    }
}