using Registration.BAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Registration
{

    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            try
            {
                bool InsertResult = false;
                string message=string.Empty;
                BALayer objinsert = new BALayer();
                InsertResult = objinsert.InsertUserRegistrationDetails(txtId.Text,txtEname.Text, txtEmail.Text);
                if (InsertResult)
                    message = "Record Inserted Successfully";
                string script = "window.onload = function(){ alert('";
                script += message;
                script += "');";
                script += "window.location = '";
                script += Request.Url.AbsoluteUri;
                script += "'; }";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);

            }
            catch (Exception ex)
            {
                throw (ex);
            }

        }
    }
    }
