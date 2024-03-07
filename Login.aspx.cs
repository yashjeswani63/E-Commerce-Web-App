using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Runtime.Remoting.Messaging;
using static System.Collections.Specialized.BitVector32;

namespace E_Commerce
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection SqlConn = new SqlConnection(ConfigurationManager.AppSettings["ConnString"]);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //login the user or seller in particular dashboard comprises of session
            SqlConn.Open();
            SqlCommand SqlCmd = new SqlCommand("users_ecommerce", SqlConn);
            SqlCmd.CommandType = CommandType.StoredProcedure;
            SqlCmd.Parameters.Add("@querytype", SqlDbType.VarChar).Value = "getUsers";
            SqlCmd.Parameters.Add("@email", SqlDbType.VarChar).Value = TextBox1.Text;
            SqlCmd.Parameters.Add("@password", SqlDbType.VarChar).Value = TextBox2.Text;
            string userType = SqlCmd.ExecuteScalar().ToString();
                        
               if (userType == "Seller")
               {
                    Session["emailseller"] = TextBox1.Text;
                    Session.Timeout = 300;
                    Response.Redirect("SellerDashBoard.aspx");
               }
               else if(userType == "Buyer")
               {
                    Session["emailuser"] = TextBox1.Text;
                    Session.Timeout = 300;
                    Response.Redirect("User.aspx");
               }else
               {
                    Label1.Text = "Invalid Credentils !!";
               }
        }
    }
}