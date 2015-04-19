using System.Configuration;

/// <summary>
/// Utility class representing the BallGames Database
/// </summary>
/// <author>
/// Daniel Stamps
/// </author>
/// <version>
/// Spring 2015
/// </version>
public static class BallGameDatabase
{
    /// <summary>
    /// Gets the connection string.
    /// </summary>
    /// <returns>The connection string.</returns>
    public static string GetConnectionString()
    {
        return ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
    }
}