<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="App_Themes/style.css"/>
    <style type="text/css">
        .ApplyOverflow {
            overflow: visible !important;
            position: absolute;
            z-index: 1;
        }

        html, body, form, #parentDiv {
            margin: 0px;
            padding: 0px;
            height: 100%;
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
            <Scripts>
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js" />
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js" />
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js" />
            </Scripts>
        </telerik:RadScriptManager>
        <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
        </telerik:RadAjaxManager>
        <%--Header Start--%>
        <div id="parentDiv">
            <telerik:RadSplitter ID="mainSpltr" runat="server" Width="100%" Height="100%" Orientation="Horizontal" BorderSize="0">
                <telerik:RadPane runat="server" ID="topPane" Height="25px" Scrolling="None">
                    <div id="mnuDiv">
                        <telerik:RadMenu ViewStateMode="Disabled" Style="position: absolute; z-index: 1" Width="100%" ID="rMnu" runat="server">
                            <Items>
                                <telerik:RadMenuItem Text="Home" Value="home" NavigateUrl="~/Others/Dashboard.aspx" Target="res" />
                                <telerik:RadMenuItem Text="Departments" Value="departInfo" NavigateUrl="~/Pages/Department.aspx" Target="res">
                                    <Items>
                                        <telerik:RadMenuItem Text="Civil Engineering" Value="dept_civil" NavigateUrl="http://www.neduet.edu.pk/Civil/civil.html" Target="_blank" />
                                        <telerik:RadMenuItem Text="Electrical Engineering" Value="dept_civil" NavigateUrl="~/Others/Dashboard.aspx" Target="res" />
                                        <telerik:RadMenuItem Text="Mechanical Engineering" Value="dept_civil" NavigateUrl="~/Others/Dashboard.aspx" Target="res" />
                                        <telerik:RadMenuItem Text="Computer Science and Software Engineering" Value="dept_civil" NavigateUrl="~/Others/Dashboard.aspx" Target="res" />
                                        <telerik:RadMenuItem Text="Electronics Engineering" Value="dept_civil" NavigateUrl="~/Others/Dashboard.aspx" Target="res" />
                                        <telerik:RadMenuItem Text="Petrolium Engineering" Value="dept_civil" NavigateUrl="~/Others/Dashboard.aspx" Target="res" />
                                        <telerik:RadMenuItem Text="Metallurgy Engineering" Value="dept_civil" NavigateUrl="~/Others/Dashboard.aspx" Target="res" />
                                        <telerik:RadMenuItem Text="Urban Engineering" Value="dept_civil" NavigateUrl="~/Others/Dashboard.aspx" Target="res" />
                                        <telerik:RadMenuItem Text="Bio-Medical Engineering" Value="dept_civil" NavigateUrl="~/Others/Dashboard.aspx" Target="res" />
                                    </Items>
                                    </telerik:RadMenuItem>
                                <telerik:RadMenuItem Text="All Department's Information" Value="" NavigateUrl="~/Pages/Department.aspx" Target="res" />
                                <telerik:RadMenuItem Text="Find Your Department" Value="" NavigateUrl="~/Pages/Department.aspx" Target="res" />
                                <telerik:RadMenuItem Text="About Us" Value="about-us" NavigateUrl="~/Others/Dashboard.aspx" Target="res" />
                                <telerik:RadMenuItem Text="Contact" Value="contact" NavigateUrl="~/Others/Dashboard.aspx" Target="res" />
                            </Items>
                        </telerik:RadMenu>
                    </div>
                </telerik:RadPane>
                <telerik:RadPane runat="server" ContentUrl="Others/Dashboard.aspx" ID="res" CssClass="ApplyOverflow" Scrolling="None">
                </telerik:RadPane>
            </telerik:RadSplitter>
        </div>
    </form>
    <div>
    </div>
</body>
</html>
