using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data;
public partial class userpage_userdata : System.Web.UI.Page
{

    Random r = new Random();
    HttpCookie otpcookie = new HttpCookie("otp");
    string otp, mailid;
    int id;
    string constr = "Data Source=SQL5049.site4now.net;Initial Catalog=DB_A55CDE_edec028;User Id=DB_A55CDE_edec028_admin;Password=123@encrp;";
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("select FileID,FileName,ContentType from tblfiles", con);
        con.Open();
        SqlDataReader rdr = cmd.ExecuteReader();
        DataTable dt = new DataTable();
        dt.Load(rdr);
        userdatatable.DataSource = dt;
        userdatatable.DataBind();
        con.Close();
    }

    protected void download_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(constr);
            id = Convert.ToInt32(fileid.Text);
            SqlCommand cmd = new SqlCommand("select email from tblfiles where FileID='" + id + "'", con);
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            rdr.Read();
            mailid = rdr[0].ToString();
            fileid.Enabled = false;

            otp = r.Next(100000, 999999).ToString();
            otpcookie["sentotp"] = otp;
            Response.Cookies.Add(otpcookie);
            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
            smtpClient.Credentials = new System.Net.NetworkCredential("edec028@gmail.com", "123@encrp");
            // smtpClient.UseDefaultCredentials = true; // uncomment if you don't want to use the network credentials
            smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtpClient.EnableSsl = true;
            MailMessage mail = new MailMessage();
            //Setting From , To and CC
            mail.From = new MailAddress("edec028@gmail.com", "EncryptoDecrypt");
            mail.To.Add(new MailAddress(mailid));
            mail.Subject = "OTP for file download";
            mail.Body = "This mail is to send you OTP that will be asked you. " + otp + " is your OTP for file download";
            smtpClient.Send(mail);
            Label2.Text = "OTP has been sent to your E-mail Id";
        }
        catch (Exception)
        {
            Label2.Text = "Something Went Wrong";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {
            fileid.Enabled = true;
            HttpCookie otpcookie = Request.Cookies["otp"];
            if (otpcookie != null)
            {
                if (TextBox1.Text == otpcookie["sentotp"])
                {
                    byte[] bytes;
                    string fileName, contentType;
                    using (SqlConnection con = new SqlConnection(constr))
                    {
                        using (SqlCommand cmd = new SqlCommand())
                        {
                            id = Convert.ToInt32(fileid.Text);
                            cmd.CommandText = "select FileName, Data, ContentType from tblfiles where FileID=@FileID";
                            cmd.Parameters.AddWithValue("@FileID", id);
                            cmd.Connection = con;
                            con.Open();
                            using (SqlDataReader sdr = cmd.ExecuteReader())
                            {
                                sdr.Read();
                                bytes = (byte[])sdr["Data"];
                                contentType = sdr["ContentType"].ToString();
                                fileName = sdr["FileName"].ToString();
                            }
                            con.Close();
                        }
                    }
                    Response.Clear();
                    Response.Buffer = true;
                    Response.Charset = "";
                    Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    Response.ContentType = contentType;
                    Response.AppendHeader("Content-Disposition", "attachment; filename=" + fileName);
                    Response.BinaryWrite(bytes);
                    Response.Flush();
                    Response.End();



                }
                else
                {
                    Label2.Text = "Entered Wrong OTP That's Why you can not download it";
                }

                otp = null;

            }
        }
        catch (Exception err)
        {
            Label2.Text = "Something went wrong" + err.Message;
        }
    }

    protected void logout_Click(object sender, EventArgs e)
    {
        Server.Transfer("login.aspx");
    }
}