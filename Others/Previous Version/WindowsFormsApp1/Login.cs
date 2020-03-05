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
using System.Diagnostics;

namespace WindowsFormsApp1
{
    public partial class Login : Form
    {
        public Login()
        {
            InitializeComponent();
            WindowState = FormWindowState.Maximized;
            Debug.WriteLine(MaximumSize);
            Debug.WriteLine(MinimumSize);
            //MinimumSize = Size;
            // MaximumSize = Size;
        }
        private void Form1_Load(object sender, EventArgs e)
        {

        }
        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            string connectionString;
            string username;
            string password;
            SqlConnection cnn;

            connectionString = @"Data Source=A039LSIN;Initial Catalog=POC;Integrated Security=SSPI";
            //connectionString = @"Data Source=192.168.43.85,1433;Persist Security Info = True; User ID = admin;Password = pass1234";

            cnn = new SqlConnection(connectionString);

            cnn.Open();
            string query = "Select * from Login where Username = '"+textBox1.Text.Trim()+ "' and password ='"+textBox2.Text.Trim()+"'";
            SqlCommand login = new SqlCommand(query, cnn);
            //SqlDataAdapter sda = new SqlDataAdapter(query, cnn);
            //DataTable dtbl = new DataTable();
            //sda.Fill(dtbl);

            
            using (SqlDataReader read = login.ExecuteReader())
            {
                while (read.Read())
                {
                    username = (string)read["Username"];
                    password = (string)read["password"];
                    textUsername.Text = username.ToString();
                    textPassword.Text = password.ToString();
                }
            }

                if(String.IsNullOrEmpty(textUsername.Text) || String.IsNullOrEmpty(textPassword.Text))
                {
                    System.Windows.Forms.MessageBox.Show("Invalid credential!");
                }
                else
                { 
                    Main frm2 = new Main();
                    this.Visible = false;
                    frm2.Show();
                }   

            /*

            if (dtbl.Rows.Count==1)
            {
                Main frm2 = new Main();
                this.Visible = false;
                frm2.Show();
            }
            else
            {
                System.Windows.Forms.MessageBox.Show("Invalid credential!");
            }
            */
            cnn.Close();
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
