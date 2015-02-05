using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Feedback
/// </summary>
public class Feedback
{
    private int _feedbackId;
    private int _customerId;
    private int _softwareId;
    private int _supportId;
    private DateTime _dateOpened;
    private DateTime _dateClosed;
    private string _title;
    private string _description;

    public int FeedbackId
    {
        get { return this._feedbackId; }
        set
        {
            Trace.Assert(value != 0, "ID cannot be 0.");
            this._feedbackId = value;
        }
    }

    public int CustomerId
    {
        get { return this._customerId; }
        set
        {
            Trace.Assert(value != 0, "ID cannot be 0.");
            this._customerId = value;
        }
    }

    public int SoftwareId
    {
        get { return this._softwareId; }
        set
        {
            Trace.Assert(value != 0, "ID cannot be 0.");
            this._softwareId = value;
        }
    }

    public int SupportId
    {
        get { return this._supportId; }
        set
        {
            Trace.Assert(value != 0, "ID cannot be 0.");
            this._supportId = value;
        }
    }

    public DateTime DateOpened
    {
        get { return this._dateOpened; }
        set
        {
            Trace.Assert(value != null, "Date cannot be null.");
            this._dateOpened = value;
        }
    }

    public DateTime DateClosed
    {
        get { return this._dateClosed; }
        set
        {
            Trace.Assert(value != null, "Date cannot be null.");
            this._dateClosed = value;
        }
    }

    public String Title
    {
        get { return this._title; }
        set
        {
            Trace.Assert(value != "", "Title must be at least one character.");
            this._title = value;
        }
    }

    public String Description
    {
        get { return this._description; }
        set
        {
            Trace.Assert(value != "", "Description must be at least one character.");
            this._description = value;
        }
    }

	public Feedback()
	{
		//Not sure if we need a constructor? 
	}

    public String FormatFeedback()
    {
        return "Feedback for software " + this._softwareId + " closed " 
            + this._dateClosed + " (" + this._title + ")";
    }
}