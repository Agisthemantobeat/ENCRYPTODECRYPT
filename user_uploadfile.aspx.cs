using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

public partial class user_uploadfile : System.Web.UI.Page
{
    string mailid;
    int chck;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Server.Transfer("userpage_userdata.aspx");
    }

    protected void logout_Click(object sender, EventArgs e)
    {
        Server.Transfer("login.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            if (!FileUpload1.HasFile)
            {
                Label1.Text = "please select a file to be uploaded";
            }
            else
            {
                HttpCookie cookie = Request.Cookies["USER"];
                mailid = cookie["EMAIL"].ToString();
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                string contentType = FileUpload1.PostedFile.ContentType;
                using (Stream fs = FileUpload1.PostedFile.InputStream)
                {
                    using (BinaryReader br = new BinaryReader(fs))
                    {
                        byte[] bytes = br.ReadBytes((Int32)fs.Length);
                        SqlConnection con = new SqlConnection("Data Source=SQL5049.site4now.net;Initial Catalog=DB_A55CDE_edec028;User Id=DB_A55CDE_edec028_admin;Password=123@encrp;");
                        {
                            string query = "VAL_USER";
                            SqlCommand cmd = new SqlCommand(query, con);
                            cmd.CommandType = System.Data.CommandType.StoredProcedure;
                            cmd.Connection = con;
                            con.Open();
                            cmd.Parameters.AddWithValue("@FileName", filename);
                            cmd.Parameters.AddWithValue("@ContentType", contentType);
                            cmd.Parameters.AddWithValue("@Data", bytes);
                            cmd.Parameters.AddWithValue("@email", mailid);

                            chck = cmd.ExecuteNonQuery();
                            con.Close();

                        }
                    }
                }
            }
            if (chck == 1)
            {
                Label1.Text = "file uploaded successfully";
            }
            else
            {
                Label1.Text = "Something went wrong";
            }
        }
        catch(Exception err)
        {
            Label1.Text = "Something went wrong"+err.Message;
        }
    }
}