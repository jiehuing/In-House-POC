using System;
using System.Collections;
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
using System.IO;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.DataVisualization.Charting;

public partial class SearchData : System.Web.UI.Page
{
    string regionName;
    string username = ConfigurationManager.AppSettings["gUsername"];
    string password = ConfigurationManager.AppSettings["gPassword"];
    string region = (ConfigurationManager.AppSettings["gRegion"]);   
    string dtp = ConfigurationManager.AppSettings["gSearchDate"];
    string connectionString = ConfigurationManager.AppSettings["gConnectionString"];
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (username.Equals("") || password.Equals(""))
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                getRegionName(ConfigurationManager.AppSettings["gRegion"]);
                lblSearchData.Text = regionName + " Fund Fact Sheet";
                DateTime date;
                DateTime.TryParse(dtp, out date);
                lblSearchDate.Text = "Date: " + date.ToString("dd/MM/yyyy");

                /*
                textSearchDate.Text = date.ToString("dd/MM/yyyy");
                textSearchDate.ReadOnly = true;
                */

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

                Debug.WriteLine(dtp);
                Debug.WriteLine(region);
                SqlConnection con = new SqlConnection(connectionString);
                string selectSearchDate = "select * from testing where Date ='" + dtp + "' AND ISIN = '" + region + "'";
                Debug.WriteLine(selectSearchDate);
                string selectOneYearAgo = "select top 1 * from testing where MONTH(Date) = '" + oyaList[1] + "' AND YEAR(date) = '" + oyaList[0] + "' AND ISIN='" + region + "' order by Date DESC"; //AND ISIN='" + region + "'  order by Date DESC";
                string selectSixMonthsAgo = "select top 1 * from testing where MONTH(Date) = '" + smaList[1] + "' AND YEAR(date) = '" + smaList[0] + "' AND ISIN='" + region + "' order by Date DESC";
                string selectThreeMonthsAgo = "select top 1 * from testing where MONTH(Date) = '" + tmaList[1] + "' AND YEAR(date) = '" + tmaList[0] + "' AND ISIN='" + region + "' order by Date DESC";
                string selectOneMonthsAgo = "select top 1 * from testing where MONTH(Date) = '" + omaList[1] + "' AND YEAR(date) = '" + omaList[0] + "' AND ISIN='" + region + "' order by Date DESC";
                string selectSinceInception = "select top 1 * from testing where ISIN= '" + region + "' order by date";
                string selectInceptionYear = "select top 1 YEAR(date) AS Date from testing where ISIN= '" + region + "' order by date";
                string selectInceptionMonth = "select top 1 MONTH(date) AS Date from testing where ISIN= '" + region + "' order by date";
                string selectYearToDate = "select top 1 * from testing where YEAR(date) = '" + ytdList[0] + "' AND ISIN= '" + region + "' order by Date"; //Remove DESC if need to be first day of the year
                string selectTop5Holding = "select TOP 5 companyname, sector, fixedHoldingRatio from companyinfo where ISIN= '" + region + "' order by fixedHoldingRatio DESC, companyName";
                string selectSector = "select DISTINCT(sector), count(sector) AS sectorCount from companyinfo where ISIN= '" + region + "' group by sector order by sectorCount, sector DESC";
                string selectFundDetail = "select top 1 * from fundDetail where date <= '"+ dtp +"' and ISIN= '" + region + "'  order by date DESC";

                SqlCommand top5Holding = new SqlCommand(selectTop5Holding, con);
                SqlDataAdapter sda = new SqlDataAdapter(top5Holding);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                SqlCommand sector = new SqlCommand(selectSector, con);
                SqlDataAdapter sda2 = new SqlDataAdapter(sector);
                DataTable dt2 = new DataTable();
                sda2.Fill(dt2);

