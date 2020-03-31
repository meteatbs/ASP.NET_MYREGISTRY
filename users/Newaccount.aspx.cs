using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class users_Newaccount : System.Web.UI.Page
{
    SqlConnection sqlCon = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        string fname = txtFirstname.Text;
        string lname = txtLastname.Text;
        string logname = txtLogin.Text;
        string pass = txtPassword.Text;
        string eid = txtEmail.Text;
        string loc = txtLocation.Text;
        
        sqlCon.Open();
        string query = "INSERT INTO NewAccount values('','"+fname+"','"+lname+"','"+logname+"','"+pass+"','"+eid+"','"+loc+"','user')";
        SqlCommand cmd = new SqlCommand(query, sqlCon);
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            update();
            Response.Redirect("welcome.aspx");
        }
        else
        {
            Label7.Text = "Error";
        }
        sqlCon.Close();
    }

    public void update() {
        sqlCon.Close();
        sqlCon.Open();
        SqlDataAdapter sda = new SqlDataAdapter("SELECT SINO FROM NewAccount WHERE email='"+txtEmail.Text+"'",sqlCon);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count == 1)
        {
            string id = dt.Rows[0]["SINO"].ToString();
            string genid = txtFirstname.Text.ToString() + txtLastname.Text.ToString() + id.ToString();
            string sql = "UPDATE NewAccount SET User_Id='" + genid + "'WHERE SINO='" + id + "'";
            SqlCommand cmd2 = new SqlCommand(sql, sqlCon);
            cmd2.ExecuteNonQuery();
            

            Label7.Text = "Account created succesfully";
            sqlCon.Close();

        }
        else 
        {

            
            //Response.Redirect("~/user/NewAccount.aspx");
            Label7.Text = "Account not created";
        }
        sqlCon.Close();

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        sqlCon.Close();
        sqlCon.Open();
        SqlCommand cmd = new SqlCommand("select username from NewAccount where username=@username",sqlCon);
        cmd.Parameters.AddWithValue("@username", txtLogin.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            lblStatus.Text = "Not Available";
            lblStatus.ForeColor = System.Drawing.Color.Red;
            btnRegister.Visible = false;

        }
        else {
            lblStatus.Text = "Username Available";
            lblStatus.ForeColor = System.Drawing.Color.Green;
            btnRegister.Visible = true;
        }
    }
}