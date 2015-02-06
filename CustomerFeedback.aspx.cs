using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CustomerFeedback : Page
{
    private List<Feedback> _feedbackList;

    protected void Page_Load(object sender, EventArgs e)
    {
        this._feedbackList = new List<Feedback>();
    }

    private void GetSelectedCustomerFeedback()
    {
        var feedbackTable = (DataView) this.SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        Debug.Assert(feedbackTable != null);
        feedbackTable.RowFilter = String.Format("CustomerID = {0} AND DateClosed IS NOT NULL", this.txtCustomerId.Text);

        for (var i = 0; i < feedbackTable.Count; i++)
        {
            var row = feedbackTable[i];
            var feedback = new Feedback()
            {
                FeedbackId = Convert.ToInt32(row["FeedbackID"]),
                CustomerId = Convert.ToInt32(row["CustomerID"]),
                SoftwareId = row["SoftwareID"].ToString(),
                SupportId = Convert.ToInt32(row["SupportID"]),
                DateOpened = row["DateOpened"].ToString(),
                DateClosed = row["DateClosed"].ToString(),
                Title = row["Title"].ToString(),
                Description = row["Description"].ToString()
            };

            this._feedbackList.Add(feedback);
        }
    }

    private void DisplayFeedbackList()
    {
        if (this._feedbackList.Count == 0)
        {
            this.lblMessage.ForeColor = Color.Red;
            this.lblMessage.Text = "This customer has no feedback.";
            this.DisableControls();
            return;
        }

        foreach (var current in this._feedbackList)
        {
            this.lstFeedback.Items.Add(new ListItem(current.FormatFeedback(),
                current.FeedbackId.ToString()));
        }

        this.lblMessage.ForeColor = Color.Green;
        this.lblMessage.Text = "Feedback successfully retrieved.";
        this.EnableControls();
        SetFocus(this.lstFeedback);
    }

    private void EnableControls()
    {
        this.rblServiceTime.Enabled = true;
        this.rblTechnicalEfficiency.Enabled = true;
        this.rblProblemResolution.Enabled = true;
        this.txtComments.Enabled = true;
        this.chkContact.Enabled = true;
        this.rblMethod.Enabled = true;
        this.btnSubmit.Enabled = true;
    }

    private void DisableControls()
    {
        this.rblServiceTime.Enabled = false;
        this.rblTechnicalEfficiency.Enabled = false;
        this.rblProblemResolution.Enabled = false;
        this.txtComments.Enabled = false;
        this.chkContact.Enabled = false;
        this.rblMethod.Enabled = false;
        this.btnSubmit.Enabled = false;

        this.rblServiceTime.ClearSelection();
        this.rblTechnicalEfficiency.ClearSelection();
        this.rblProblemResolution.ClearSelection();
        this.txtComments.Text = "";
        this.chkContact.Checked = false;
        this.rblMethod.ClearSelection();
    }

    protected void btnGetFeedback_Click(object sender, EventArgs e)
    {       
        this.DisableControls();
        this.lstFeedback.Items.Clear();
        this.GetSelectedCustomerFeedback();
        this.DisplayFeedbackList();     
    }


    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            var description = new Description()
            {
                CustomerId = Convert.ToInt32(this.txtCustomerId.Text),
                FeedbackId = Convert.ToInt32(this.lstFeedback.SelectedValue),
                ServiceTime = Convert.ToInt32(this.rblServiceTime.SelectedValue),
                Efficiency = Convert.ToInt32(this.rblTechnicalEfficiency.SelectedValue),
                Resolution = Convert.ToInt32(this.rblProblemResolution.SelectedValue),
                Comments = this.txtComments.Text,
                Contact = this.chkContact.Checked,
                ContactMethod = this.rblMethod.SelectedValue
            };

            Session["Contact"] = description.Contact;
            Response.Redirect("FeedbackComplete.aspx");
        }

        catch (Exception)
        {
            this.lblMessage.ForeColor = Color.Red;
            this.lblMessage.Text = "Error creating Description object; invalid data.";
        }
    }
}