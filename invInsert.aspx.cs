using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Diagnostics;

namespace invtory
{
    public partial class invInsert : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
        
        }
        /*protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=VR46/SQLEXPRESS ;Initial Catalog = stock_inventory; Trusted_Connection=true");
            //SqlCommand cmd = new SqlCommand("SELECT [catType_id], [catType_name] FROM[categoryType] WHERE catType_id = @catType_id");
            SqlCommand cmd = new SqlCommand("SELECT [catMain_id], [catMain_name] FROM [categoryMain] where catMain_id like '%'");
           // DropDownList1.Items.Add(new ListItem("Select Customer", ""));
            //DropDownList1.AppendDataBoundItems = true;
            try
            {
                conn.Open();
                DropDownList2.DataSource = cmd.ExecuteReader();
                DropDownList1.DataTextField = "ContactName";
                DropDownList1.DataValueField = "catType_id";
                DropDownList1.DataBind();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                conn.Close();
                conn.Dispose();
            }

            */

            /* SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                Console.WriteLine("{1},{0}",reader.GetSqlString(0),reader.GetSqlString(1));
            }
            reader.Close();*/
            //conn.Close();
            /*if (Debugger.IsAttached)
            {
                Console.ReadLine();
            }*/


            //String strConnString = conn.ConnectionString();
            /*conn.ConnectionString = ;

            String strQuery = "SELECT [catType_id], [catType_name] FROM [categoryType] WHERE catType_id = @catType_id";
            //SqlConnection con = new SqlConnection("Data Source=VR46/SQLEXPRESS ;Initial Catalog = stock_inventory; Trusted_Connection=true");
            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("@catType_id", DropDownList1);
            //cmd.CommandType = CommandType.Text;
            cmd.CommandText = strQuery;
            cmd.Connection = con;
            try
            {
                conn.Open();
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                 /*   txtCompanyName.Text = sdr["CompanyName"].ToString();
                    txtContactTitle.Text = sdr["ContactTitle"].ToString();
                    txtAddress.Text = sdr["Address"].ToString();
                    txtCity.Text = sdr["City"].ToString();
                    lblCountry.Text = sdr["Country"].ToString();*/
           /*     }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
                con.Dispose();
            }

        }*/
    }
}