<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Future Value</title>
    <style type="text/css">
        .style1
        {
            font-size: x-large;
        }
        .style2
        {
            width: 38%;
            height: 126px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 603px">
    
        <br />
        <br />
        <span class="style1">401K Future Value Calculator</span><br />
        <br />
        <table class="style2">
            <tr>
                <td>
                    Investment amount</td>
                <td>
        <asp:DropDownList ID="DropDownList" runat="server" AutoPostBack="True" 
            Height="32px" Width="126px">
        </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    Annual interest rate</td>
                <td>
        <asp:TextBox ID="AnnIntRateTextBox" runat="server" Height="23px" Width="122px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Number of years</td>
                <td>
                    <asp:TextBox ID="NumOfYearsTextBox" runat="server" Height="21px" Width="122px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Future value</td>
                <td>
                    <asp:Label ID="FutureValueLabel" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
        <asp:Button ID="CalculateButton" runat="server" Height="25px" Text="Calculate" 
            Width="100px" />
                </td>
                <td>
        <asp:Button ID="ClearButton" runat="server" Height="27px" Text="Clear" 
            Width="102px" CausesValidation="False" />
    
                </td>
            </tr>
        </table>
        <br />
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="AnnIntRateTextBox" Display="Dynamic" 
            ErrorMessage="Enter the interest rate."></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;
        <asp:RangeValidator ID="RangeValidator1" runat="server" 
            ControlToValidate="AnnIntRateTextBox" Display="Dynamic" 
            ErrorMessage="Interest rate must use decimal." MaximumValue="20" 
            MinimumValue="1" Type="Double"></asp:RangeValidator>
        <br />
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="NumOfYearsTextBox" Display="Dynamic" 
            ErrorMessage="Enter the number of years."></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;
        <asp:RangeValidator ID="RangeValidator2" runat="server" 
            ControlToValidate="NumOfYearsTextBox" 
            ErrorMessage="Years must range from 1 - 45." MaximumValue="45" MinimumValue="1" 
            Type="Integer"></asp:RangeValidator>
        <br />
    
    </div>
    </form>
</body>
</html>
