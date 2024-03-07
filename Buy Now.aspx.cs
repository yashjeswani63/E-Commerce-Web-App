using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Reflection.Emit;
using System.Xml.Linq;

namespace E_Commerce
{
    public partial class Buy_Now : System.Web.UI.Page
    {
        SqlConnection SqlConn = new SqlConnection(ConfigurationManager.AppSettings["ConnString"]);
        SqlCommand SqlCmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConn.Open();
            SqlCmd = new SqlCommand("users_ecommerce", SqlConn);
            SqlCmd.CommandType = CommandType.StoredProcedure;
            SqlCmd.Parameters.Add("@querytype", SqlDbType.VarChar).Value = "transactiondata";
            SqlCmd.Parameters.Add("@product_name", SqlDbType.VarChar).Value = TextBox6.Text;
            SqlCmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = TextBox1.Text;
            SqlCmd.Parameters.Add("@Age", SqlDbType.Int).Value = TextBox2.Text;
            SqlCmd.Parameters.Add("@Shipping_Address", SqlDbType.VarChar).Value = TextBox3.Text;
            SqlCmd.Parameters.Add("@Contact", SqlDbType.BigInt).Value = TextBox4.Text;
            SqlCmd.Parameters.Add("@Paymentmethod", SqlDbType.VarChar).Value = RadioButtonList1.SelectedValue;
            SqlCmd.Parameters.Add("@email_id", SqlDbType.VarChar).Value = TextBox5.Text;
            SqlCmd.Parameters.Add("@seller_id", SqlDbType.VarChar).Value = TextBox7.Text;

            int x = SqlCmd.ExecuteNonQuery();

            if (x > 0)
            {
                Label1.Text = "Details Submitted";
            }
            else
            {
                Label1.Text = "Error";

            }
            SqlConn.Close();
        }
    }
}