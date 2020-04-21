using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            string password = Convert.ToBase64String(Encryptpass(pwd.Text));
            SqlConnection con = new SqlConnection("Data Source=SQL5049.site4now.net;Initial Catalog=DB_A55CDE_edec028;User Id=DB_A55CDE_edec028_admin;Password=123@encrp;");
            SqlCommand cmd = new SqlCommand("UserReg", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            con.Open();
            cmd.Parameters.AddWithValue("@username", username.Text);
            cmd.Parameters.AddWithValue("@password", password);
            cmd.Parameters.AddWithValue("@email", gmail.Text);
            int chck = cmd.ExecuteNonQuery();
            con.Close();
            if (chck == 1)
            {
                successmessage.Text = "Registered successfully";
            }
            else
            {
                failedmessage.Text = "Registration failed";
            }
        }
        catch(Exception err)
        {
            Label1.Text= "Something went wrong : " + err.Message;
        }
    }
    public byte[] Encryptpass(string password)
    {
        byte[] encode = Encoding.UTF8.GetBytes(password);
        return encode;
    }
}