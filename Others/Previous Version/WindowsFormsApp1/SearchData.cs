using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Configuration;
using System.Windows.Forms.DataVisualization.Charting;
using System.Diagnostics;

namespace WindowsFormsApp1
{
    public partial class SearchData : Form
    {
        public SearchData(string dtp, string region)
        {
            InitializeComponent();
            hScrollBar1.Value = 1;
            tableLayoutPanel1.CellPaint += tableLayoutPanel1_CellPaint;
            tableLayoutPanel2.CellPaint += tableLayoutPanel2_CellPaint;
            tableLayoutPanel3.CellPaint += tableLayoutPanel3_CellPaint;
            chart1_Click(null, null);
            DateTime date;
            DateTime.TryParse(dtp, out date);
            textSearchDate.Text = date.ToString("dd/MM/yyyy");
            textSearchDate.ReadOnly = true;
            //textSearchDate.BackColor = System.Drawing.SystemColors.Window;

            string oya = date.AddYears(-1).ToString("yyyy/MM/dd");
            string[] oyaList = oya.Split("/".ToArray());
            string sma = date.AddMonths(-6).ToString("yyyy/MM/dd");
            string[] smaList = sma.Split("/".ToArray());
            string tma = date.AddMonths(-3).ToString("yyyy/MM/dd");
            string[] tmaList = tma.Split("/".ToArray());
            string oma = date.AddMonths(-1).ToString("yyyy/MM/dd");
            string[] omaList = oma.Split("/".ToArray());
            string ytd = date.ToString("yyyy/MM/dd");
            string[] ytdList = ytd.Split("/".ToArray());
            string strSearchYear = date.ToString("yyyy");

            string conString = @"Data Source=A039LSIN;Initial Catalog=POC;Integrated Security=SSPI";
            //string conString = @"Data Source=192.168.43.85,1433;Persist Security Info = True; User ID = admin;Password = pass1234";
            //string conString = "Data Source=localhost;Initial Catalog=LoginScreen;Integrated Security=True";
            SqlConnection con = new SqlConnection(conString);
            string selectSearchDate = "select * from testing where Date ='" + dtp + "'";
            string selectOneYearAgo = "select top 1 * from testing where MONTH(Date) = '" + oyaList[1] + "' AND YEAR(date) = '" + oyaList[0] + "' order by Date DESC"; //AND ISIN='" + region + "'  order by Date DESC";
            string selectSixMonthsAgo = "select top 1 * from testing where MONTH(Date) = '" + smaList[1] + "' AND YEAR(date) = '" + smaList[0] + "' order by Date DESC";
            string selectThreeMonthsAgo = "select top 1 * from testing where MONTH(Date) = '" + tmaList[1] + "' AND YEAR(date) = '" + tmaList[0] + "' order by Date DESC";
            string selectOneMonthsAgo = "select top 1 * from testing where MONTH(Date) = '" + omaList[1] + "' AND YEAR(date) = '" + omaList[0] + "' order by Date DESC";
            string selectSinceInception = "select top 1 * from testing order by date";
            string selectInceptionYear = "select top 1 YEAR(date) AS Date from testing order by date";
            string selectInceptionMonth = "select top 1 MONTH(date) AS Date from testing order by date";
            string selectYearToDate = "select top 1 * from testing where YEAR(date) = '" + ytdList[0] + "' order by Date"; //Remove DESC if need to be first day of the year


            SqlCommand searchDate = new SqlCommand(selectSearchDate, con);
            SqlCommand oneYearAgo = new SqlCommand(selectOneYearAgo, con);
            SqlCommand sixMonthsAgo = new SqlCommand(selectSixMonthsAgo, con);
            SqlCommand threeMonthsAgo = new SqlCommand(selectThreeMonthsAgo, con);
            SqlCommand oneMonthsAgo = new SqlCommand(selectOneMonthsAgo, con);
            SqlCommand sinceInception = new SqlCommand(selectSinceInception, con);
            SqlCommand yearToDate = new SqlCommand(selectYearToDate, con);
            SqlCommand inceptionYear = new SqlCommand(selectInceptionYear, con);
            SqlCommand inceptionMonth = new SqlCommand(selectInceptionMonth, con);

            #region Commented Code
            //SqlDataAdapter da1 = new SqlDataAdapter(currentDate);
            //SqlDataAdapter da2 = new SqlDataAdapter(oneYearAgo);
            //DataTable dt1 = new DataTable();
            //DataTable dt2 = new DataTable();
            //da1.Fill(dt1);
            //da2.Fill(dt2);
            //if(da2.ToString())
            #endregion

            con.Open();

            decimal levy = 0.02m;
            decimal searchNav;
            decimal searchBi;
            decimal searchOffer;
            decimal oyaNav;
            decimal oyaBi;
            decimal oyaBidBid;
            decimal oyaBenchmark;
            decimal oyaOffer;
            decimal oyaOfferBid;
            decimal smaNav;
            decimal smaBi;
            decimal smaBidBid;
            decimal smaBenchmark;
            decimal smaOffer;
            decimal smaOfferBid;
            decimal tmaNav;
            decimal tmaBi;
            decimal tmaBidBid;
            decimal tmaBenchmark;
            decimal tmaOffer;
            decimal tmaOfferBid;
            decimal omaNav;
            decimal omaBi;
            decimal omaBidBid;
            decimal omaBenchmark;
            decimal omaOffer;
            decimal omaOfferBid;
            decimal siNav;
            decimal siBi;
            decimal siBidBid;
            decimal siBenchmark;
            decimal siOffer;
            decimal siOfferBid;
            decimal ytdNav;
            decimal ytdBi;
            decimal ytdBidBid;
            decimal ytdBenchmark;
            decimal ytdOffer;
            decimal ytdOfferBid;
            DateTime siDate;

            int searchYear = Int32.Parse(strSearchYear);
            int inceptYear;
            int inceptMonth;

            using (SqlDataReader read = searchDate.ExecuteReader())
            {
                while (read.Read())
                {
                    searchNav = (Decimal)read["Nav"];
                    searchBi = (Decimal)read["Bi"];
                    searchOffer = (Decimal)read["Offer"];
                    textSearchNav.Text = searchNav.ToString();
                    textSearchBi.Text = searchBi.ToString();
                    textSearchOffer.Text = searchOffer.ToString();
                }
            }
            using (SqlDataReader read = oneYearAgo.ExecuteReader())
            {
                while (read.Read())
                {
                    oyaNav = (Decimal)read["Nav"];
                    oyaBi = (Decimal)read["Bi"];
                    oyaOffer = (Decimal)read["Offer"];
                    textOyaNav.Text = oyaNav.ToString();
                    textOyaBi.Text = oyaBi.ToString();
                    textOyaOffer.Text = oyaOffer.ToString();
                }
            }
            using (SqlDataReader read = sixMonthsAgo.ExecuteReader())
            {
                while (read.Read())
                {
                    smaNav = (Decimal)read["Nav"];
                    smaBi = (Decimal)read["Bi"];
                    smaOffer = (Decimal)read["Offer"];
                    textSmaNav.Text = smaNav.ToString();
                    textSmaBi.Text = smaBi.ToString();
                    textSmaOffer.Text = smaOffer.ToString();
                }
            }
            using (SqlDataReader read = threeMonthsAgo.ExecuteReader())
            {
                while (read.Read())
                {
                    tmaNav = (Decimal)read["Nav"];
                    tmaBi = (Decimal)read["Bi"];
                    tmaOffer = (Decimal)read["Offer"];
                    textTmaNav.Text = tmaNav.ToString();
                    textTmaBi.Text = tmaBi.ToString();
                    textTmaOffer.Text = tmaOffer.ToString();
                }
            }
            using (SqlDataReader read = oneMonthsAgo.ExecuteReader())
            {
                while (read.Read())
                {
                    omaNav = (Decimal)read["Nav"];
                    omaBi = (Decimal)read["Bi"];
                    omaOffer = (Decimal)read["Offer"];
                    textOmaNav.Text = omaNav.ToString();
                    textOmaBi.Text = omaBi.ToString();
                    textOmaOffer.Text = omaOffer.ToString();
                }
            }
            using (SqlDataReader read = yearToDate.ExecuteReader())
            {
                while (read.Read())
                {
                    ytdNav = (Decimal)read["Nav"];
                    ytdBi = (Decimal)read["Bi"];
                    ytdOffer = (Decimal)read["Offer"];
                    textYtdNav.Text = ytdNav.ToString();
                    textYtdBi.Text = ytdBi.ToString();
                    textYtdOffer.Text = ytdOffer.ToString();
                }
            }
            using (SqlDataReader read = sinceInception.ExecuteReader())
            {
                while (read.Read())
                {
                    siNav = (Decimal)read["Nav"];
                    siBi = (Decimal)read["Bi"];
                    siOffer = (Decimal)read["Offer"];
                    siDate = (DateTime)read["Date"];
                    textSiNav.Text = siNav.ToString();
                    textSiBi.Text = siBi.ToString();
                    textSiOffer.Text = siOffer.ToString();
                    textSiDate.Text = siDate.ToString("yyyy/MM/dd");
                    // Debug.WriteLine(textSiDate.Text);
                }
            }
            using (SqlDataReader read = inceptionYear.ExecuteReader())
            {
                while (read.Read())
                {
                    inceptYear = (int)read["Date"];
                    textInceptYear.Text = inceptYear.ToString();
                }
            }
            using (SqlDataReader read = inceptionMonth.ExecuteReader())
            {
                while (read.Read())
                {
                    inceptMonth = (int)read["Date"];
                    textInceptMonth.Text = inceptMonth.ToString();
                }
            }



            //string selectEveryMonth = "select top 1 * from testing where YEAR(date) = '" + x + "' AND MONTH(date)'" + y +'" order by Date DESC";
            //SqlCommand everyMonth = new SqlCommand(selectEveryMonth, con);

            int numberOfYears = searchYear - Int32.Parse(textInceptYear.Text) + 1;

            searchNav = System.Convert.ToDecimal(textSearchNav.Text);
            searchBi = System.Convert.ToDecimal(textSearchBi.Text);
            searchOffer = System.Convert.ToDecimal(textSearchOffer.Text);
            //levy = System.Convert.ToDecimal(textLevy.Text);
            Debug.WriteLine(textOyaNav.Text);
            if (String.IsNullOrEmpty(textOyaNav.Text))
            {
                textOyaOfferBid.Text = "N.A.";
                textOyaBidBid.Text = "N.A.";
                textOyaBenchmark.Text = "N.A.";
            }
            else
            {
                oyaNav = System.Convert.ToDecimal(textOyaNav.Text);
                oyaBidBid = ((searchNav - oyaNav) / oyaNav) * 100;
                textOyaBidBid.Text = oyaBidBid.ToString("0.00");
                oyaBi = System.Convert.ToDecimal(textOyaBi.Text);
                oyaBenchmark = ((searchBi - oyaBi) / oyaBi) * 100;
                textOyaBenchmark.Text = oyaBenchmark.ToString("0.00");
                oyaOffer = System.Convert.ToDecimal(textOyaOffer.Text);
                oyaOfferBid = (((searchOffer + (searchOffer * levy)) - oyaNav) / oyaNav) * 100;
                textOyaOfferBid.Text = oyaOfferBid.ToString("0.00");
            }

            if (String.IsNullOrEmpty(textSmaNav.Text))
            {
                textSmaOfferBid.Text = "N.A.";
                textSmaBidBid.Text = "N.A.";
                textSmaBenchmark.Text = "N.A.";
            }
            else
            {
                smaNav = System.Convert.ToDecimal(textSmaNav.Text);
                smaBidBid = ((searchNav - smaNav) / smaNav) * 100;
                textSmaBidBid.Text = smaBidBid.ToString("0.00");
                smaBi = System.Convert.ToDecimal(textSmaBi.Text);
                smaBenchmark = ((searchBi - smaBi) / smaBi) * 100;
                textSmaBenchmark.Text = smaBenchmark.ToString("0.00");
                smaOffer = System.Convert.ToDecimal(textSmaOffer.Text);
                smaOfferBid = (((searchOffer + (searchOffer * levy)) - smaNav) / smaNav) * 100;
                textSmaOfferBid.Text = smaOfferBid.ToString("0.00");
            }

            if (String.IsNullOrEmpty(textTmaNav.Text))
            {
                textTmaOfferBid.Text = "N.A.";
                textTmaBidBid.Text = "N.A.";
                textTmaBenchmark.Text = "N.A.";
            }
            else
            {
                tmaNav = System.Convert.ToDecimal(textTmaNav.Text);
                tmaBidBid = ((searchNav - tmaNav) / tmaNav) * 100;
                textTmaBidBid.Text = tmaBidBid.ToString("0.00");
                tmaBi = System.Convert.ToDecimal(textTmaBi.Text);
                tmaBenchmark = ((searchBi - tmaBi) / tmaBi) * 100;
                textTmaBenchmark.Text = tmaBenchmark.ToString("0.00");
                tmaOffer = System.Convert.ToDecimal(textTmaOffer.Text);
                tmaOfferBid = (((searchOffer + (searchOffer * levy)) - tmaNav) / tmaNav) * 100;
                textTmaOfferBid.Text = tmaOfferBid.ToString("0.00");
            }

            if (String.IsNullOrEmpty(textOmaNav.Text))
            {
                textOmaOfferBid.Text = "N.A.";
                textOmaBidBid.Text = "N.A.";
                textOmaBenchmark.Text = "N.A.";
            }
            else
            {
                omaNav = System.Convert.ToDecimal(textOmaNav.Text);
                omaBidBid = ((searchNav - omaNav) / omaNav) * 100;
                textOmaBidBid.Text = omaBidBid.ToString("0.00");
                omaBi = System.Convert.ToDecimal(textOmaBi.Text);
                omaBenchmark = ((searchBi - omaBi) / omaBi) * 100;
                textOmaBenchmark.Text = omaBenchmark.ToString("0.00");
                omaOffer = System.Convert.ToDecimal(textOmaOffer.Text);
                omaOfferBid = (((searchOffer + (searchOffer * levy)) - omaNav) / omaNav) * 100;
                textOmaOfferBid.Text = omaOfferBid.ToString("0.00");
            }

            if (String.IsNullOrEmpty(textYtdNav.Text))
            {
                textYtdOfferBid.Text = "N.A.";
                textYtdBidBid.Text = "N.A.";
                textYtdBenchmark.Text = "N.A.";
            }
            else
            {
                ytdNav = System.Convert.ToDecimal(textYtdNav.Text);
                ytdBidBid = ((searchNav - ytdNav) / ytdNav) * 100;
                textYtdBidBid.Text = ytdBidBid.ToString("0.00");
                ytdBi = System.Convert.ToDecimal(textYtdBi.Text);
                ytdBenchmark = ((searchBi - ytdBi) / ytdBi) * 100;
                textYtdBenchmark.Text = ytdBenchmark.ToString("0.00");
                ytdOffer = System.Convert.ToDecimal(textYtdOffer.Text);
                ytdOfferBid = (((searchOffer + (searchOffer * levy)) - ytdNav) / ytdNav) * 100;
                textYtdOfferBid.Text = ytdOfferBid.ToString("0.00");
            }

            siNav = System.Convert.ToDecimal(textSiNav.Text);
            siBidBid = (((searchNav - siNav) / siNav) * 100) / numberOfYears;
            textSiBidBid.Text = siBidBid.ToString("0.00");
            siBi = System.Convert.ToDecimal(textSiBi.Text);
            siBenchmark = ((searchBi - siBi) / siBi) * 100 / numberOfYears;
            textSiBenchmark.Text = siBenchmark.ToString("0.00");
            siOffer = System.Convert.ToDecimal(textSiOffer.Text);
            siOfferBid = (((searchOffer + (searchOffer * levy)) - siNav) / siNav) * 100 / numberOfYears;
            textSiOfferBid.Text = siOfferBid.ToString("0.00");

            var chart = chart1.ChartAreas[0];
            var chartx = chart2.ChartAreas[0];

            var s = new Series();
            var t = new Series();
            var u = new Series();
            s.ChartType = SeriesChartType.Line;
            t.ChartType = SeriesChartType.Line;
            u.ChartType = SeriesChartType.Bar;
            DateTime searchDateDateTime;
            DateTime.TryParse(textSearchDate.Text, out searchDateDateTime);
            textSearchDate.Text = date.ToString("yyyy/MM/dd");
            string[] textSearchDateArray = textSearchDate.Text.Split("/".ToArray());
            string[] textSiDateArray = textSiDate.Text.Split("/".ToArray());

            int siMonth = Int32.Parse(textSiDateArray[1]);
            int siYear = Int32.Parse(textSiDateArray[0]);
            int sMonth = Int32.Parse(textSearchDateArray[1]);
            int sYear = Int32.Parse(textSearchDateArray[0]);
            int totalSiMonths = (siYear * 12) + siMonth;
            int totalSMonths = (sYear * 12) + sMonth;
            int totalMonths = totalSMonths - totalSiMonths;

            var d = new DateTime(siYear, siMonth, 01);

            int siIntMonth = siMonth;
            int siIntYear = siYear;
            decimal percentNav;
            decimal nav;
            decimal decNav;
            decimal percentBi;
            decimal bi;
            decimal decBi;
            decimal yMin = 100.00m;
            decimal yMax = 100.00m;
            int yMinInt;
            int yMaxInt;
            for (int i = 0; i <= totalMonths; i++)
            {
                if (siIntMonth == 13)
                {
                    siIntYear = siIntYear + 1;
                    siIntMonth = 1;
                }
                string selectEveryMonth = "select top 1 * from testing where YEAR(date) = '" + siIntYear + "' AND MONTH(date) ='" + siIntMonth + "' order by Date DESC";

                SqlCommand everyMonth = new SqlCommand(selectEveryMonth, con);
                using (SqlDataReader read = everyMonth.ExecuteReader())
                {
                    while (read.Read())
                    {
                        nav = (Decimal)read["Nav"];
                        bi = (Decimal)read["Bi"];
                        textNav.Text = nav.ToString();
                        textBi.Text = bi.ToString();
                    }
                }

                if (i == 0)
                {
                    s.Points.AddXY(d.AddMonths(i), 100);
                    t.Points.AddXY(d.AddMonths(i), 100);
                }
                else
                {
                    decNav = System.Convert.ToDecimal(textNav.Text);
                    percentNav = ((decNav - siNav) / siNav) * 100;
                    percentNav = 100 + percentNav;
                    decBi = System.Convert.ToDecimal(textBi.Text);
                    percentBi = ((decBi - siBi) / siBi) * 100;
                    percentBi = 100 + percentBi;
                    if (yMin > percentNav || yMin > percentBi)
                    {
                        if (percentNav < percentBi)
                        {
                            yMin = percentNav;
                        }
                        else
                        {
                            yMin = percentBi;
                        }
                    }
                    else if (yMax < percentNav || yMax < percentBi)
                    {
                        if (percentNav > percentBi)
                        {
                            yMax = percentNav;
                        }
                        else
                        {
                            yMax = percentBi;
                        }
                    }
                    s.Points.AddXY(d.AddMonths(i), percentNav);
                    t.Points.AddXY(d.AddMonths(i), percentBi);
                }
                siIntMonth++;

            }
            yMin = yMin / 10;
            yMin = Math.Round(yMin, 0);
            yMin = yMin * 10;
            yMinInt = Decimal.ToInt32(yMin);
            yMax = yMax / 10;
            yMax = Math.Round(yMax, 0);
            yMax = yMax * 10;
            yMaxInt = Decimal.ToInt32(yMax);
            chart1.Series.Clear();
            chart1.Series.Add(s);
            chart1.Series.Add(t);
            chart2.Series.Add(u);
            chart1.ChartAreas[0].AxisY2.Enabled = AxisEnabled.True;

            //chart.AxisX.Minimum = 0;
            chart.AxisY.Minimum = yMinInt - 10;
            //chart.AxisX.Maximum = 0;
            chart.AxisY.Maximum = yMaxInt + 10;
            chart.AxisY2.Minimum = chart.AxisY.Minimum;
            chart.AxisY2.Maximum = chart.AxisY.Maximum;

            chart1.ChartAreas[0].AxisX.MajorGrid.Enabled = false;
            chart1.ChartAreas[0].AxisY.MajorGrid.Enabled = false;
            chart1.ChartAreas[0].AxisY2.MajorGrid.Enabled = false;
            //chart1.ChartAreas[0].AxisX.MinorGrid.Enabled = true;
            //chart1.ChartAreas[0].AxisY.MinorGrid.Enabled = true;
            //chart1.ChartAreas[0].AxisY2.MinorGrid.Enabled = true;

            //chart1.Series[0].YAxisType = AxisType.Secondary;
            //chart.AxisX.Interval = 3;
            chart.AxisX.IsLabelAutoFit = true;
            chart.AxisX.LabelStyle.Angle = -45;
            chart.AxisY.Interval = 10;
            chart.AxisY2.Interval = 10;
            //chart1.Series[0].LegendText = "Bid-Bid";
            //chart1.Series[1].LegendText = "Benchmark";
            chart1.Series[0].Color = Color.SteelBlue;
            chart1.Series[1].Color = Color.LightSteelBlue;
            chart1.Series[0].IsVisibleInLegend = true;
            chart1.Series[1].IsVisibleInLegend = true;
            chart1.Series[0].XValueType = ChartValueType.DateTime;
            chart1.ChartAreas[0].AxisX.LabelStyle.Format = "MM/yy";
            chart1.ChartAreas[0].AxisX.Interval = 1;
            chart1.ChartAreas[0].AxisX.IntervalType = DateTimeIntervalType.Months;
            chart1.ChartAreas[0].AxisX.IntervalOffset = 0;

            //chart1.Series[0].XValueType = ChartValueType.DateTime;
            DateTime minDate = new DateTime(siYear, siMonth, 01);
            DateTime maxDate = new DateTime(sYear, sMonth, 01); // or DateTime.Now;
            chart1.ChartAreas[0].AxisX.Minimum = minDate.ToOADate();
            chart1.ChartAreas[0].AxisX.Maximum = maxDate.ToOADate();

            /*
            string selectSql = "select top 5 ci.companyname, ci.sector, ci.fixedHoldingRatio from dailyFund df join companyinfo ci on df.fundticker = ci.fundticker where df.ISIN = 'LU172001' AND df.date = '2018-09-04' AND ci.status = 'alive' order by(df.shares* df.price) DESC ";
            SqlCommand com = new SqlCommand(selectSql, con);

            SqlDataAdapter da = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Open();
            Boolean x = false;
            //Debug.WriteLine(dateTimePicker1.Text);

            foreach (DataRow dr in dt.Rows)
            {
                //Debug.WriteLine((Convert.ToDateTime(dr["Date"]).ToString("dd/MM/yyyy")));
                if (dateTimePicker1.Text.Equals(Convert.ToDateTime(dr["Date"]).ToString("yyyy/MM/dd")))
                {
                    x = true;
                    this.Visible = false;
                    SearchData frm3 = new SearchData(dateTimePicker1.Text);
                    frm3.Show();
                    break;
                }
            }
            */

            //var original = chart2.Series.Add("Original");
            //var modified = chart2.Series.Add("Modified");
            chart2.ChartAreas[0].AxisY.MajorGrid.Enabled = false;
            //chart2.ChartAreas[0].AxisY.MinorGrid.Enabled = false;
            chart2.ChartAreas[0].AxisX.MajorGrid.Enabled = false;
            //chart2.ChartAreas[0].AxisX.MinorGrid.Enabled = false;
            //chart2.Series[0].IsValueShownAsLabel = true;
            //chart2.ChartAreas[0].AxisX.Minimum = 0;
            //chart2.ChartAreas[0].AxisX.Maximum = 20;
            u.Points.AddXY("REAL ESTATE", 10);
            u.Points.AddXY("TECHNOLOGY", 10);
            u.Points.AddXY("CONSUMER CYCLICAL", 10);
            u.Points.AddXY("INDUSTRIALS", 20);
            u.Points.AddXY("COMMUNICATION SERVICES", 20);
            u.Points.AddXY("FINANCIAL SERVICES", 30);
            //chart2.ChartAreas[0].AxisX.LabelStyle.Enabled = false;
            chart2.ChartAreas[0].AxisY.LabelStyle.Enabled = false;
            chart2.ChartAreas[0].AxisX.LineColor = Color.Transparent;
            chart2.ChartAreas[0].AxisY.LineColor = Color.Transparent;
            chart2.ChartAreas[0].AxisX.MajorTickMark.Enabled = false;
            chart2.ChartAreas[0].AxisY.MajorTickMark.Enabled = false;
            chart2.ChartAreas[0].AxisX.MinorTickMark.Enabled = false;
            chart2.ChartAreas[0].AxisY.MinorTickMark.Enabled = false;
            u.IsValueShownAsLabel = true;

            con.Close();
 
        }
        #region Commented Code
        /*try
        {
            con.Open();

            using (SqlDataReader read = com.ExecuteReader())
            {
                while (read.Read())
                {
                    foreach
                    if (dtp.Equals(read["Date"].tostring()))
                    textBox1.Text = Convert.ToDateTime(read["Date"]).ToString("dd/MM/yyyy");
                    textBox2.Text = (read["Name"].ToString());
                    textBox3.Text = (read["Age"].ToString());
                }
            }
        }
        finally
        {
            con.Close();

                    textBox6.Text = Convert.ToDateTime(read["Date"]).ToString("dd/MM/yyyy");
                    textBox7.Text = (read["Name"].ToString());
                    textBox8.Text = (read["Age"].ToString());
        */
        #endregion

