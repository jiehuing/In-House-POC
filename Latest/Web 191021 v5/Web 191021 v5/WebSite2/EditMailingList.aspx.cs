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

public partial class EditMailingList : System.Web.UI.Page
{
    string regionName;
    string region = ConfigurationManager.AppSettings["gRegion"];
    string dtp = ConfigurationManager.AppSettings["gSearchDate"];
    string connectionString = ConfigurationManager.AppSettings["gConnectionString"];
    
    protected void Page_Load(object sender, EventArgs e)
    {
        textRegion.Text = region;
        regionName = getRegionName(region);
        lblMailingList.Text = "Edit " + regionName + " Mailing List";
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

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string email;
        string isin;
        SqlConnection con = new SqlConnection(connectionString);
        string selectCheckEmail = "select * from email where email ='" + textEmail.Text.Trim() + "' AND ISIN = '" + region + "'";
        SqlCommand checkEmail = new SqlCommand(selectCheckEmail, con);
        con.Open();
        using (SqlDataReader read = checkEmail.ExecuteReader())
        {
            while (read.Read())
            {
                email = (string)read["email"];
                isin = (string)read["isin"];
                textReadEmail.Text = email;
                textReadIsin.Text = isin;
            }
        }
        Debug.WriteLine(textReadEmail.Text);
        if(!textEmail.Text.Contains("@")==true)
        {
            string myStringVariable = "Wrong email format!";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
        }
        else if (String.IsNullOrEmpty(textReadEmail.Text))
        {
            string addEmail = "INSERT INTO email (email,ISIN) VALUES ('" + textEmail.Text.Trim() + "','" + region + "')";
            SqlCommand addCommand = new SqlCommand(addEmail, con);
            addCommand.ExecuteNonQuery();
            con.Close();
            textEmail.Text = null;
            string myStringVariable = "Successfully added!";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);

        }
        else
        {
            con.Close();
            string myStringVariable = "Email already exist!";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
        }
        textReadEmail.Text = null;

        GridView1.DataBind();
    }

    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
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


    protected void btnClear_Click(object sender, EventArgs e)
    {
        textEmail.Text = null;
    }
}