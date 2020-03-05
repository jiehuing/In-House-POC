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
    decimal tpv;
    decimal percentage;

    protected void Page_Load(object sender, EventArgs e)
    {
        Debug.WriteLine(region);
        textRegion.Text = region;
        regionName = getRegionName(region);
        lblCompanyInformation.Text = "Edit " + regionName + " Company Information";

        /*
        SqlConnection con = new SqlConnection(connectionString);
        string deleteTempTable = "DELETE FROM tempTable";
        string appendTable = "INSERT INTO tempTable SELECT * FROM companyinfo";
        SqlCommand dttCommand = new SqlCommand(deleteTempTable, con);
        SqlCommand atCommand = new SqlCommand(appendTable, con);
        con.Open();
        dttCommand.ExecuteNonQuery();
        atCommand.ExecuteNonQuery();
        con.Close();
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
        if (Decimal.TryParse(txtPercentage.Text, out percentage) && txtCompanyName.Text.Trim()!="" && txtSector.Text.Trim() != "" && txtTickerSymbol.Text.Trim() != "")
        {
            SqlConnection con = new SqlConnection(connectionString);
            string selectCompanyInfo = "select * from tempTable where fundTicker ='" + txtTickerSymbol.Text.Trim() + "' AND ISIN = '" + region + "'";
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
                string addCompany = "INSERT INTO temptable (status,companyName,sector,fixedHoldingRatio,fundTicker,ISIN) VALUES ('Alive','" + txtCompanyName.Text.Trim() + "','" + txtSector.Text.Trim() + "'," + txtPercentage.Text + ",'" + txtTickerSymbol.Text.Trim() + "','" + region + "')";
                SqlCommand addCommand = new SqlCommand(addCompany, con);
                addCommand.ExecuteNonQuery();
                con.Close();
                txtCompanyName.Text = null;
                txtSector.Text = null;
                txtTickerSymbol.Text = null;
                txtPercentage.Text = null;
                string myStringVariable = "Successfully added!";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);

            }
            else if (textReadStatus.Text.Equals("dead"))
            {
                string retrieveCompany = "update temptable set status = 'alive', sector = '" + txtSector.Text.Trim() + "', fixedHoldingRatio = '" + txtPercentage.Text + "' where fundTicker = '" + txtTickerSymbol.Text.Trim() + "'";
                SqlCommand retrieveCommand = new SqlCommand(retrieveCompany, con);
                retrieveCommand.ExecuteNonQuery();
                con.Close();
                txtCompanyName.Text = null;
                txtSector.Text = null;
                txtTickerSymbol.Text = null;
                txtPercentage.Text = null;
                string myStringVariable = "Successfully added!";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
            }
            else
            {
                con.Close();
                string myStringVariable = "Ticker Symbol already exist!";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
            }
            textReadStatus.Text = null;
            textReadCompanyName.Text = null;
            textReadSector.Text = null;
            textReadFHR.Text = null;
            textReadFundTicker.Text = null;
            textReadIsin.Text = null;

            gridView1.DataBind();
        }
        else
        {
            string myStringVariable = "Company not added due to incomplete or error information!";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
        }

        
        
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtCompanyName.Text = null;
        txtSector.Text = null;
        txtTickerSymbol.Text = null;
        txtPercentage.Text = null;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Debug.WriteLine(gridView1.Rows[0].Cells[0].Text);
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        gridView1.EditIndex = -1;
        DataBind();

        SqlConnection con = new SqlConnection(connectionString);
        string selectDisplayTotalPercentage = "select sum(fixedHoldingRatio) As tpv from tempTable where status = 'alive' AND ISIN = '" + region + "'";
        SqlCommand displayTotalPercentage = new SqlCommand(selectDisplayTotalPercentage, con);
        con.Open();
        using (SqlDataReader read = displayTotalPercentage.ExecuteReader())
        {
            while (read.Read())
            {
                tpv = (Decimal)read["tpv"];
                txtTPV.Text = tpv.ToString();
            }
        }
        con.Close();
        Debug.WriteLine(tpv);
        percentage = System.Convert.ToDecimal(txtTPV.Text);
        if (percentage==100)
        {
            //SqlConnection con = new SqlConnection(connectionString);
            string selectTempCopyToActual = "DELETE FROM [companyinfo]; INSERT into companyinfo SELECT * FROM tempTable";
            SqlCommand tempCopyToActual = new SqlCommand(selectTempCopyToActual, con);
            con.Open();
            tempCopyToActual.ExecuteNonQuery();
            con.Close();
            string myStringVariable = "Change(s) successfully saved!";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
        }
        else
        {
            string myStringVariable = "Error! Total percentage of holdings must be 100%! ";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
        }

    }
}