        void tableLayoutPanel1_CellPaint(object sender, TableLayoutCellPaintEventArgs e)
        {
            if (e.Column >= 1 && e.Row >= 1)
            
                //e.Graphics.DrawRectangle(new Pen(Color.Blue), e.CellBounds);
                e.Graphics.FillRectangle(Brushes.Gainsboro, e.CellBounds);
                
                //e.Graphics.DrawRectangle(new Pen(Color.Blue), e.CellBounds);
            //ControlPaint.DrawBorder(e.Graphics, e.CellBounds, Color.Red, ButtonBorderStyle.Solid);
           // e.Graphics.DrawLine(Pens.Black, e.CellBounds.Location, new Point(e.CellBounds.Left));
        }
        void tableLayoutPanel2_CellPaint(object sender, TableLayoutCellPaintEventArgs e)
        {
            if (e.Column >= 1 && e.Row >= 1)
                //e.Graphics.DrawRectangle(new Pen(Color.Blue), e.CellBounds);
                e.Graphics.FillRectangle(Brushes.Gainsboro, e.CellBounds);
        }
        void tableLayoutPanel3_CellPaint(object sender, TableLayoutCellPaintEventArgs e)
        {
            if (e.Column <= 1 && e.Row == 0)
                //e.Graphics.DrawRectangle(new Pen(Color.Blue), e.CellBounds);
                e.Graphics.FillRectangle(Brushes.LightSteelBlue, e.CellBounds);
        }
        

