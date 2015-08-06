using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using TravelPlannerV2.Models;

namespace TravelPlannerV2.TravelPlanners.TravelPlanners
{
    public partial class Default : System.Web.UI.Page
    {
		protected TravelPlannerV2.Models.TravelPlannerConnection _db = new TravelPlannerV2.Models.TravelPlannerConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Model binding method to get List of TravelPlanner entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<TravelPlannerV2.Models.TravelPlanner> GetData()
        {
            return _db.TravelPlanners;
        }
    }
}

