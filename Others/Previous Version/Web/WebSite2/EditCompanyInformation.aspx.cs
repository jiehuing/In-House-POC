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

public partial class EditCompanyInformation : System.Web.UI.Page
{
    ArrayList deleteList = new ArrayList();
    ArrayList addList = new ArrayList();
    ArrayList editList = new ArrayList();
    Boolean fault = false;
    string regionName;
    string region = ConfigurationManager.AppSettings["gRegion"];
    //string dtp = ConfigurationManager.AppSettings["gSearchDate"];
    string connectionString = ConfigurationManager.AppSettings["gConnectionString"];

    string status;
    string companyName;
    string sector;
    decimal fixedHoldingRatio;
    string fundTicker;
    string Isin;
    protected void Page_Load(object sender, EventArgs e)
    {
        Debug.WriteLine(region);
        textRegion.Text = region;
        regionName = getRegionName(region);
        lblCompanyInformation.Text = "Edit " + regionName + " Company Information";

        
        /*
        btnLogout.OnClientClick = @"return confirm('Are you sure you want to Logout?');";
        if(btnLogout.OnClientClick.Equals("confirm"))
        {
            
        }
        else
        {
            string myStringVariable = "Logout successfully!";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
        }
        */
        
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

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

    protected void txtCompanyName_TextChanged(object sender, EventArgs e)
    {

    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        ConfigurationManager.AppSettings["gUsername"] = "";
        ConfigurationManager.AppSettings["gPassword"] = "";
        Response.Redirect("Login.aspx");
    }

    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("Main.aspx");
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(connectionString);
        string selectCompanyInfo = "select * from companyinfo where fundTicker ='" + txtTickerSymbol.Text.Trim() + "' AND ISIN = '" + region + "'";
        SqlCommand companyInfo = new SqlCommand(selectCompanyInfo, con);
        con.Open();
        using (SqlDataReader read = companyInfo.ExecuteReader())
        {
            while (read.Read())
            {
                status = (string)read["status"];
                companyName = (string)read["companyName"];
                sector = (string)read["sector"];
                fixedHoldingRatio = (Decimal)read["fixedHoldingRatio"];
                fundTicker = (string)read["fundTicker"];
                Isin = (string)read["Isin"];
                textReadStatus.Text = status;
                textReadCompanyName.Text = companyName;
                textReadSector.Text = sector;
                textReadFHR.Text = fixedHoldingRatio.ToString();
                textReadFundTicker.Text = fundTicker;
                textReadIsin.Text = Isin;
            }
        }
        Debug.WriteLine(textReadStatus.Text);
            if (String.IsNullOrEmpty(textReadStatus.Text))
            {
                string addCompany = "INSERT INTO companyinfo (status,companyName,sector,fixedHoldingRatio,fundTicker,ISIN) VALUES ('Alive','" + txtCompanyName.Text.ToUpper() + "','" + txtSector.Text.ToUpper() + "'," + txtPercentage.Text + ",'" + txtTickerSymbol.Text.ToUpper() + "','" + region + "')";
                SqlCommand addCommand = new SqlCommand(addCompany, con);
                addCommand.ExecuteNonQuery();
                con.Close();
                string myStringVariable = "Successfully added!";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);

            }
            else if (textReadStatus.Text.Equals("dead"))
            {
                string retrieveCompany = "update companyinfo set status = 'alive', sector = '" + txtSector.Text.ToUpper() + "', fixedHoldingRatio = '" + txtPercentage.Text + "' where fundTicker = '" + txtTickerSymbol.Text + "'";
                SqlCommand retrieveCommand = new SqlCommand(retrieveCompany, con);
                retrieveCommand.ExecuteNonQuery();
                con.Close();
                string myStringVariable = "Successfully added!";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
            }
            else
            {
                string myStringVariable = "Ticker Symbol already exist!";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
            }
        
        gridView1.DataBind();
        /*
        try
        {
            
            
        }
        catch(System.Data.SqlClient.SqlException)
        {
            string myStringVariable = "Ticker Symbol already exist!";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
        }
        */
        
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtCompanyName.Text = "";
        txtSector.Text = "";
        txtTickerSymbol.Text = "";
        txtPercentage.Text = "";

    }
}