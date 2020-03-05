using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Diagnostics;
using System.Data.SqlClient;
using System.IO;

namespace WindowsFormsApp1
{

    public partial class EditFundDetails : Form
    {

        ArrayList deleteList = new ArrayList();
        ArrayList addList = new ArrayList();
        ArrayList editList = new ArrayList();

        public EditFundDetails()
        {
            InitializeComponent();
            string query = "Select companyName,sector,fixedHoldingRatio,fundTicker,ISIN from companyinfo order by fixedHoldingRatio DESC";
            SqlDataAdapter sda = new SqlDataAdapter(query, cnn);
            DataTable dd = new DataTable();
            sda.Fill(dd);
            dataGridView1.Rows.Clear();

            // dataGridView1.DataSource = dd;
            foreach (DataRow data in dd.Rows)
            {
                //int aa = dataGridView1.Rows.Add();
                int aa = dataGridView1.Rows.Add();
                //dataGridView1.Rows.Add();
                //dataGridView1.Rows[aa].DefaultCellStyle.BackColor = Color.Transparent;
                dataGridView1.Rows[aa].Cells[0].Value = "false";
                //dataGridView1.Rows[aa].Cells[1].Value = data["status"].ToString();
                dataGridView1.Rows[aa].Cells[1].Value = data["companyName"].ToString();
                dataGridView1.Rows[aa].Cells[2].Value = data["sector"].ToString();
                dataGridView1.Rows[aa].Cells[3].Value = data["fixedHoldingRatio"].ToString();
                dataGridView1.Rows[aa].Cells[4].Value = data["fundTicker"].ToString();
                dataGridView1.Rows[aa].Cells[5].Value = data["ISIN"].ToString();
                dataGridView1.Rows[aa].Cells[0].ReadOnly = false;
                dataGridView1.Rows[aa].Cells[1].ReadOnly = true;
                dataGridView1.Rows[aa].Cells[2].ReadOnly = true;
                dataGridView1.Rows[aa].Cells[3].ReadOnly = true;
                dataGridView1.Rows[aa].Cells[4].ReadOnly = true;
                dataGridView1.Rows[aa].Cells[5].ReadOnly = true;
                //dataGridView1.Rows[aa].Cells[6].ReadOnly = true;

                //row.DefaultCellStyle.BackColor = Color.Red;
                dataGridView1.Rows[aa].DefaultCellStyle.BackColor = Color.Gainsboro;

            }
            dataGridView1.Columns[0].Visible = false;
            




            //connectionString = @"Data Source=192.168.43.85,1433;Persist Security Info = True; User ID = admin;Password = pass1234";



            //cnn.Open();

            /*
            string query = "Select * from companyinfo";
            //SqlCommand dd = new SqlCommand(query, cnn);
            SqlDataAdapter sda = new SqlDataAdapter(query, cnn);
            DataTable dtbl = new DataTable();
            sda.Fill(dtbl);
            //dataGridView1.Rows.Clear();
            dataGridView1.DataSource = dtbl;
            
            foreach(DataRow data in dtbl.Rows)
            {
                int aa = dataGridView1.Rows.Add();
                dataGridView1.Rows[aa].Cells[0].Value = "false";
                dataGridView1.Rows[aa].Cells[1].Value = data["status"].ToString();
                dataGridView1.Rows[aa].Cells[2].Value = data["companyName"].ToString();
                dataGridView1.Rows[aa].Cells[3].Value = data["sector"].ToString();
                dataGridView1.Rows[aa].Cells[4].Value = data["fixedHoldingRatio"].ToString();
                dataGridView1.Rows[aa].Cells[5].Value = data["fundTicker"].ToString();
                dataGridView1.Rows[aa].Cells[6].Value = data["ISIN"].ToString();


            }

    */

            //cnn.Close();

        }

