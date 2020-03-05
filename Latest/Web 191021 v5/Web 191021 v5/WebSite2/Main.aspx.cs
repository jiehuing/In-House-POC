using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Configuration;
using System.Diagnostics;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


    public partial class Main : System.Web.UI.Page
    {

        string connectionString = ConfigurationManager.AppSettings["gConnectionString"];
        string regionCode;
        DateTime currentDate = DateTime.Now;
        //bool btnSubmitWasClicked = false;
        int currentYear;
        int currentMonth;
        int currentDay;
        protected void Page_Load(object sender, EventArgs e)
        {
        if (!IsPostBack)
        {  
            if (ConfigurationManager.AppSettings["gUsername"].Equals("") || ConfigurationManager.AppSettings["gPassword"].Equals(""))
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                currentYear = Int32.Parse(currentDate.ToString("yyyy"));
                currentMonth = Int32.Parse(currentDate.ToString("MM"));
                currentDay = Int32.Parse(currentDate.ToString("dd"));

                if (!IsPostBack)
                {
                    LoadYears();
                    LoadMonths();
                    Calendar1.VisibleDate = new DateTime(currentYear, currentMonth, currentDay);
                    Calendar1.SelectedDate = new DateTime(currentYear, currentMonth, currentDay);
                }

            }
        }
        btnLogout.OnClientClick = @"return confirm('Are you sure you want to Logout?');";
        }
        private void LoadYears()
        {
            for (int i = 1950; i <= Int32.Parse(currentDate.ToString("yyyy")); i++)
            {
                DropDownList2.Items.Add(i.ToString());
            }
            DropDownList2.SelectedIndex = DropDownList2.Items.Count - 1;
        }

        private void LoadMonths()
        {
            string[] month = new string[12] { "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" };
            foreach (string s in month)
            {
                DropDownList3.Items.Add(s);
            }
            DropDownList3.SelectedIndex = currentMonth - 1;
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            /*
            int year = Convert.ToInt32(DropDownList2.SelectedValue);
            int month = Convert.ToInt32(DropDownList3.SelectedValue);
            Calendar1.VisibleDate = new DateTime(year, month, 1);
            Calendar1.SelectedDate = new DateTime(year, month, 1);
            */
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            /*
            int year = Convert.ToInt16(DropDownList2.SelectedValue);
            int month = Convert.ToInt16(DropDownList3.SelectedValue);
            Calendar1.VisibleDate = new DateTime(year, month, 1);
            Calendar1.SelectedDate = new DateTime(year, month, 1);
            */
        }


        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex == 0)
            {
                DateTime now = DateTime.Now;
                lblDate.Visible = true;
                Calendar1.Visible = true;
                lblYear.Visible = true;
                lblMonth.Visible = true;
                DropDownList2.Visible = true;
                DropDownList3.Visible = true;
                btnGTD.Visible = true;
        }
            else
            {
                lblDate.Visible = false;
                Calendar1.Visible = false;
                lblYear.Visible = false;
                lblMonth.Visible = false;
                DropDownList2.Visible = false;
                DropDownList3.Visible = false;
                btnGTD.Visible = false;
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //Calendar1.SelectedDate = new DateTime(year, month, 1);
            //Calendar1.VisibleDate = new DateTime(Int32.Parse(DropDownList2.SelectedValue), DropDownList3.SelectedIndex + 1, 1);
            string date = Calendar1.SelectedDate.ToShortDateString();
            string[] dd = date.Split('/');
            string passDate;
            passDate = Calendar1.SelectedDate.ToString("yyyy-MM-dd");
            //Response.Write(Calendar1.SelectedDate.ToString("dd/MM/yyyy"));

            if (DropDownList1.SelectedIndex < 0)
            {
                string myStringVariable = "Please select an option!";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
            }
            else if (RadioButtonList1.SelectedIndex < 0)
            {
                string myStringVariable = "Please select a region!";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
            }
            else if (DropDownList1.SelectedIndex == 0)
            {
                regionCode = RadioButtonList1.SelectedValue;
                passDate = Calendar1.SelectedDate.ToString("yyyy-MM-dd");

                string dtp = passDate;
                DateTime dtpRead;
                string regionRead;

            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["gConnectionString"].ToString());
            //string selectSql = "select * from main where Date ='" + dtp + "' AND ISIN ='" + regionCode + "'";
            string selectSql = "select * from main where Date ='" + dtp + "' AND ISIN ='" + regionCode + "'";
            SqlCommand com = new SqlCommand(selectSql, con);
                con.Open();

                using (SqlDataReader read = com.ExecuteReader())
                {
                    while (read.Read())
                    {
                        dtpRead = (DateTime)read["date"];
                        regionRead = (string)read["ISIN"];
                        textDtp.Text = dtpRead.ToString();
                        textRegion.Text = dtpRead.ToString();
                    }
                }
                if (String.IsNullOrEmpty(textDtp.Text) || String.IsNullOrEmpty(textRegion.Text))
                {
                //dateTimePicker1.CustomFormat = "dd/MM/yyyy";
                string myStringVariable = "No data found on this date!";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
                //System.Windows.Forms.MessageBox.Show("No data found on this date!");
                }
                else
                {
                    ConfigurationManager.AppSettings["gSearchDate"] = dtp;
                    ConfigurationManager.AppSettings["gRegion"] = RadioButtonList1.SelectedValue;
                    Response.Redirect("SearchData.aspx");

                    /*
                    this.Visible = false;
                    SearchData frm3 = new SearchData(dateTimePicker1.Text, region);
                    frm3.Show();
                    */
                }
                con.Close();

            }
            else if (DropDownList1.SelectedIndex == 1)
            {
                ConfigurationManager.AppSettings["gSearchDate"] = passDate;
                ConfigurationManager.AppSettings["gRegion"] = RadioButtonList1.SelectedValue;
                Response.Redirect("EditFundDetails.aspx");

            /*
            EditFundDetails frm7 = new EditFundDetails(region);
            this.Visible = false;
            frm7.Show();
            */
        }
            else if (DropDownList1.SelectedIndex == 3)
            {
                ConfigurationManager.AppSettings["gRegion"] = RadioButtonList1.SelectedValue;
                Response.Redirect("EditMailingList.aspx");

                /*
                region = getRegion(radioButton1.Checked);
                EditMailingList frm6 = new EditMailingList(region);
                this.Visible = false;
                frm6.Show();
                */
            }
            else if (DropDownList1.SelectedIndex == 2 && RadioButtonList1.SelectedIndex >= 0)
            {
                SqlConnection con = new SqlConnection(connectionString);
                string selectActualCopyToTemp = "DELETE FROM [tempTable]; INSERT tempTable SELECT * FROM companyinfo";
                SqlCommand actualCopyToTemp = new SqlCommand(selectActualCopyToTemp, con);
                con.Open();
                actualCopyToTemp.ExecuteNonQuery();
                con.Close();

                ConfigurationManager.AppSettings["gRegion"] = RadioButtonList1.SelectedValue;
                Response.Redirect("EditCompanyInformation.aspx");

                /*
                region = getRegion(radioButton1.Checked);
                EditCompanyInformation frm5 = new EditCompanyInformation(region);
                this.Visible = false;
                frm5.Show();
                */
            }

        }

        protected void SetCalendarVisibleDate()
        {

        }

        protected void btnGTD_Click(object sender, EventArgs e)
        {
            Calendar1.VisibleDate = new DateTime(Int32.Parse(DropDownList2.SelectedValue), DropDownList3.SelectedIndex + 1, 1);
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList2_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        ConfigurationManager.AppSettings["gUsername"] = "";
        ConfigurationManager.AppSettings["gPassword"] = "";
        Response.Redirect("Login.aspx");
        
    }
}
