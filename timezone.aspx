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
        
        lit_time.Text = string.Format("<table><tr><td>UTC time:</td><td>{0:dd-MMM-yyyy hh:mm:ss tt}</td></tr><tr><td>Time zone info:</td><td>{1}</td></tr><tr><td>Selected time:</td><td>{2:dd-MMM-yyyy hh:mm:ss tt}</td></tr><tr><td>Server time:</td><td>{3:dd-MMM-yyyy hh:mm:ss tt}</td></tr><tr><td>Local time:</td><td>{4:dd-MMM-yyyy hh:mm:ss tt}</td></tr></table>", timeUtc, SelectedZone.Id, SelectedTime,DateTime.Now,DateTime.Now.ToLocalTime());
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Time zone</title>
</head>
<body>
    <a href="/"> .. Back</a>
    <form id="form1" runat="server">
        <asp:DropDownList ID="ddl_time_zone" runat="server" />
        <asp:Button ID="btn_submit" runat="server" Text="Show time" OnClick="btn_submit_Click" />
        <asp:Literal ID="lit_time" runat="server" />
    </form>
</body>
</html>
