<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     
    </div>
        <asp:Label ID="lb_EmployeeWageCalculator" runat="server" Text="Employee Wage Calculator"></asp:Label>
        <br />
        <br />
        Hourly Wage:<br />
        <asp:TextBox ID="tb_hourlywage" runat="server"></asp:TextBox>
        <br />
        <br />
        Working Hours:<br />
        <asp:TextBox ID="tb_workinghours" runat="server"></asp:TextBox>
        <br />
        <br />
        Pre-tax Deduction:<br />
        <asp:TextBox ID="tb_pretaxdeduction" runat="server"></asp:TextBox>
        <br />
        <br />
        After-tax Deduction:<br />
        <asp:TextBox ID="tb_aftertaxdeduction" runat="server"></asp:TextBox>
        <br />
        <br />

        <asp:Button ID="PerformCalcButton" runat="server" Text="Calculate" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Clear" Width="86px" />
        <br />
        <br />
&nbsp;<asp:Label ID="lb_results" runat="server"></asp:Label>
        <br />
        <br />
    </form>
</body>
</html>
