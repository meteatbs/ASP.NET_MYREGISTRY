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

public partial class users_Birthform : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string dob = txt_dayofbirth.Text;
        string sex = rdl_sex.Text;
        string noc = txt_nochild.Text;
        string nof = txt_nameoffather.Text;
        string nom = txt_nameofmother.Text;
        string pob = txt_placeofbirth.Text;

        string notown = txt_nameoftown.Text;
        string nodis = txt_nameofdistrict.Text;
        string nostate = txt_state.Text;
        string bt = txt_birthtime.Text;


        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        string MyQuery = "insert into birthregistry values('" + dob + "','" + sex + "','" + noc + "','" + nof + "','" + nom + "','" + pob + "','" + notown + "','" + nodis + "','" + nostate + "','" + bt + "','notactive')";

        con.Open();

        SqlCommand cmd = new SqlCommand(MyQuery, con);
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Response.Write("<script>alert('Successfully added');</script>");
            Label21.Text = "record inserted successfully...";
            Label21.ForeColor = System.Drawing.Color.Green;
            Label21.BackColor = System.Drawing.Color.White;
            clr();
        }
        else
        {
            Label21.Text = "record Not inserted...";
            Label21.ForeColor = System.Drawing.Color.Red;
            Label21.BackColor = System.Drawing.Color.White;
        }
        con.Close();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        clr();
    }
    public void clr()
    {
        txt_birthtime.Text = "";
        txt_dayofbirth.Text = "";
        txt_nameofdistrict.Text = "";
        txt_nameoffather.Text = "";
        txt_nameofmother.Text = "";
        txt_nameoftown.Text = "";
        txt_nochild.Text = "";
        txt_placeofbirth.Text = "";
        txt_state.Text = "";

    }
}