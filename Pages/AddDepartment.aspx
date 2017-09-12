<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddDepartment.aspx.cs" Inherits="Pages_AddDepartment" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <%-- <style>
        .autoStyle1 {
            width: 55px;
            align-content: center;
        }
    </style>--%>
    <link href="../../../../App_Themes/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>

<body>
    <script type="text/javascript">
        function GetRadWindow() {
            var oWindow = null;
            if (window.radWindow) oWindow = window.radWindow;
            else if (window.frameElement.radWindow) oWindow = window.frameElement.radWindow;
            return oWindow;
        }

        function Close() {
            GetRadWindow().close();
        }
    </script>
    <form id="form1" runat="server">
        <telerik:RadScriptManager ID="rsm" runat="server"></telerik:RadScriptManager>
        <telerik:RadSkinManager ID="rskinm" runat="server"></telerik:RadSkinManager>
        <table cellpadding="3" cellspacing="3" style="height: 100%; width: 100%; margin: auto;">
            <tr>
                <td style="height: 20px">Department Code:
        
                </td>
                <td>

                    <telerik:RadTextBox runat="server" Width="190px" ID="DptCode" Enabled="true" ForeColor="#717171"></telerik:RadTextBox>

                </td>
            </tr>
            <tr>
                <td style="height: 20px">Department Name:
        
                </td>
                <td>

                    <telerik:RadTextBox runat="server" Width="190px" ID="DptName" Enabled="true" ForeColor="#717171"></telerik:RadTextBox>

                </td>
            </tr>
            <tr>
                <td style="height: 20px">Self Marks:
        
                </td>
                <td>

                    <telerik:RadTextBox runat="server" Width="190px" ID="SelfMarks" Enabled="true" ForeColor="#717171"></telerik:RadTextBox>

                </td>
            </tr>

            <tr>
                <td style="height: 20px">Regular Marks</td>
                <td>

                    <telerik:RadTextBox runat="server" Width="190px" ID="RegMarks" Enabled="true" ForeColor="#717171"></telerik:RadTextBox>

                </td>
            </tr>
            <tr>
                <td colspan="2" style="vertical-align: middle; text-align: right; padding-right: 5px">
                    <telerik:RadButton runat="server" ID="btnAdd" Text="Save" OnClick="btnAdd_Click"></telerik:RadButton>
                    <telerik:RadButton runat="server" ID="btnClose" Text="Close" CssClass="autoStyle1" OnClick="btnClose_Click"></telerik:RadButton>
                </td>

            </tr>
            <tr>
                <td colspan="2" style="text-align: center; padding-top: 50px; height: 20px">
                    <asp:Label ID="Label1" runat="server" ForeColor="#5CA038" Font-Names="Segoe UI" Font-Size="12px"></asp:Label>
                </td>
            </tr>
        </table>
    </form>

</body>
</html>
