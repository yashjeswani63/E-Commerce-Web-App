using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Drawing;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce
{
    public partial class Products : System.Web.UI.Page
    {
        SqlConnection SqlConn = new SqlConnection(ConfigurationManager.AppSettings["ConnString"]);
        SqlCommand SqlCmd;

        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Session["emailuser"] != null)
            {
                this.MasterPageFile = "User.Master";
            }

            else if (Session["emailseller"] != null)
            {
                this.MasterPageFile = "seller.Master";
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
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
                    Label7.Text = "";
                    Repeater1.DataSource = sqldr;
                    Repeater1.DataBind();

                }
                else
                {
                    Repeater1.DataSource = "";
                    Repeater1.DataBind();
                    Label7.Text = "Item not in list";
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