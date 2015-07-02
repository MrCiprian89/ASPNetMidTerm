using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using StephenCiprianMidtermASP.Models;

namespace StephenCiprianMidtermASP.Courses
{
    public partial class Default : System.Web.UI.Page
    {
		protected StephenCiprianMidtermASP.Models.SchoolDatabaseEntities _db = new StephenCiprianMidtermASP.Models.SchoolDatabaseEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Model binding method to get List of Cours entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<StephenCiprianMidtermASP.Models.Cours> GetData()
        {
            return _db.Courses;
        }
    }
}

