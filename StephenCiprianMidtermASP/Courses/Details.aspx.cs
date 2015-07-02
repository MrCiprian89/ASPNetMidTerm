﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using Microsoft.AspNet.FriendlyUrls.ModelBinding;
using StephenCiprianMidtermASP.Models;

namespace StephenCiprianMidtermASP.Courses
{
    public partial class Details : System.Web.UI.Page
    {
		protected StephenCiprianMidtermASP.Models.SchoolDatabaseEntities _db = new StephenCiprianMidtermASP.Models.SchoolDatabaseEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Select methd to selects a single Cours item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public StephenCiprianMidtermASP.Models.Cours GetItem([FriendlyUrlSegmentsAttribute(0)]int? Id)
        {
            if (Id == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.Courses.Where(m => m.Id == Id).FirstOrDefault();
            }
        }

        protected void ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Cancel", StringComparison.OrdinalIgnoreCase))
            {
                Response.Redirect("../Default");
            }
        }
    }
}

