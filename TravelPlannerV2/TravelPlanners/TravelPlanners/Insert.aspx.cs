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
    public partial class Insert : System.Web.UI.Page
    {
		protected TravelPlannerV2.Models.TravelPlannerConnection _db = new TravelPlannerV2.Models.TravelPlannerConnection();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // This is the Insert method to insert the entered TravelPlanner item
        // USAGE: <asp:FormView InsertMethod="InsertItem">
        public void InsertItem()
        {
            using (_db)
            {
                var item = new TravelPlannerV2.Models.TravelPlanner();

                TryUpdateModel(item);

                if (ModelState.IsValid)
                {
                    // Save changes
                    _db.TravelPlanners.Add(item);
                    _db.SaveChanges();

                    Response.Redirect("Default");
                }
            }
        }

        protected void ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Cancel", StringComparison.OrdinalIgnoreCase))
            {
                Response.Redirect("Default");
            }
        }
    }
}