        private void Form3_Load(object sender, EventArgs e)
        {

        }

        private void button3_Click(object sender, EventArgs e)
        {
            Main frm2 = new Main();
            this.Visible = false;
            frm2.Show();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
        }


        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void chart1_Click(object sender, EventArgs e)
        {


            //chart1.Series.Add("Gums");
            //chart1.Series["Gums"].ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Line;
            //chart1.Series["Gums"].Color = Color.Green;

            // chart1.Series.Add("Chews");
            //chart1.Series["Chews"].ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Line;
            //chart1.Series["Chews"].Color = Color.Blue;

            //  chart1.Series["Gums"].Points.AddXY(12/17, 100);
            // chart1.Series["Gums"].Points.AddXY(01/18, 90);
            // chart1.Series["Gums"].Points.AddXY(02/18, 110);
            //  chart1.Series["Gums"].Points.AddXY(03/18,80);
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void labelBb_Click(object sender, EventArgs e)
        {

        }

        private void textBox4_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox5_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox6_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox7_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox8_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox9_TextChanged(object sender, EventArgs e)
        {

        }

        private void textOyaBidBid_TextChanged(object sender, EventArgs e)
        {

        }

        private void textCurrentNav_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged_1(object sender, EventArgs e)
        {

        }

        private void textYtdBidBid_TextChanged(object sender, EventArgs e)
        {

        }

        private void hScrollBar1_Scroll(object sender, ScrollEventArgs e)
        {
            if (hScrollBar1.Value == 1 && chart1.Visible.Equals(false))
            {
                chart1.Show();
                chart2.Hide();
                tableLayoutPanel1.Show();
                tableLayoutPanel2.Hide();
                tableLayoutPanel3.Hide();
                labelPO.Text = "Performance Overview";
                labelIndex.Text = "Indexed Performance since Inception (Bid–Bid)";
                labelBidBidLegendColour.Show();
                labelBidBidLegendText.Show();
                labelBenchmarkLegendColour.Show();
                labelBenchmarkLegendText.Show();

                labelSBText.Text = "Page 1 of 2";
            }
            else if (hScrollBar1.Value == 2 && chart1.Visible.Equals(true))
            {
                chart1.Hide();
                chart2.Show();
                tableLayoutPanel1.Hide();
                tableLayoutPanel2.Show();
                tableLayoutPanel3.Show();
                labelPO.Text = "Portfolio Analysis";
                labelIndex.Text = "Sector Allocation (%)";
                labelBidBidLegendColour.Hide();
                labelBidBidLegendText.Hide();
                labelBenchmarkLegendColour.Hide();
                labelBenchmarkLegendText.Hide();

                labelSBText.Text = "Page 2 of 2";
            }    
        }


        private void label18_Click(object sender, EventArgs e)
        {

        }

        private void labelBidBidLegendColour_Click(object sender, EventArgs e)
        {

        }

        private void label11_Click(object sender, EventArgs e)
        {

        }

        private void label17_Click(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void chart2_Click(object sender, EventArgs e)
        {

        }

        private void textSHName_TextChanged(object sender, EventArgs e)
        {

        }
    }
}

