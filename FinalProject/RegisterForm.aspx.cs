using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class RegisterForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["FacultAdminConnectionString"].ConnectionString);
            conn.Open();
            string checkRegis = "select count(*) from Register where CourseCrn='" + TextBoxCID.Text + "'";
            SqlCommand com = new SqlCommand(checkRegis, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp == 1)
            {
                Response.Write("User already Exists");
            }
            conn.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["FacultAdminConnectionString"].ConnectionString);
            conn.Open();
            string insertQuery = "insert into Register (CourseName,CourseCrn) values (@CourName ,@CourNum)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.AddWithValue("@CourName", TextBoxCN.Text);
            com.Parameters.AddWithValue("@CourNum", TextBoxCID.Text);
            try
            {
                com.ExecuteNonQuery();
                Response.Redirect("ClassesReg.aspx");
                Response.Write("Registration is Successful");
                
            }
            catch (SqlException exception)
            {
                Response.Write("Registration is unsuccessful" + exception.ToString());
                
            }

            conn.Close();

        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBoxCN.Text = " ";
        TextBoxCID.Text = " ";
        
    }
}