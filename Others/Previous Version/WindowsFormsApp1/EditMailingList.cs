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

namespace WindowsFormsApp1
{
    public partial class EditMailingList : Form
    {
        public EditMailingList()
        {
            InitializeComponent();
            string query = "Select * from email order by ISIN";
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
                dataGridView1.Rows[aa].Cells[1].Value = data["email"].ToString();
                dataGridView1.Rows[aa].Cells[2].Value = data["ISIN"].ToString();
                dataGridView1.Rows[aa].Cells[0].ReadOnly = false;
                dataGridView1.Rows[aa].Cells[1].ReadOnly = true;
                dataGridView1.Rows[aa].Cells[2].ReadOnly = true;

                //dataGridView1.Rows[aa].Cells[6].ReadOnly = true;

                //row.DefaultCellStyle.BackColor = Color.Red;
            }
            dataGridView1.Columns[0].Visible = false;
        }
        SqlConnection cnn = new SqlConnection(@"Data Source=A039LSIN;Initial Catalog=POC;Integrated Security=SSPI");
        private void EditMailingList_Load(object sender, EventArgs e)
        {

        }

        private void buttonClick_Click(object sender, EventArgs e)
        {
            buttonEdit.Show();
            buttonAdd.Show();
            buttonRemove.Show();
            buttonCancel.Show();
            buttonSave.Show();
            buttonClick.Hide();
        }

        private void buttonAdd_Click(object sender, EventArgs e)
        {

        }
    }
}
