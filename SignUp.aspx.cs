using System;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace E_Commerce
{
    public partial class SignUp : System.Web.UI.Page
    {
        SqlConnection SqlConn = new SqlConnection(ConfigurationManager.AppSettings["ConnString"]);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //inserting the user and seller data on button click
            SqlConn.Open();
            SqlCommand SqlCmd = new SqlCommand("users_ecommerce", SqlConn);
            SqlCmd.CommandType = CommandType.StoredProcedure;
            SqlCmd.Parameters.Add("@querytype", SqlDbType.VarChar).Value = "Insertusers";
            SqlCmd.Parameters.Add("@first_name", SqlDbType.VarChar).Value = TextBox2.Text;
            SqlCmd.Parameters.Add("@last_name", SqlDbType.VarChar).Value = TextBox3.Text;
            SqlCmd.Parameters.Add("@email", SqlDbType.VarChar).Value = TextBox4.Text;
            SqlCmd.Parameters.Add("@password", SqlDbType.VarChar).Value = TextBox5.Text;
            SqlCmd.Parameters.Add("@user_type", SqlDbType.VarChar).Value = RadioButtonList1.SelectedValue;
            SqlCmd.ExecuteNonQuery();
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            RadioButtonList1.SelectedIndex = -1;
            Response.Redirect("Login.aspx");
            SqlConn.Close();
        }
    }
}