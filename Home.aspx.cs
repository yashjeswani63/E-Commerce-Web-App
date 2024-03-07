using System;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI;
using System.Configuration;
using System.Drawing;

namespace E_Commerce
{
    public partial class Home : System.Web.UI.Page
    {
        SqlConnection SqlConn = new SqlConnection(ConfigurationManager.AppSettings["ConnString"]);
        SqlCommand SqlCmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            //handling the data of products in repeater and session management
            if (!IsPostBack) {
                ClientScriptManager cs = Page.ClientScript;
                cs.RegisterForEventValidation(Repeater1.UniqueID, "BuyNow");
                cs.RegisterForEventValidation(Repeater1.UniqueID, "AddtoCart");
            }
            SqlConn.Open();
            SqlCmd = new SqlCommand("users_ecommerce", SqlConn);
            SqlCmd.CommandType = CommandType.StoredProcedure;
            SqlCmd.Parameters.Add("@querytype", SqlDbType.VarChar).Value = "getallProducts";
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
            SqlConn.Close();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            //redirecting on buy now
            Response.Redirect("Buy Now.aspx");
        }

        protected Color GetColor(object Stock_count)
        {
            //color of stock
            int stockCount = Convert.ToInt32(Stock_count);
            if (stockCount > 10)
            {
                return Color.Green;

            }
            else if (stockCount < 10)
            {
                return Color.Red;

            }
            else
            {
                return Color.Gray;
            }
        }


        protected string Stockavailability(object Stock_count)
        {
            //availability of stock showing to user
            int stockCount = Convert.ToInt32(Stock_count);
            if (stockCount > 10)
            {
                return "Available";

            }

            else if (stockCount <= 10 && stockCount > 0)
            {
                return ("Only " + stockCount + " Items Left");

            }
            else
            {
                return "Out Of Stock";

            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //logout
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }

        

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            //search product in the textbox
            if (TextBox1.Text != null)
            {
                SqlConn.Open();
                SqlCommand SqlCmd = new SqlCommand("users_ecommerce", SqlConn);
                SqlCmd.CommandType = CommandType.StoredProcedure;
                SqlCmd.Parameters.Add("@querytype", SqlDbType.VarChar).Value = "searchProduct";
                SqlCmd.Parameters.Add("@Title", SqlDbType.VarChar).Value = TextBox1.Text;
                SqlDataReader sqldr = SqlCmd.ExecuteReader();
                if (sqldr.HasRows)
                {
                    Label8.Text = "";
                    Repeater1.DataSource = sqldr;
                    Repeater1.DataBind();

                }
                else
                {
                    Repeater1.DataSource = "";
                    Repeater1.DataBind();
                    Label8.Text = "Item not in list";
                }
                SqlConn.Close();
            }
            else if (TextBox1.Text == "")
            {
                SqlConn.Open();
                SqlCommand SqlCmd = new SqlCommand("users_ecommerce", SqlConn);
                SqlCmd.CommandType = CommandType.StoredProcedure;
                SqlCmd.Parameters.Add("@querytype", SqlDbType.VarChar).Value = "getallProducts";
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
}