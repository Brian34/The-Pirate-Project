using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SmtpClient client = new SmtpClient();
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.EnableSsl = true;
            client.Host = "smtp.gmail.com";
            client.Port = 587;

            // Smtp authentication
            System.Net.NetworkCredential userpass = new System.Net.NetworkCredential("brylaksa@gmail.com", "brylaksa1234");
            client.UseDefaultCredentials = false;
            client.Credentials = userpass;

            MailMessage msg = new MailMessage();
            msg.From = new MailAddress(TextBox2.Text);
            msg.To.Add(new MailAddress(TextBox2.Text));

            msg.Subject = TextBox4.Text;
            msg.IsBodyHtml = true;
            msg.Body = string.Format("From: " + TextBox1.Text + ",   Email: " + TextBox2.Text + ",   Message: " + TextBox3.Text);

            try
            {
                client.Send(msg);
                ContactErr.Text = "Your message has been successfully sent.";
            }
            catch (Exception ex)
            {
                ContactErr.Text = "Error occured while sending your message." + ex.Message;
            }
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox4.Text = "";
            TextBox3.Text = "";
        }
    }
}