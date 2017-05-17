using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class upload : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            
                
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        

        protected void uploadimage_Click(object sender, EventArgs e)
        {
            string ProductID = Request.QueryString["Id"];
            //check the extension 

            string extension = (System.IO.Path.GetExtension(imageFileUploadControl.FileName).ToLower());
            if (extension == ".jpg" || extension == ".jpeg" || extension == ".png" || extension == ".gif")
            {
                System.Drawing.Image img = System.Drawing.Image.FromStream(imageFileUploadControl.PostedFile.InputStream);
                int width = img.Width;
                int height = img.Height;
                //save the image data
                db_1626504_web1Entities1 db = new db_1626504_web1Entities1();
                Image_Table imageData = new Image_Table();
                imageData.ImgDescription = AltBox.Text;
                imageData.ImgName = ProductID;
                imageData.Extension = extension;
                db.Image_Table.Add(imageData);
                db.SaveChanges();
                //load the image in memory so we can determine it's dimensions
               

                //note much of the code to do this properly (i.e check file type is correct) is missing
                //get the id from the query string (keeping it as a string is OK in this case)
                //message for user
               
               
                string filename = imageData.ImgName.ToString() + extension;
                img.Save(Server.MapPath("~/ProductImages/" + filename));
                litResult.Text = "<p>Your file was uploaded as" + filename + " in the Uploaded Images folder</p>";
            }
        }  
        protected void ImgDesc_TextChanged(object sender, EventArgs e)
        {

        }
    }
}