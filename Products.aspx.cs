using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Products : System.Web.UI.Page
    {
        SqlConnection connect = new SqlConnection(@"Data Source = SQL2016.FSE.Network; User ID = user_db_1626504_web1; Password=brian1234");
        protected void Page_Load(object sender, EventArgs e)
        {
            connect.Open();
            SqlCommand cmd = connect.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "select * from Product_Table INNER JOIN Image_Table ON Product_Table.ProductID = Image_Table.ImgName";
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            repeater.DataSource = dt;
            repeater.DataBind();
            connect.Close();
        }

        protected void repeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}