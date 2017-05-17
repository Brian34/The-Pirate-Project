using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

namespace WebApplication1
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //create a dbcontext that specified the connection string
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            //create store and manager
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);
            //deploy user
            var user = new IdentityUser() { UserName = txtRegEmail.Text, Email = txtRegEmail.Text };
            IdentityResult result = manager.Create(user, txtRegPassword.Text);
            if (result.Succeeded)
            {
                //Login user to guide user to login
                RegisterErr.Text = "Success!";
            }
            else
            {
                RegisterErr.Text = "Error Registering:" + result.Errors.FirstOrDefault();

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var userManager = new UserManager<IdentityUser>(userStore);
            var user = userManager.Find(txtLoginEmail.Text, txtLoginPassword.Text);
            if (user != null)
            {
                LogUserIn(userManager, user); //logs in user 

                LoginErr.Text = "Login Success.";
            }
            else
            {
                LoginErr.Text = "Invalid credentials.";
            }
        }
            private void LogUserIn(UserManager<IdentityUser> usermanager, IdentityUser user)
            {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = usermanager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);
            }
        }   

    }
  
    