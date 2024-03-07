using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce
{
    
    public partial class UserProfile : System.Web.UI.Page
    {
        SqlConnection SqlConn = new SqlConnection(ConfigurationManager.AppSettings["ConnString"]);

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
            SqlCommand SqlCmd = new SqlCommand("users_ecommerce", SqlConn);
            SqlCmd.CommandType = CommandType.StoredProcedure;
            SqlCmd.Parameters.Add("@querytype", SqlDbType.VarChar).Value = "buyerprofile";
            if (Session["emailuser"] != null)
            {
                SqlCmd.Parameters.Add("@email", SqlDbType.VarChar).Value = Session["emailuser"];
            }
            else
            {
                SqlCmd.Parameters.Add("@email", SqlDbType.VarChar).Value = Session["emailseller"];
            }
            
            SqlDataReader sqldr = SqlCmd.ExecuteReader();
            if (sqldr.Read())
            {
                Label1.Text = sqldr["first_name"].ToString();
                Label2.Text = sqldr["last_name"].ToString();
                Label3.Text = sqldr["email"].ToString();
                Label4.Text = sqldr["user_type"].ToString();
            }
            SqlConn.Close();
        }
    }
}