using System;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace E_Commerce
{
    public partial class CartProducts : System.Web.UI.Page
    {
        SqlConnection SqlConn = new SqlConnection(ConfigurationManager.AppSettings["ConnString"]);
        SqlCommand SqlCmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConn.Open();
            SqlCmd = new SqlCommand("users_ecommerce", SqlConn);
            SqlCmd.CommandType = CommandType.StoredProcedure;
            SqlCmd.Parameters.Add("@querytype", SqlDbType.VarChar).Value = "getcartProducts";
            SqlDataReader sqldr = SqlCmd.ExecuteReader();
            if (sqldr.HasRows)
            {

                Repeater1.DataSource = sqldr;
                Repeater1.DataBind();

            }
            else
            {
                Repeater1.DataSource = "";
                Repeater1.DataBind();
            }
        }
    }
}