                SqlCommand searchDate = new SqlCommand(selectSearchDate, con);
                SqlCommand oneYearAgo = new SqlCommand(selectOneYearAgo, con);
                SqlCommand sixMonthsAgo = new SqlCommand(selectSixMonthsAgo, con);
                SqlCommand threeMonthsAgo = new SqlCommand(selectThreeMonthsAgo, con);
                SqlCommand oneMonthsAgo = new SqlCommand(selectOneMonthsAgo, con);
                SqlCommand sinceInception = new SqlCommand(selectSinceInception, con);
                SqlCommand yearToDate = new SqlCommand(selectYearToDate, con);
                SqlCommand inceptionYear = new SqlCommand(selectInceptionYear, con);
                SqlCommand inceptionMonth = new SqlCommand(selectInceptionMonth, con);
                SqlCommand fundDetail = new SqlCommand(selectFundDetail, con);

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
                int totalPercent;


                int searchYear = Int32.Parse(strSearchYear);
                int inceptYear;
                int inceptMonth;

                string benchmarkValue;
                string fundManagerValue;
                decimal fundSizeValue;
                string baseCurrencyValue;
                int numberOfHoldingsValue;
                int initialFeeValue;
                string EISValue;
                decimal allInFeeValue;
                decimal tERValue;
                decimal unitNAVValue;
                DateTime inceptionDateValue;
                string dFValue;
                string IsinCodeValue;
                string bTValue;
    

                using(SqlDataReader read = fundDetail.ExecuteReader())
                {
                    while (read.Read())
                    {
                        benchmarkValue = (string)read["benchmarkName"];
                        fundManagerValue = (string)read["benchmarkTicker"];
                        fundSizeValue = (Decimal)read["fundSize"];
                        baseCurrencyValue = (string)read["baseCurrency"];
                        numberOfHoldingsValue = (int)read["noOfHolding"];
                        initialFeeValue = (int)read["initalFee"];
                        EISValue = (string)read["EIS"];
                        allInFeeValue = (Decimal)read["AIS"];
                        tERValue = (Decimal)read["TER"];
                        unitNAVValue = (Decimal)read["uint"];
                        inceptionDateValue = (DateTime)read["inceptionDate"];
                        dFValue = (string)read["dividend"];
                        IsinCodeValue = (string)read["ISIN"];
                        bTValue = (string)read["bloombergTicker"];
                        lblBV.Text = benchmarkValue.ToString();
                        lblFMV.Text = fundManagerValue.ToString();
                        lblFSV.Text = fundSizeValue.ToString();
                        lblBCV.Text = baseCurrencyValue.ToString();
                        lblNOHV.Text = numberOfHoldingsValue.ToString();
                        lblIFV.Text = initialFeeValue.ToString();
                        lblEISV.Text = EISValue.ToString();
                        lblAIFV.Text = allInFeeValue.ToString();
                        lblTERV.Text = tERValue.ToString();
                        lblUNV.Text = unitNAVValue.ToString();
                        lblIDV.Text = inceptionDateValue.ToString("dd/MM/yyyy");
                        lblDFV.Text = dFValue.ToString();
                        lblICV.Text = IsinCodeValue.ToString();
                        lblBTV.Text = bTValue.ToString();
                    }
                }

                using (SqlDataReader read = searchDate.ExecuteReader())
                {
                    while (read.Read())
                    {
                        searchNav = (Decimal)read["NAV"];
                        searchBi = (Decimal)read["benchmarkPrice"];
                        searchOffer = (Decimal)read["offer"];
                        textSearchNav.Text = searchNav.ToString();
                        textSearchBi.Text = searchBi.ToString();
                        textSearchOffer.Text = searchOffer.ToString();
                    }
                }

