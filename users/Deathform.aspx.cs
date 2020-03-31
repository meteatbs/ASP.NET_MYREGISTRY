using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Configuration;

public partial class users_Deathform : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        string dob = txtDateofdeath.Text;
        string name = txtNameofperson.Text;
        string fname = txtFathersname.Text;
        string sex = RadioButtonList1.Text;
        string age = txtAge.Text;
        string pod = txtPlaceofdeath.Text;
        string vill = txtAddress.Text;
        string nodis = txtDistrict.Text;
        string nostate = txtState.Text;
        string religion = txtReligion.Text;
        string dname = txtNameofdisease.Text;
        string query = "insert into deathofregistry  values('" + dob + "','" + name + "','" + fname + "','" + sex + "','" + age + "','" + pod + "','" + vill + "','" + nodis + "','" + nostate + "','" + religion + "','" + dname + "','notactive')";
        con.Open();


        SqlCommand cmd = new SqlCommand(query, con);
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Response.Write("<script>alert('Successfully added');</script>");
            Label2.Text = "record inserted successfully...";
            Label2.ForeColor = System.Drawing.Color.Green;
            Label2.BackColor = System.Drawing.Color.White;
            clr();
        }
        else
        {
            Label2.Text = "record Not inserted...";
            Label2.ForeColor = System.Drawing.Color.Red;
            Label2.BackColor = System.Drawing.Color.White;
        }
        con.Close();

    }
    protected void txtReset_Click(object sender, EventArgs e)
    {
        clr();
    }
    public void clr() {

        txtAddress.Text = txtAge.Text = txtDateofdeath.Text = txtDistrict.Text = txtFathersname.Text = txtNameofdisease.Text = txtNameofperson.Text = txtPlaceofdeath.Text = txtReligion.Text=txtState.Text=RadioButtonList1.Text = "";
    }
}