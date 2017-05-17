using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class IndividualProductsPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string entryIdString = Request.QueryString["id"];
            int entryId = int.Parse(entryIdString);
            db_1626504_web1Entities1 db = new db_1626504_web1Entities1();
            var entry = db.Product_Table.Single(p => p.ProductID == entryId);
            litTitle.Text = entry.ProductDescription;
            var ProdPrice = entry.ProductPrice;
            string strproductprice = Convert.ToString(ProdPrice);
            litBody.Text = strproductprice;
            litDate.Text = entry.ProductQuantity;
            var imgtab = db.Image_Table.Single(p => p.ImgName == entryIdString);
            string imagefile = imgtab.ImgName;
            string imgextens = imgtab.Extension;
            string alt = imgtab.ImgDescription;

            string imglocation = imagefile + imgextens;
            Image1.ImageUrl = "ProductImages/" + imglocation;
            Image1.AlternateText = alt;
        }
    }
}