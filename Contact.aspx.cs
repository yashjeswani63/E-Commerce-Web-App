using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Session["emailuser"] != null && Session["emailuser"].ToString() != "")
            {
                this.MasterPageFile = "User.Master";
            }


            else if (Session["emailseller"] != null && Session["emailseller"].ToString() != "")
            {
                this.MasterPageFile = "seller.Master";
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}