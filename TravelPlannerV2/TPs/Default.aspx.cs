using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using TravelPlannerV2.Models;

namespace TravelPlannerV2.TPs
{
    public partial class Default : System.Web.UI.Page
    {
		protected TravelPlannerV2.Models.TravelPlannerChang_dbEntities2 _db = new TravelPlannerV2.Models.TravelPlannerChang_dbEntities2();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Model binding method to get List of TP entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<TravelPlannerV2.Models.TP> GetData()
        {
            return _db.TPs;
        }
    }
}

