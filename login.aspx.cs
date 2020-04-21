using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void signin_Click(object sender, EventArgs e)
    {
        try
        {

            string Usrname = Username.Text;
            string Password = Convert.ToBase64String(Encryptpass(password.Text));
            SqlConnection con = new SqlConnection("Data Source=SQL5049.site4now.net;Initial Catalog=DB_A55CDE_edec028;User Id=DB_A55CDE_edec028_admin;Password=123@encrp;");
            SqlCommand command = new SqlCommand("SELECT UserName,password,email FROM UserProfile", con);
            {
                con.Open();
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        if (Usrname == reader[0].ToString() && Password == reader[1].ToString())
                        {
                            HttpCookie cookie = new HttpCookie("USER");
                            cookie["EMAIL"] = reader[2].ToString();
                            Response.Cookies.Add(cookie);
                            Server.Transfer("user_uploadfile.aspx");
                        }
                        else
                        {
                            invalid.Text = "Invalid credentials";
                        }
                    }
                    con.Close();
                }
            }
        }
        catch(Exception err)
        {
            Label1.Text = "Something went wrong : " + err.Message;
        }
        
    }
    public byte[] Encryptpass(string password)
    {
        byte[] encode = Encoding.UTF8.GetBytes(password);
        return encode;
    }
}