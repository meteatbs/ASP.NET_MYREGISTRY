using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class loginform : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            string uid = txt_user.Text;
            string pass = txt_pass.Text;
            string qry = "select * from NewAccount where username='" + uid + "' and password='" + pass + "' ";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
            con.Open();
            SqlDataAdapter adpt = new SqlDataAdapter(qry, con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            if (dt.Rows.Count == 1)//returns true
            {
                Session["User"] = uid;

                if (dt.Rows[0]["Position"].ToString() == "admin")//arama yaptıgında birinci sıraya geldigi icin
                {

                    Response.Redirect("~/ADMIN/AdminHome.aspx/");
                }
                else if (dt.Rows[0]["Position"].ToString() == "user")
                {

                    Response.Redirect("~/users/indexpage.aspx/");

                }
                con.Close();
            }

            else
            {
                Label1.Text = "Invalid username & Password...";
                Label1.ForeColor = System.Drawing.Color.Red;
            }


            //if (sdr.Read())
            //{
            //    Label1.Text = "Login success...";
            //    Label1.ForeColor = System.Drawing.Color.Green;
            //}
            //else
            //{
            //    Label1.Text = "Invalid username & Password...";
            //    Label1.ForeColor = System.Drawing.Color.Red;

            //}
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);


        }

    }
}