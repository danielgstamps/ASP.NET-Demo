using System.Diagnostics;

/// <summary>
/// Summary description for Feedback
/// </summary>
public class Feedback
{
    private int _feedbackId;
    private int _customerId;
    private string _softwareId;
    private int _supportId;
    private string _dateOpened;
    private string _dateClosed;
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

    public string SoftwareId
    {
        get { return this._softwareId; }
        set
        {
            Trace.Assert(value != "", "ID cannot be 0.");
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

    public string DateOpened
    {
        get { return this._dateOpened; }
        set
        {
            Trace.Assert(value != "", "Date cannot be null.");
            this._dateOpened = value;
        }
    }

    public string DateClosed
    {
        get { return this._dateClosed; }
        set
        {
            Trace.Assert(value != "", "Date cannot be null.");
            this._dateClosed = value;
        }
    }

    public string Title
    {
        get { return this._title; }
        set
        {
            Trace.Assert(value != "", "Title must be at least one character.");
            this._title = value;
        }
    }

    public string Description
    {
        get { return this._description; }
        set
        {
            Trace.Assert(value != "", "Description must be at least one character.");
            this._description = value;
        }
    }

    public string FormatFeedback()
    {
        return "Feedback for software " + this._softwareId + " closed " 
            + this._dateClosed + " (" + this._title + ")";
    }
}