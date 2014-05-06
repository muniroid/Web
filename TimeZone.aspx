<%@ Page Language="C#" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
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
