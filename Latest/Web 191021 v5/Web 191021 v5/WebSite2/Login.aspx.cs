using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class Login : System.Web.UI.Page
    {

    //public string connectionString = @"Data Source=A039LSIN;Initial Catalog=POC;Integrated Security=SSPI";
    string connectionString = ConfigurationManager.AppSettings["gConnectionString"];
    //string acceptedUsername = ConfigurationManager.AppSettings["gUsername"];
    //string acceptedPassword = ConfigurationManager.AppSettings["gPassword"];
    

    //public static string connectionString = @"Data Source=A039LSIN;Initial Catalog=POC;Integrated Security=SSPI";
    protected void Page_Load(object sender, EventArgs e)
    {
        Debug.WriteLine(ConfigurationManager.AppSettings["gUsername"]);
        Debug.WriteLine(ConfigurationManager.AppSettings["gPassword"]);


            ConfigurationManager.AppSettings["gUsername"] = "";
            ConfigurationManager.AppSettings["gPassword"] = "";

 
    }

        protected void Button1_Click1(object sender, EventArgs e)
        {
        //Button1.Attributes.Add("OnClick", "AlertBox()");
        //Button1.Attributes.Add("OnClick", "CheckCondition();");
        
        string username;
            string password;
            SqlConnection cnn;
            cnn = new SqlConnection(this.connectionString);

            cnn.Open();
            string query = "Select * from login where username = '" + TextBox1.Text.Trim() + "' and password ='" + TextBox2.Text.Trim() + "'";
            SqlCommand login = new SqlCommand(query, cnn);

            using (SqlDataReader read = login.ExecuteReader())
            {
                while (read.Read())
                {
                    username = (string)read["username"];
                    password = (string)read["password"];
                    TextBox3.Text = username.ToString();
                    TextBox4.Text = password.ToString();
                }
            }

            if (String.IsNullOrEmpty(TextBox3.Text) || String.IsNullOrEmpty(TextBox4.Text))
            {
                string myStringVariable = "Invalid credential!";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
                //System.Web.MessageBox.Show();
            }
            else
            {
            ConfigurationManager.AppSettings["gUsername"] = TextBox3.Text;
            ConfigurationManager.AppSettings["gPassword"] = TextBox4.Text;
                Debug.WriteLine(ConfigurationManager.AppSettings["gUsername"]);
            Debug.WriteLine(ConfigurationManager.AppSettings["gPassword"]);
            
            Response.Redirect("Main.aspx");
        }

            cnn.Close();



        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
