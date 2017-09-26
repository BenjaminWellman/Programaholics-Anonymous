using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pgUserAccountConfirmation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //displaying user feedback label message
        Master.UserFeedBack.Text = "Please confirm your user information.";

        //exception handling
        try
        {
            //checking if previous page is cross page post back
            if (PreviousPage.IsCrossPagePostBack)
            {
                //setting confirmation label from details page
                lblUserName.Text = PreviousPage.UserName.Text;

                //setting confirmation label from details page
                lblCity.Text = PreviousPage.City.Text;

                //setting confirmation label from details page
                lblState.Text = PreviousPage.State.Text;

                //setting confirmation label from details page
                lblFavoriteLanguage.Text = PreviousPage.FavoriteLanguage.Text;

                //setting confirmation label from details page
                lblLeastFavoriteLanguage.Text = PreviousPage.LeastFavoriteLanguage.Text;

                //setting confirmation label from details page
                lblLastProgramDate.Text = PreviousPage.LastProgramDate.Text;
            }
        }

        catch (Exception error)
        {
            //displaying user feedback label message
            Master.UserFeedBack.Text = " Sorry, there was an error submitting your user information.";
        }

    }//end page load


    protected void btnConfirm_Click(object sender, EventArgs e)
    {
        //displaying user feedback label message
        Master.UserFeedBack.Text = "Your user information has been submitted.";
    }
}//end page Confirm