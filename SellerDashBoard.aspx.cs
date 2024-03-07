using System;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace E_Commerce
{
    public partial class SellerDashBoard : System.Web.UI.Page
    {
        SqlConnection SqlConn = new SqlConnection(ConfigurationManager.AppSettings["ConnString"]);
        SqlCommand SqlCmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            //previous uploaded products and orders binding
            if (Page.IsPostBack == false)
            {
                Gridbind();
                Gridbind1();
            }

        }


        private void Gridbind()
        {
            SqlCmd = new SqlCommand("users_ecommerce", SqlConn);
            SqlCmd.CommandType = CommandType.StoredProcedure;
            SqlCmd.Parameters.Add("@querytype", SqlDbType.VarChar).Value = "getProducts";
            SqlCmd.Parameters.Add("@Owner_id", SqlDbType.VarChar).Value = Session["emailseller"];
            SqlDataAdapter sqldata = new SqlDataAdapter(SqlCmd);
            DataTable dt = new DataTable();
            sqldata.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        private void Gridbind1()
        {
            SqlCmd = new SqlCommand("users_ecommerce", SqlConn);
            SqlCmd.CommandType = CommandType.StoredProcedure;
            SqlCmd.Parameters.Add("@querytype", SqlDbType.VarChar).Value = "showdatatoseller";
            SqlCmd.Parameters.Add("@seller_id", SqlDbType.VarChar).Value = Session["emailseller"];
            SqlDataAdapter sqldata = new SqlDataAdapter(SqlCmd);
            DataTable dt = new DataTable();
            sqldata.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //inserting the product information by the seller
            SqlConn.Open();
            SqlCmd = new SqlCommand("users_ecommerce", SqlConn);
            SqlCmd.CommandType = CommandType.StoredProcedure;
            String ImagePath = "~/ProductImage/" + FileUpload1.FileName;
            SqlCmd.Parameters.Add("@querytype", SqlDbType.VarChar).Value = "InsertProduct";
            SqlCmd.Parameters.Add("@product_id", SqlDbType.Int).Value = TextBox1.Text;
            SqlCmd.Parameters.Add("@Title", SqlDbType.VarChar).Value = TextBox2.Text;
            SqlCmd.Parameters.Add("@Description", SqlDbType.VarChar).Value = TextBox3.Text;
            SqlCmd.Parameters.Add("@Image", SqlDbType.VarChar).Value = ImagePath;
            SqlCmd.Parameters.Add("@Stock_count", SqlDbType.Int).Value = TextBox4.Text;
            SqlCmd.Parameters.Add("@Price", SqlDbType.Float).Value = TextBox5.Text;
            SqlCmd.Parameters.Add("@Selling_price", SqlDbType.Int).Value = TextBox6.Text;
            SqlCmd.Parameters.Add("@Created_by", SqlDbType.VarChar).Value = TextBox7.Text;
            SqlCmd.Parameters.Add("@Category_id", SqlDbType.Int).Value = RadioButtonList1.SelectedValue;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/ProductImage/") + FileUpload1.FileName);
            SqlCmd.Parameters.Add("@Owner_id", SqlDbType.VarChar).Value = Session["emailseller"];
            int x = SqlCmd.ExecuteNonQuery();

            if (x > 0)
            {
                Label1.Text = "Product Submitted";
                Gridbind();
            }
            else
            {
                Label1.Text = "Error";

            }
            SqlConn.Close();

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            //row editing
            GridView1.EditIndex = e.NewEditIndex;
            Gridbind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //updating the product information by the seller
            SqlConn.Open();
            Label PID = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");
            TextBox Is_active = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1");
            TextBox Title = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2");
            TextBox description = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox3");
            TextBox stockcount = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox4");
            TextBox price = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox5");
            TextBox selling_price = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox6");
            TextBox updated_at = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox8");
            TextBox created_by = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox9");
            TextBox category_id = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox10");
            SqlCmd = new SqlCommand("users_ecommerce", SqlConn);
            SqlCmd.CommandType = CommandType.StoredProcedure;
            SqlCmd.Parameters.Add("@querytype", SqlDbType.VarChar).Value = "updateProducts";
            SqlCmd.Parameters.Add("@Product_id", SqlDbType.Int).Value = PID.Text;
            SqlCmd.Parameters.Add("@Is_active", SqlDbType.VarChar).Value = Is_active.Text;
            SqlCmd.Parameters.Add("@Title", SqlDbType.VarChar).Value = Title.Text;
            SqlCmd.Parameters.Add("Description", SqlDbType.VarChar).Value = description.Text;
            SqlCmd.Parameters.Add("@Stock_count", SqlDbType.Int).Value = stockcount.Text;
            SqlCmd.Parameters.Add("@Price", SqlDbType.Float).Value = price.Text;
            SqlCmd.Parameters.Add("@Selling_price", SqlDbType.Int).Value = selling_price.Text;
            SqlCmd.Parameters.Add("@Updated_at", SqlDbType.DateTime).Value = updated_at.Text;
            SqlCmd.Parameters.Add("@Created_by", SqlDbType.VarChar).Value = created_by.Text;
            SqlCmd.Parameters.Add("@Category_id", SqlDbType.Int).Value = category_id.Text;
            SqlCmd.ExecuteNonQuery();
            SqlConn.Close();
            GridView1.EditIndex = -1;
            Gridbind();

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //deleting the product by the seller
            SqlConn.Open();
            Label PID = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");
            SqlCmd = new SqlCommand("users_ecommerce", SqlConn);
            SqlCmd.CommandType = CommandType.StoredProcedure;
            SqlCmd.Parameters.Add("@querytype", SqlDbType.VarChar).Value = "deleteProduct";
            SqlCmd.Parameters.Add("@Product_id", SqlDbType.VarChar).Value = PID.Text;
            SqlCmd.ExecuteNonQuery();
            SqlConn.Close();
            GridView1.EditIndex = -1;
            Gridbind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "deactivate")
            {
                //deactivate the product
                SqlConn.Open();
                int row = Convert.ToInt32(e.CommandArgument);
                SqlCmd = new SqlCommand("users_ecommerce", SqlConn);
                SqlCmd.CommandType = CommandType.StoredProcedure;
                SqlCmd.Parameters.Add("@querytype", SqlDbType.VarChar).Value = "deactivate";
                SqlCmd.Parameters.Add("@Product_id", SqlDbType.Int).Value = row;
                SqlCmd.ExecuteNonQuery();
                SqlConn.Close();
                GridView1.EditIndex = -1;
                Gridbind();
            }
            if (e.CommandName == "activate")
            {
                //activate the product
                SqlConn.Open();
                int row = Convert.ToInt32(e.CommandArgument);
                SqlCmd = new SqlCommand("users_ecommerce", SqlConn);
                SqlCmd.CommandType = CommandType.StoredProcedure;
                SqlCmd.Parameters.Add("@querytype", SqlDbType.VarChar).Value = "activate";
                SqlCmd.Parameters.Add("@Product_id", SqlDbType.Int).Value = row;
                SqlCmd.ExecuteNonQuery();
                SqlConn.Close();
                GridView1.EditIndex = -1;
                Gridbind();
            }
            if (e.CommandName == "outofstock")
            {
                //mark product out of stock
                SqlConn.Open();
                int row = Convert.ToInt32(e.CommandArgument);
                SqlCmd = new SqlCommand("users_ecommerce", SqlConn);
                SqlCmd.CommandType = CommandType.StoredProcedure;
                SqlCmd.Parameters.Add("@querytype", SqlDbType.VarChar).Value = "outofstock";
                SqlCmd.Parameters.Add("@Product_id", SqlDbType.Int).Value = row;
                SqlCmd.ExecuteNonQuery();
                SqlConn.Close();
                GridView1.EditIndex = -1;
                Gridbind();
            }   
        }
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            Gridbind();
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            //after logout redirecting on login and session kill
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
}