                Debug.WriteLine(textSearchBi.Text + "testing");
                using (SqlDataReader read = oneYearAgo.ExecuteReader())
                {
                    while (read.Read())
                    {
                        oyaNav = (Decimal)read["NAV"];
                        oyaBi = (Decimal)read["benchmarkPrice"];
                        oyaOffer = (Decimal)read["offer"];
                        textOyaNav.Text = oyaNav.ToString();
                        textOyaBi.Text = oyaBi.ToString();
                        textOyaOffer.Text = oyaOffer.ToString();
                    }
                }
                using (SqlDataReader read = sixMonthsAgo.ExecuteReader())
                {
                    while (read.Read())
                    {
                        smaNav = (Decimal)read["NAV"];
                        smaBi = (Decimal)read["benchmarkPrice"];
                        smaOffer = (Decimal)read["offer"];
                        textSmaNav.Text = smaNav.ToString();
                        textSmaBi.Text = smaBi.ToString();
                        textSmaOffer.Text = smaOffer.ToString();
                    }
                }
                using (SqlDataReader read = threeMonthsAgo.ExecuteReader())
                {
                    while (read.Read())
                    {
                        tmaNav = (Decimal)read["NAV"];
                        tmaBi = (Decimal)read["benchmarkPrice"];
                        tmaOffer = (Decimal)read["offer"];
                        textTmaNav.Text = tmaNav.ToString();
                        textTmaBi.Text = tmaBi.ToString();
                        textTmaOffer.Text = tmaOffer.ToString();
                    }
                }
                using (SqlDataReader read = oneMonthsAgo.ExecuteReader())
                {
                    while (read.Read())
                    {
                        omaNav = (Decimal)read["nav"];
                        omaBi = (Decimal)read["benchmarkPrice"];
                        omaOffer = (Decimal)read["offer"];
                        textOmaNav.Text = omaNav.ToString();
                        textOmaBi.Text = omaBi.ToString();
                        textOmaOffer.Text = omaOffer.ToString();
                    }
                }
                using (SqlDataReader read = yearToDate.ExecuteReader())
                {
                    while (read.Read())
                    {
                        ytdNav = (Decimal)read["NAV"];
                        ytdBi = (Decimal)read["benchmarkPrice"];
                        ytdOffer = (Decimal)read["offer"];
                        textYtdNav.Text = ytdNav.ToString();
                        textYtdBi.Text = ytdBi.ToString();
                        textYtdOffer.Text = ytdOffer.ToString();
                    }
                }
                using (SqlDataReader read = sinceInception.ExecuteReader())
                {
                    while (read.Read())
                    {
                        siNav = (Decimal)read["NAV"];
                        siBi = (Decimal)read["benchmarkPrice"];
                        siOffer = (Decimal)read["offer"];
                        siDate = (DateTime)read["date"];
                        textSiNav.Text = siNav.ToString();
                        textSiBi.Text = siBi.ToString();
                        textSiOffer.Text = siOffer.ToString();
                        textSiDate.Text = siDate.ToString("yyyy/MM/dd");
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
                //Debug.WriteLine("this is 1: " + searchYear);

                //Debug.WriteLine(searchYear);
                //Debug.WriteLine(Int32.Parse(textInceptYear.Text).ToString());

                int numberOfYears = searchYear - Int32.Parse(textInceptYear.Text) + 1;

                searchNav = System.Convert.ToDecimal(textSearchNav.Text);
                searchBi = System.Convert.ToDecimal(textSearchBi.Text);
                searchOffer = System.Convert.ToDecimal(textSearchOffer.Text);
                //levy = System.Convert.ToDecimal(textLevy.Text);

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
                    textNav.Text = String.Empty;
                    textBi.Text = String.Empty;

                    if (siIntMonth == 13)
                    {
                        siIntYear = siIntYear + 1;
                        siIntMonth = 1;
                    }
                    string selectEveryMonth = "select top 1 * from testing where YEAR(date) = '" + siIntYear + "' AND MONTH(date) ='" + siIntMonth + "' AND ISIN= '" + region + "' order by Date DESC";

                    SqlCommand everyMonth = new SqlCommand(selectEveryMonth, con);
                    using (SqlDataReader read = everyMonth.ExecuteReader())
                    {
                        while (read.Read())
                        {
                            nav = (Decimal)read["NAV"];
                            bi = (Decimal)read["benchmarkPrice"];
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

                ArrayList sectorList = new ArrayList();
                ArrayList percentList = new ArrayList();

                foreach (DataRow data in dt2.Rows)
                {
                    sectorList.Add(data[0].ToString());
                    percentList.Add(data[1].ToString());
                }

                //var original = chart2.Series.Add("Original");
                //var modified = chart2.Series.Add("Modified");
                chart2.ChartAreas[0].AxisY.MajorGrid.Enabled = false;
                //chart2.ChartAreas[0].AxisY.MinorGrid.Enabled = false;
                chart2.ChartAreas[0].AxisX.MajorGrid.Enabled = false;
                //chart2.ChartAreas[0].AxisX.MinorGrid.Enabled = false;
                //chart2.Series[0].IsValueShownAsLabel = true;
                //chart2.ChartAreas[0].AxisX.Minimum = 0;
                //chart2.ChartAreas[0].AxisX.Maximum = 20;

                for (int i = 0; i < sectorList.Count; i++)
                {
                    u.Points.AddXY(sectorList[i].ToString(), Convert.ToInt32(percentList[i]));
                }

                chart2.Series[0].Color = Color.SteelBlue;
                chart2.ChartAreas[0].AxisX.LabelStyle.Interval = 1;
                chart2.ChartAreas[0].AxisY.LabelStyle.Enabled = false;
                chart2.ChartAreas[0].AxisX.LineColor = Color.Transparent;
                chart2.ChartAreas[0].AxisY.LineColor = Color.Transparent;
                chart2.ChartAreas[0].AxisX.MajorTickMark.Enabled = false;
                chart2.ChartAreas[0].AxisY.MajorTickMark.Enabled = false;
                chart2.ChartAreas[0].AxisX.MinorTickMark.Enabled = false;
                chart2.ChartAreas[0].AxisY.MinorTickMark.Enabled = false;
                u.IsValueShownAsLabel = true;

                ArrayList top5List = new ArrayList();

                foreach (DataRow data in dt.Rows)
                {
                    top5List.Add(data[0].ToString());
                    top5List.Add(data[1].ToString());
                    top5List.Add(data[2].ToString());
                }

                textFHName.Text = top5List[0].ToString();
                textFHSector.Text = top5List[1].ToString();
                textFHSectorPercent.Text = top5List[2].ToString();

                textSHName.Text = top5List[3].ToString();
                textSHSector.Text = top5List[4].ToString();
                textSHSectorPercent.Text = top5List[5].ToString();

                textTHName.Text = top5List[6].ToString();
                textTHSector.Text = top5List[7].ToString();
                textTHSectorPercent.Text = top5List[8].ToString();

                textFourthHName.Text = top5List[9].ToString();
                textFourthHSector.Text = top5List[10].ToString();
                textFourthHSectorPercent.Text = top5List[11].ToString();

                textFifthHName.Text = top5List[12].ToString();
                textFifthHSector.Text = top5List[13].ToString();
                textFifthHSectorPercent.Text = top5List[14].ToString();

                totalPercent = Convert.ToInt32(top5List[2]) + Convert.ToInt32(top5List[5]) + Convert.ToInt32(top5List[8]) + Convert.ToInt32(top5List[11]) + Convert.ToInt32(top5List[14]);
                textTotalPercent.Text = totalPercent.ToString();

                con.Close();

                top5List.Clear();
                sectorList.Clear();
                percentList.Clear();
            }
        }
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

    protected void chart1_Load(object sender, EventArgs e)
    {

    }

    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("Main.aspx");
    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        ConfigurationManager.AppSettings["gUsername"] = "";
        ConfigurationManager.AppSettings["gPassword"] = "";
        Response.Redirect("Login.aspx");
    }

    protected void textSiDate_TextChanged(object sender, EventArgs e)
    {

    }
}