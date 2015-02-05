using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Description
/// </summary>
public class Description
{
    private int _customerId;
    private int _feedbackId;
    private int _serviceTime;
    private int _efficiency;
    private int _resolution;
    private String _comments;
    private bool _contact;
    private String _contactMethod;

    public int CustomerId
    {
        get { return this._customerId; }
        set
        {
            Trace.Assert(value != 0, "ID cannot be 0.");
            this._customerId = value;
        }
    }

    public int FeedbackId
    {
        get { return this._feedbackId; }
        set
        {
            Trace.Assert(value != 0, "ID cannot be 0.");
            this._feedbackId = value;
        }
    }

    public int ServiceTime
    {
        get { return this._serviceTime; }
        set
        {
            Trace.Assert(value > 0, "Time must be > 0.");
            this._serviceTime = value;
        }
    }

    public int Efficiency
    {
        get { return this._efficiency; }
        set
        {
            Trace.Assert(value != 0, "Efficiency cannot be 0.");
            this._efficiency = value;
        }
    }

    public int Resolution
    {
        get { return this._resolution; }
        set
        {
            Trace.Assert(value != 0, "Resolution cannot be 0.");
            this._resolution = value;
        }
    }

    public String Comments
    {
        get { return this._comments; }
        set
        {
            Trace.Assert(value != "", "Comment must be at least one character.");
            this._comments = value;
        }
    }

    public bool Contact
    {
        get { return this._contact; }
        set
        {
            Trace.Assert(value == true || value == false, "Must be true or false.");
            this._contact = value;
        }
    }

    public String ContactMethod
    {
        get { return this._contactMethod; }
        set
        {
            Trace.Assert(value != "", "Contact method must be at least one character.");
            this._contactMethod = value;
        }
    }






	public Description()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}