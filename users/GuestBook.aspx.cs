using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class users_GuestBook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
            con.Open();

            string Fullname = txtFullname.Text;
            string Email = txtEmail.Text;
            string City = txtCity.Text;
            string MobileNumber = txtMobile.Text;
            string Comments = txtComment.Text;
            string query = "insert into guestbookadmin values('"+Fullname+"','"+Email+"','"+City+"','"+MobileNumber+"','"+Comments+"','Inactive') ";
            SqlCommand cmd = new SqlCommand(query,con);
            int i=cmd.ExecuteNonQuery();

            if (i > 0)
            {
                Label1.Text = "record save succesfull";
            }
            else
            {

            }
        }
        catch (Exception ex)
        {

            Label1.Text = "error;"+ex.Message.ToString();
        }
    }
}