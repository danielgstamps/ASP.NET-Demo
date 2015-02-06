using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FeedbackComplete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Contact"] == null)
        {
            return;
        }

        var contact = Convert.ToBoolean(Session["Contact"]);
        if (contact)
        {
            this.lblContact.Text = "We will be contacting you soon!";
        }
        else
        {
            this.lblContact.Text = "Have a nice day!";
        }
    }

    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("CustomerFeedback.aspx");
    }
}