﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using Microsoft.AspNet.FriendlyUrls.ModelBinding;
using TravelPlannerV2.Models;

namespace TravelPlannerV2.TPs
{
    public partial class Details : System.Web.UI.Page
    {
		protected TravelPlannerV2.Models.TravelPlannerChang_dbEntities2 _db = new TravelPlannerV2.Models.TravelPlannerChang_dbEntities2();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Select methd to selects a single TP item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public TravelPlannerV2.Models.TP GetItem([FriendlyUrlSegmentsAttribute(0)]int? Id)
        {
            if (Id == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.TPs.Where(m => m.Id == Id).FirstOrDefault();
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

