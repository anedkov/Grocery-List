using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class GroceryList : System.Web.UI.Page
{
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
        firstuserlistgrid.DataBind();
        
    }

    
    protected void addToListButton_Click(object sender, EventArgs e)
    {
        SqlDataSourceListProducts.Insert();
    }

    protected void listgrid_SelectedIndexChanged(object sender, EventArgs e)
    {
     
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        firstuserlistgrid.DataBind();
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void productDDL_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataSourceListProducts.Delete();
    }



    protected void SqlDataSourceListShow_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {
        

    }

    protected void addListButton_Click(object sender, EventArgs e)
    {
        listNameTB.Visible = true;
        listNameTB.Focus();


        SqlConnection scon = new SqlConnection(SqlDataSourceLists.ConnectionString);
        scon.Open();
        SqlCommand cmd = new SqlCommand("insert into[Lists](ListName, UserID)  values ('" + listNameTB.Text + "' , '" + usersddl.SelectedValue + "')", scon);
        cmd.ExecuteNonQuery();
        scon.Close();
        listnumber.DataBind();
    }
}
