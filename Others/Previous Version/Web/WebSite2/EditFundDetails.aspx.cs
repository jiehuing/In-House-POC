using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Diagnostics;
using System.Data.SqlClient;
using System.IO;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class EditFundDetails : System.Web.UI.Page
{
    bool logout = false;
    string regionName;
    string region = ConfigurationManager.AppSettings["gRegion"];
    string dtp = ConfigurationManager.AppSettings["gSearchDate"];
    string connectionString = ConfigurationManager.AppSettings["gConnectionString"];
    protected void Page_Load(object sender, EventArgs e)
    {
        //textLatestDate.Text = "2018-09-04";
        
        textRegion.Text = region;
        regionName = getRegionName(region);
        lblEditFundDetails.Text = "Edit " + regionName + " Fund Details";

        SqlConnection con = new SqlConnection(connectionString);
        string selectLatestDate = "select top 1 * from fundDetail where ISIN = '" + region + "' order by date DESC";
        SqlCommand latestDate = new SqlCommand(selectLatestDate, con);

        con.Open();
        DateTime latestDateValue;

        using (SqlDataReader read = latestDate.ExecuteReader())
        {
            while (read.Read())
            {
                latestDateValue = (DateTime)read["date"];
                textLatestDate.Text = latestDateValue.ToString();
            }
        }
        con.Close();
        btnLogout.OnClientClick = @"return confirm('Are you sure you want to Logout?');";

    }
    public string getRegionName(string regionCode)
    {
        if (regionCode.Equals("LU172001"))
        {
            return regionName = "Prestige";
        }
        else
        {
            return regionName = "Global";
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void ListView1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }

    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("Main.aspx");
    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {




        logout = true;

        ConfigurationManager.AppSettings["gUsername"] = "";
        ConfigurationManager.AppSettings["gPassword"] = "";
        Response.Redirect("Login.aspx");
        
    }

    protected void textLatestDate_TextChanged(object sender, EventArgs e)
    {

    }
}