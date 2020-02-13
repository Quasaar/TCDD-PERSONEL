using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    OleDbConnection connection = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\Users\Administrator\Documents\Visual Studio 2015\WebSites\TcddTest\App_Data\TcddDb.accdb");



    protected void Button1_Click(object sender, EventArgs e)
    {
        connection.Open();

        OleDbCommand login = new OleDbCommand("Select * From Kullanicilar where KullaniciAdi=@p1 and Sifre=@p2",connection);
        login.Parameters.AddWithValue("@p1", Userinput.Text);
        login.Parameters.AddWithValue("@p2", Passinput.Text);
        OleDbDataReader dr = login.ExecuteReader();
        if (dr.Read())
        {
            Session.Add("kullanici", Userinput.Text);
            Response.Redirect("Default.aspx");
      
        }

        else
        {
            Alert.Visible = true;
        }
        connection.Close();
    }
}