        private void Form5_Load(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
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


        private void button5_Click(object sender, EventArgs e)
        {
            foreach (DataGridViewRow dataRow in dataGridView1.Rows)
            {
                if (bool.Parse(dataRow.Cells[0].Value.ToString()))
                {
                    //dataGridView1.Rows[aa].Cells[0].ReadOnly = false;
                    dataRow.ReadOnly = false;
                    /*
                    dataRow.Cells[0].ReadOnly = false;
                    dataRow.Cells[1].ReadOnly = false;
                    dataRow.Cells[2].ReadOnly = false;
                    dataRow.Cells[3].ReadOnly = false;
                    dataRow.Cells[4].ReadOnly = false;
                    dataRow.Cells[5].ReadOnly = false;
                    */
                    dataRow.DefaultCellStyle.BackColor = Color.White;
                }
                
                else
                {
                    dataRow.ReadOnly = true;
                    dataRow.Cells[0].ReadOnly = false;
                    dataRow.DefaultCellStyle.BackColor = Color.Gainsboro;
                }
                
            }
            dataGridView1.Refresh();
        }

        private void buttonSave_Click(object sender, EventArgs e)
        {
            dataGridView1.AllowUserToAddRows = false;
            try
            {
                int dgvCount = dataGridView1.Rows.Count;
                int ndgvCount1 = dataGridView1.Rows.Cast<DataGridViewRow>().Select(x => x.Cells[4].Value.ToString()).Distinct().ToList().Count;
                int ndgvCount2 = dataGridView1.Rows.Cast<DataGridViewRow>().Select(x => x.Cells[4].Value.ToString()).Distinct().ToList().Count;
                if (dgvCount != ndgvCount1 || dgvCount != ndgvCount2)
                {
                    MessageBox.Show("Duplicate data");
                }
                else
                {
                    foreach (DataGridViewRow dataRow in dataGridView1.Rows)
                    {
                        Debug.WriteLine(dataRow.Cells.Count);
                        for (int i = 0; i < dataRow.Cells.Count; i++)
                        {
                            Debug.WriteLine(dataRow.Cells[i].Value);
                            if (dataRow.Cells[i].Value.Equals(null))
                            {
                                MessageBox.Show("Data not completed");
                                //MessageBox.Show("Save Successfully");

                            }
                        }

                    }
                }
            }
            catch (System.NullReferenceException)
            {
                MessageBox.Show("Data not completed");
            }
        }

        private void button5_Click_1(object sender, EventArgs e)
        {
            for (int i = dataGridView1.RowCount - 1; i >= 0; i--)
            {

                if (bool.Parse(dataGridView1.Rows[i].Cells[0].Value.ToString()))
                {
                    dataGridView1.Rows.Remove(dataGridView1.Rows[i]);
                    i++;
                }
            }
        }


        //private void button5_Click_1(object sender, EventArgs e)
        //{

        //    foreach (DataGridViewRow dataRow in dataGridView1.Rows)
        //    {
        //        try
        //        {
        //            if (bool.Parse(dataRow.Cells[0].Value.ToString()))
        //            {
        //                //deleteList.Add(dataRow.Index);
        //                //Debug.WriteLine(dataRow.Index);
        //                dataGridView1.Rows.Remove(dataRow);
        //            }
        //        }
        //        catch (System.NullReferenceException)
        //        {
        //            try
        //            {
        //                //deleteList.Add(dataRow.Index);
        //                dataGridView1.Rows.Remove(dataRow);
        //            }
        //            catch (System.InvalidOperationException)
        //            {

        //            }
        //        }
        //    }
        //    /*
        //    if (deleteList.Count>=1)
        //    {
        //        for (int i = 0; i < deleteList.Count; i++)
        //        {
        //            dataGridView1.Rows.RemoveAt(Convert.ToInt32(deleteList[i]));
        //        }
        //        dataGridView1.Refresh();
        //    }
        //    */
        //}

        private void buttonMC_Click(object sender, EventArgs e)
        {

        }

        private void textBox3_TextChanged(object sender, EventArgs e)
        {

        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
        SqlConnection cnn = new SqlConnection(@"Data Source=A039LSIN;Initial Catalog=POC;Integrated Security=SSPI");
        private void button4_Click_1(object sender, EventArgs e)
        {
            /*
            cnn.Open();
            SqlDataAdapter ssda = new SqlDataAdapter("select * from companyinfo", cnn);
            DataTable dtlbs = new DataTable();
            ssda.Fill(dtlbs);
            dataGridView1.DataSource = dtlbs;
            cnn.Close();
            */
            buttonEdit.Show();
            buttonAdd.Show();
            buttonRemove.Show();
            buttonCancel.Show();
            buttonSave.Show();
            buttonClick.Hide();
            dataGridView1.Columns[0].Visible = true;
        }
        private void button2_Click_1(object sender, EventArgs e)
        {
            string query = "Select companyName,sector,fixedHoldingRatio,fundTicker,ISIN from companyinfo order by fixedHoldingRatio DESC";
            //SqlCommand dd = new SqlCommand(query, cnn);
            SqlDataAdapter sda = new SqlDataAdapter(query, cnn);
            DataTable dd = new DataTable();
            sda.Fill(dd);
            //dataGridView1.Refresh();
            dataGridView1.Rows.Clear();
            
            // dataGridView1.DataSource = dd;
            foreach (DataRow data in dd.Rows)
            {
                //int aa = dataGridView1.Rows.Add();
                    int aa = dataGridView1.Rows.Add();
                    //dataGridView1.Rows[aa].DefaultCellStyle.BackColor = Color.Transparent;
                    dataGridView1.Rows[aa].Cells[0].Value = "false";
                    //dataGridView1.Rows[aa].Cells[1].Value = data["status"].ToString();
                    dataGridView1.Rows[aa].Cells[1].Value = data["companyName"].ToString();
                    dataGridView1.Rows[aa].Cells[2].Value = data["sector"].ToString();
                    dataGridView1.Rows[aa].Cells[3].Value = data["fixedHoldingRatio"].ToString();
                    dataGridView1.Rows[aa].Cells[4].Value = data["fundTicker"].ToString();
                    dataGridView1.Rows[aa].Cells[5].Value = data["ISIN"].ToString();
                    dataGridView1.Rows[aa].Cells[0].ReadOnly = false;
                    dataGridView1.Rows[aa].Cells[1].ReadOnly = true;
                    dataGridView1.Rows[aa].Cells[2].ReadOnly = true;
                    dataGridView1.Rows[aa].Cells[3].ReadOnly = true;
                    dataGridView1.Rows[aa].Cells[4].ReadOnly = true;
                    dataGridView1.Rows[aa].Cells[5].ReadOnly = true;
                    //dataGridView1.Rows[aa].Cells[6].ReadOnly = true;
            }
           
            //dataGridView1.ReadOnly = true;
        }

        private void button5_Click_2(object sender, EventArgs e)
        {
            
        }


        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void button6_Click(object sender, EventArgs e)
        {
            
        }

        private void button8_Click(object sender, EventArgs e)
        {
            


        }

        private void buttonAdd_Click(object sender, EventArgs e)
        {
            int before = dataGridView1.Rows.Count;
            dataGridView1.RowsDefaultCellStyle.BackColor = Color.Gainsboro;
            //dataGridView1.AllowUserToAddRows = true;
            dataGridView1.Rows.Add();
            DataGridView dataGridView2 = dataGridView1;
            Debug.WriteLine(dataGridView1.Rows.Count);
            Debug.WriteLine(dataGridView2.Rows.Count);
            

            dataGridView1.Rows[before].Cells[0].Value = false;
            dataGridView1.Rows[before].Cells[1].Value = "";
            dataGridView1.Rows[before].Cells[2].Value = "";
            dataGridView1.Rows[before].Cells[3].Value = "";
            dataGridView1.Rows[before].Cells[4].Value = "";
            dataGridView1.Rows[before].Cells[5].Value = "";
            //dataGridView1.Rows[0].Cells[6].Value = "";
            //dataGridView1.Rows.Add();

            
            for (int i=before; i<=dataGridView1.Rows.Count; i++)
            {
               // dataGridView1.Rows[i].Cells[0].Visible = false;
            }
        }

        private void button7_Click(object sender, EventArgs e)
        {
            string query = "Select companyName,sector,fixedHoldingRatio,fundTicker,ISIN from companyinfo order by fixedHoldingRatio DESC";
            SqlDataAdapter sda = new SqlDataAdapter(query, cnn);
            DataTable dd = new DataTable();
            sda.Fill(dd);
            dataGridView1.Rows.Clear();

            // dataGridView1.DataSource = dd;
            foreach (DataRow data in dd.Rows)
            {
                //int aa = dataGridView1.Rows.Add();
                int aa = dataGridView1.Rows.Add();
                //dataGridView1.Rows.Add();
                //dataGridView1.Rows[aa].DefaultCellStyle.BackColor = Color.Transparent;
                dataGridView1.Rows[aa].Cells[0].Value = "false";
                //dataGridView1.Rows[aa].Cells[1].Value = data["status"].ToString();
                dataGridView1.Rows[aa].Cells[1].Value = data["companyName"].ToString();
                dataGridView1.Rows[aa].Cells[2].Value = data["sector"].ToString();
                dataGridView1.Rows[aa].Cells[3].Value = data["fixedHoldingRatio"].ToString();
                dataGridView1.Rows[aa].Cells[4].Value = data["fundTicker"].ToString();
                dataGridView1.Rows[aa].Cells[5].Value = data["ISIN"].ToString();
                dataGridView1.Rows[aa].Cells[0].ReadOnly = false;
                dataGridView1.Rows[aa].Cells[1].ReadOnly = true;
                dataGridView1.Rows[aa].Cells[2].ReadOnly = true;
                dataGridView1.Rows[aa].Cells[3].ReadOnly = true;
                dataGridView1.Rows[aa].Cells[4].ReadOnly = true;
                dataGridView1.Rows[aa].Cells[5].ReadOnly = true;
                //dataGridView1.Rows[aa].Cells[6].ReadOnly = true;
                dataGridView1.Rows[aa].DefaultCellStyle.BackColor = Color.Gainsboro;
                //row.DefaultCellStyle.BackColor = Color.Red;
            }
            dataGridView1.Columns[0].Visible = false;
            dataGridView1.AllowUserToAddRows = false;
            buttonEdit.Hide();
            buttonAdd.Hide();
            buttonRemove.Hide();
            buttonCancel.Hide();
            buttonSave.Hide();
            buttonClick.Show();
        }
    }
}



