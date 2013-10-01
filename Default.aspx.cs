using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button_login_Click(object sender, EventArgs e)
    {

        if (TextBox_navn.Text == "Admin" && TextBox_pass.Text == "1234")
        {
            // opret din session som er "beviset" på at du er logget ind
            Session["bruger_id"] = true;
            // Send brugeren videre til administrationssiden
            Response.Redirect("Default.aspx");
        }
        else // hvis brugeren ikke findes i databasen
        {
            // meddelelse til brugeren om at han ikke er logget ind
            Label_besked.Text = "<div class='span8'><div class='alert alert-error'>Kombinationen af dit brugernavn og password findes ikke i databasen</div></div>";
        }

    }
}