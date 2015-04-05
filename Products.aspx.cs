using System;
using System.Configuration;
using System.Data.OleDb;
using System.Drawing;

/// <summary>
/// Code-behind file for Products.
/// </summary>
/// <author> 
/// Daniel Stamps 
/// </author>
/// <version> 
/// Spring 2015
/// </version>
public partial class Products : System.Web.UI.Page
{
    /// <summary>
    /// Handles the Load event of the Page control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    /// <summary>
    /// Handles the Click event of the btnAddSoftware control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
    protected void btnAddSoftware_Click(object sender, EventArgs e)
    {
        var softwareId = this.txtInsertID.Text;
        var name = this.txtInsertName.Text;
        var version = this.txtInsertVersion.Text;
        var releaseDate = this.txtInsertReleaseDate.Text;

        var insertCount = this.Insert(softwareId, name, version, releaseDate);

        switch (insertCount)
        {
            case 0:
                this.lblInsertResult.ForeColor = Color.Red;
                this.lblInsertResult.Text = "Error adding new software to database: Duplicate SoftwareID.";
                break;
            case 1:
                this.gvProducts.DataBind();
                this.lblInsertResult.ForeColor = Color.Green;
                this.lblInsertResult.Text = "New software successfully added to database.";
                this.txtInsertID.Text = "";
                this.txtInsertName.Text = "";
                this.txtInsertVersion.Text = "";
                this.txtInsertReleaseDate.Text = "";
                Page.SetFocus(this.txtInsertID);
                break;
        }
    }

    /// <summary>
    /// Inserts the software with the given parameter values into the database.
    /// </summary>
    /// <param name="softwareId">The software identifier.</param>
    /// <param name="name">The name.</param>
    /// <param name="version">The version.</param>
    /// <param name="releaseDate">The release date.</param>
    /// <returns>The number of rows affected by the insert.</returns>
    private int Insert(string softwareId, string name, string version, string releaseDate)
    {
        var statement = string.Format("INSERT INTO Software " +
            "VALUES ('{0}', '{1}', '{2}', '{3}')", softwareId, name, version, releaseDate);
        var connection = new OleDbConnection(GetConnectionString());
        var command = new OleDbCommand(statement, connection);
        int insertCount;

        try
        {
            connection.Open();
            insertCount = command.ExecuteNonQuery();
        }
        catch (OleDbException)
        {
            insertCount = 0;
            return insertCount;
        }
        finally
        {
            connection.Close();
        }

        return insertCount;
    }

    /// <summary>
    /// Gets the connection string.
    /// </summary>
    /// <returns>The connection String.</returns>
    private static string GetConnectionString()
    {
        return ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
    }
}