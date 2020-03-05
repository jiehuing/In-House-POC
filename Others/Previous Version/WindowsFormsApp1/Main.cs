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
    public partial class Main : Form
    {
        string region;
        Boolean x = false;
        public Main()
        {
            InitializeComponent();
            
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(comboBox1.SelectedIndex == 0)
            {
                DateTime now = DateTime.Now;
                dateTimePicker1.Value = now;
                dateTimePicker1.Format = DateTimePickerFormat.Custom;
                dateTimePicker1.CustomFormat = "dd/MM/yyyy";
                dateTimePicker1.Visible = true;
                labelDate.Visible = true;
            }
            else
            {
                dateTimePicker1.Visible = false;
                labelDate.Visible = false;
            }
        }
        private void button1_Click(object sender, EventArgs e)
        {
            if (comboBox1.SelectedIndex == 0 && (radioButton1.Checked || radioButton2.Checked))
            {
                if(radioButton1.Checked)
                {
                    region = "LU172001";
                }
                else if (radioButton2.Checked)
                {
                    region = "LU172002";
                }
                /*
                dateTimePicker1.CustomFormat = "yyyy/MM/dd";


                //SearchData frm3 = new SearchData(dateTimePicker1.Text);
                string conString = @"Data Source=A039LSIN;Initial Catalog=POC;Integrated Security=SSPI";
                //string conString = @"Data Source=192.168.43.85,1433;Persist Security Info = True; User ID = admin;Password = pass1234";

                //string conString = "Data Source=localhost;Initial Catalog=LoginScreen;Integrated Security=True";
                SqlConnection con = new SqlConnection(conString);

                //string selectSql = "select * from testing where Date ='"+dtp+"'";


                string selectSql = "select * from testing";
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
                if(x.Equals(false))
                {
                    dateTimePicker1.CustomFormat = "dd/MM/yyyy";
                    System.Windows.Forms.MessageBox.Show("No data found on this date!");
                }

                */




                //dateTimePicker1.CustomFormat = "yyyy/MM/dd";
                dateTimePicker1.CustomFormat = "yyyy-MM-dd";
                string dtp = dateTimePicker1.Text;
                DateTime dtpRead;

                //SearchData frm3 = new SearchData(dateTimePicker1.Text);
                string conString = @"Data Source=A039LSIN;Initial Catalog=POC;Integrated Security=SSPI";
                //string conString = @"Data Source=192.168.43.85,1433;Persist Security Info = True; User ID = admin;Password = pass1234";

                //string conString = "Data Source=localhost;Initial Catalog=LoginScreen;Integrated Security=True";
                SqlConnection con = new SqlConnection(conString);

                string selectSql = "select * from testing where Date ='"+dtp+"'"; //AND ISIN='"+region+"'";


                //string selectSql = "select * from testing";
                SqlCommand com = new SqlCommand(selectSql, con);

                //SqlDataAdapter da = new SqlDataAdapter(com);
                //DataTable dt = new DataTable();
                //da.Fill(dt);
                con.Open();
                
                //Debug.WriteLine(dateTimePicker1.Text);




                using (SqlDataReader read = com.ExecuteReader())
                {
                    while (read.Read())
                    {
                        dtpRead = (DateTime)read["Date"];
                        //regionRead = (string)read["ISIN"];
                        textDtp.Text = dtpRead.ToString();
                        //textRegion.Text = dtpRead.ToString();
                    }
                }
                if (String.IsNullOrEmpty(textDtp.Text))
                {
                    dateTimePicker1.CustomFormat = "dd/MM/yyyy";
                    System.Windows.Forms.MessageBox.Show("No data found on this date!");
                }
                else
                {
                    x = true;
                    this.Visible = false;
                    SearchData frm3 = new SearchData(dateTimePicker1.Text, region);
                    frm3.Show();
                }




                

                con.Close();

            }
            else if(comboBox1.SelectedIndex == 2)
            {
                EditMailingList frm6 = new EditMailingList();
                this.Visible = false;
                frm6.Show();
            }
            else if(comboBox1.SelectedIndex == 1 && (radioButton1.Checked || radioButton2.Checked))
            {
                EditFundDetails frm5 = new EditFundDetails();
                this.Visible = false;
                frm5.Show();
            }
            else if (comboBox1.SelectedIndex == 0 || comboBox1.SelectedIndex == 1)
            {
                System.Windows.Forms.MessageBox.Show("Please select a region!");
            }
            else
            {
                System.Windows.Forms.MessageBox.Show("Please select an option!");
            }

        }
        private void Form2_Load(object sender, EventArgs e)
        {

        }
        private void button2_Click(object sender, EventArgs e)
        {
            //this.Close();
            Environment.Exit(0);
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void dateTimePicker1_ValueChanged(object sender, EventArgs e)
        {

        }

        private void printDocument1_PrintPage(object sender, System.Drawing.Printing.PrintPageEventArgs e)
        {

        }

        private void chart1_Click(object sender, EventArgs e)
        {
           
        }

        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}
