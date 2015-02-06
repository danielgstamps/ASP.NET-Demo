using System.Diagnostics;

/// <author> Daniel Stamps </author>
/// <version> 2/5/2015 </version>

/// <summary>
/// Summary description for Feedback
/// </summary>
public class Feedback
{
    /// <summary>
    /// The _feedback identifier
    /// </summary>
    private int _feedbackId;

    /// <summary>
    /// The _customer identifier
    /// </summary>
    private int _customerId;

    /// <summary>
    /// The _software identifier
    /// </summary>
    private string _softwareId;

    /// <summary>
    /// The _support identifier
    /// </summary>
    private int _supportId;

    /// <summary>
    /// The _date opened
    /// </summary>
    private string _dateOpened;

    /// <summary>
    /// The _date closed
    /// </summary>
    private string _dateClosed;

    /// <summary>
    /// The _title
    /// </summary>
    private string _title;

    /// <summary>
    /// The _description
    /// </summary>
    private string _description;

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
    /// Gets or sets the software identifier.
    /// </summary>
    /// <value>
    /// The software identifier.
    /// </value>
    public string SoftwareId
    {
        get { return this._softwareId; }
        set
        {
            Trace.Assert(value != "", "ID cannot be 0.");
            this._softwareId = value;
        }
    }

    /// <summary>
    /// Gets or sets the support identifier.
    /// </summary>
    /// <value>
    /// The support identifier.
    /// </value>
    public int SupportId
    {
        get { return this._supportId; }
        set
        {
            Trace.Assert(value != 0, "ID cannot be 0.");
            this._supportId = value;
        }
    }

    /// <summary>
    /// Gets or sets the date opened.
    /// </summary>
    /// <value>
    /// The date opened.
    /// </value>
    public string DateOpened
    {
        get { return this._dateOpened; }
        set
        {
            Trace.Assert(value != "", "Date cannot be null.");
            this._dateOpened = value;
        }
    }

    /// <summary>
    /// Gets or sets the date closed.
    /// </summary>
    /// <value>
    /// The date closed.
    /// </value>
    public string DateClosed
    {
        get { return this._dateClosed; }
        set
        {
            Trace.Assert(value != "", "Date cannot be null.");
            this._dateClosed = value;
        }
    }

    /// <summary>
    /// Gets or sets the title.
    /// </summary>
    /// <value>
    /// The title.
    /// </value>
    public string Title
    {
        get { return this._title; }
        set
        {
            Trace.Assert(value != "", "Title must be at least one character.");
            this._title = value;
        }
    }

    /// <summary>
    /// Gets or sets the description.
    /// </summary>
    /// <value>
    /// The description.
    /// </value>
    public string Description
    {
        get { return this._description; }
        set
        {
            Trace.Assert(value != "", "Description must be at least one character.");
            this._description = value;
        }
    }

    /// <summary>
    /// Formats the feedback.
    /// </summary>
    /// <returns></returns>
    public string FormatFeedback()
    {
        return "Feedback for software " + this._softwareId + " closed " 
            + this._dateClosed + " (" + this._title + ")";
    }
}