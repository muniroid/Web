<%@ Page Title="Time Zone" Language="C#"%>
<script runat="server">
    public void Page_Load(object sender, EventArgs e)
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

        public void btn_submit_Click(object sender, EventArgs e)
        {
            DateTime timeUtc = DateTime.UtcNow;
            TimeZoneInfo SelectedZone = TimeZoneInfo.FindSystemTimeZoneById(ddl_time_zone.SelectedValue);
            DateTime SelectedTime = TimeZoneInfo.ConvertTimeFromUtc(timeUtc, SelectedZone);
            
            lit_time.Text = string.Format("UTC time: {0}<br />Time zone info: {1}<br />Selected time: {2}", timeUtc, SelectedZone, SelectedTime);
        }
<script runat="server">

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:DropDownList ID="ddl_time_zone" runat="server">
    </asp:DropDownList>
    <asp:Button ID="btn_submit" runat="server" Text="Show time" OnClick="btn_submit_Click" />
    <br />
    <asp:Literal ID="lit_time" runat="server"></asp:Literal>
    
    <h1>hello</h1>
    </form>
</body>
</html>
