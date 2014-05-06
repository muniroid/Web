<%@ Page Language="C#" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
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
            
            lit_time.Text = string.Format("UTC time: {0}<br />Time zone info: {1}<br />Selected time: {2}<br />Server: time:{3}", timeUtc, SelectedZone, SelectedTime,DateTime.Now);
        }

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Time zone</title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:DropDownList ID="ddl_time_zone" runat="server">
    </asp:DropDownList>
    <asp:Button ID="btn_submit" runat="server" Text="Show time" OnClick="btn_submit_Click" />
    <br />
    <asp:Literal ID="lit_time" runat="server"></asp:Literal>
    </form>
</body>
</html>
