using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["FacultAdminConnectionString"].ConnectionString);
            conn.Open();
            string checkUser = "select count(*) from Log_Users where Username='" + TextBoxUN.Text + "'";
            SqlCommand com = new SqlCommand(checkUser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if(temp == 1)
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
            string insertQuery = "insert into Log_Users (Username,PASSWORD,Time_Logged_in, Time_Logged_out, Status, Date_Logged_in ,E_MAIL) values (@Uname ,@Password,GETDATE(), GETDATE(), 1, GETDATE(), @Email)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.AddWithValue("@Uname", TextBoxUN.Text);
            com.Parameters.AddWithValue("@Password", TextBoxEmail.Text);
            com.Parameters.AddWithValue("@Email", TextBoxPass.Text);
            try
            {
                com.ExecuteNonQuery();
                Response.Write("Registration is Successful");
                lblSuccess.Text = "Successful";
            }
            catch (SqlException exception)
            {
                Response.Write("Registration is unsuccessful" + exception.ToString());
                lblSuccess.Text = "Unsuccessfull, Please Try Again.";
            }

            conn.Close();

            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
    }
    protected void Reset_Click(object sender, EventArgs e)
    {
        TextBoxUN.Text = " ";
        TextBoxPassChar.PasswordChar = "*";
        TextBoxEmail.Text = " ";
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("RegisterForm.aspx");
    }
  
}