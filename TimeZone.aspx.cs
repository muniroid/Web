using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace muniroid
{
    public partial class TimeZone : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                foreach (TimeZoneInfo z in TimeZoneInfo.GetSystemTimeZones())
                {
                    ListItem item = new ListItem(z.DisplayName, z.Id);
                    ddl_time_zone.Items.Add(item);
                }
            }
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            DateTime timeUtc = DateTime.UtcNow;
            TimeZoneInfo SelectedZone = TimeZoneInfo.FindSystemTimeZoneById(ddl_time_zone.SelectedValue);
            DateTime SelectedTime = TimeZoneInfo.ConvertTimeFromUtc(timeUtc, SelectedZone);
            
            lit_time.Text = string.Format("UTC time: {0}<br />Time zone info: {1}<br />Selected time: {2}", timeUtc, SelectedZone, SelectedTime);
        }
    }
}
