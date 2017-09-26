using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class pgUserAccountDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //displaying user feedback label message
        Master.UserFeedBack.Text = "Please enter user information.";

        //initilize data field
        myBusinessLayer = new clsBusinessLayer(Server.MapPath("~/App_Data/"));

       if (!IsPostBack)
       {
           string userID;
           userID = Session["UserID"].ToString();           
           FindUser(userID);

       }

       BindUserGridView();
       gvXML.DataBind();
    
    }//end page load


    clsBusinessLayer myBusinessLayer;


    //getters for variables
    public TextBox UserName
    { get { return txtUserName; } }

    public TextBox City
    { get { return txtCity; } }

    public TextBox State
    { get { return txtState; } }

    public TextBox FavoriteLanguage
    { get { return txtFavoriteLanguage; } }

    public TextBox LeastFavoriteLanguage
    { get { return txtLeastFavoriteLanguage; } }

    public TextBox LastProgramDate
    { get { return txtLastProgramDate; } }




    //fill user information in from user id login page
    protected void FindUser(string userID)
    {
        dsAccounts dsFindUserName = myBusinessLayer.FindUser(userID);

        if (dsFindUserName.tblCustomers.Rows.Count > 0)
        {
            //setting textboxes
            txtUserName.Text = dsFindUserName.tblCustomers[0].UserName;
            txtCity.Text = dsFindUserName.tblCustomers[0].City;
            txtState.Text = dsFindUserName.tblCustomers[0].State;
            txtFavoriteLanguage.Text = dsFindUserName.tblCustomers[0].FavoriteLanguage;
            txtLeastFavoriteLanguage.Text = dsFindUserName.tblCustomers[0].LeastFavoriteLanguage;
            txtLastProgramDate.Text = dsFindUserName.tblCustomers[0].LastProgramDate;
            customerID.Text = dsFindUserName.tblCustomers[0].CustomerID.ToString();


            Master.UserFeedBack.Text = "Record Found";

        }
        else
        {
            //result message error
            Master.UserFeedBack.Text = "No records were found!";
        }
    }


    //find user name event
    protected void btnFindUser_Click(object sender, EventArgs e)
    {
        dsAccounts dsFindUserName = myBusinessLayer.FindUser(txtUserName.Text);

        if (dsFindUserName.tblCustomers.Rows.Count > 0)
        {
            //setting textboxes
            txtUserName.Text = dsFindUserName.tblCustomers[0].UserName;
            txtCity.Text = dsFindUserName.tblCustomers[0].City;
            txtState.Text = dsFindUserName.tblCustomers[0].State;
            txtFavoriteLanguage.Text = dsFindUserName.tblCustomers[0].FavoriteLanguage;
            txtLeastFavoriteLanguage.Text = dsFindUserName.tblCustomers[0].LeastFavoriteLanguage;
            txtLastProgramDate.Text = dsFindUserName.tblCustomers[0].LastProgramDate;
            customerID.Text = dsFindUserName.tblCustomers[0].CustomerID.ToString();



            Master.UserFeedBack.Text = "Record Found";
        }
        else
        {
            //result message error
            Master.UserFeedBack.Text = "No records were found!";
        }

    }


    //update user event
    protected void btnUpdateUser_Click(object sender, EventArgs e)
    {
        string results = myBusinessLayer.UpdateUser(txtUserName.Text, txtCity.Text, txtState.Text, txtFavoriteLanguage.Text, txtLeastFavoriteLanguage.Text, txtLastProgramDate.Text, Convert.ToInt32(customerID.Text));

        updateForm(results);

    }


    //add user event
    protected void btnAddUser_Click(object sender, EventArgs e)
    {
        string results = myBusinessLayer.InsertUser(txtUserName.Text, txtCity.Text, txtState.Text, txtFavoriteLanguage.Text, txtLeastFavoriteLanguage.Text, txtLastProgramDate.Text);

        updateForm(results);

    }


    //delete user event
    protected void btnDeleteUser_Click(object sender, EventArgs e)
    {
        string results = myBusinessLayer.DeleteUser(Convert.ToInt32(customerID.Text));

        updateForm(results);
    }


    //clear form event
    public void btnClearForm_Click(object sender, EventArgs e)
    {
        ClearInputs(Page.Controls);
    }


    //update XML event
    public void btnUpdateXML_Click(object sender, EventArgs e)
    {
        gvXML.DataSource = myBusinessLayer.WriteUserXMLFile(Cache);
        gvXML.DataBind();
    }






    //update form method
    private void updateForm(string results)
    {
        ClearInputs(Page.Controls);

        Master.UserFeedBack.Text = results;

        //bind user grid view
        BindUserGridView();
    }


    //clear form method
    private void ClearInputs(ControlCollection ctrls)
    {
        foreach (Control ctrl in ctrls)
        {
            if (ctrl is TextBox)
                ((TextBox)ctrl).Text = string.Empty;
            else if (ctrl is DropDownList)
                ((DropDownList)ctrl).ClearSelection();
            else if (ctrl is RadioButton)
                ((RadioButton)ctrl).Checked = false;
            else if (ctrl is RadioButtonList)
                ((RadioButtonList)ctrl).ClearSelection();
            else
                ClearInputs(ctrl.Controls);
        }
    }


    //bind user grid view for table users
    private dsApplicationsCompleted BindUserGridView()
    {
        dsApplicationsCompleted userListing = myBusinessLayer.SelectAllUsers();

        gvUserList.DataSource = userListing.tblApplicationsCompleted;

        //binding user list grid view
        gvUserList.DataBind();
        Cache.Insert("CustomerDataSet", userListing);

        return userListing;
    }


    //bind xml grid view
    public void BindXMLGridView()
    {
        gvXML.DataSource = myBusinessLayer.GetUserXMLFile();
        gvXML.DataBind();
    }


}//end page