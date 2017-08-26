<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Department.aspx.cs" Inherits="Pages_Department" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="../App_Themes/Default.css" rel="stylesheet" />
    <%--<link href="../../../App_Themes/Default.css" rel="stylesheet" />
    <script src="../../../scripts/common.js"></script>--%>
</head>
<body style="height: 100%">
    <form id="form1" runat="server">

        <telerik:RadScriptManager ID="rsm" runat="server">
        </telerik:RadScriptManager>
        <telerik:RadAjaxManager runat="server" ID="ram">
            <AjaxSettings>
                <telerik:AjaxSetting AjaxControlID="rgList">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl LoadingPanelID="ajaxPanel" ControlID="rgList" UpdatePanelHeight="100%" />
                    </UpdatedControls>
                </telerik:AjaxSetting>
                <telerik:AjaxSetting AjaxControlID="rWin">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl LoadingPanelID="ajaxPanel" ControlID="rWin" />
                    </UpdatedControls>
                </telerik:AjaxSetting>
            </AjaxSettings>
        </telerik:RadAjaxManager>

        <telerik:RadAjaxLoadingPanel ID="ajaxPanel" Skin="" Transparency="30" runat="server">
            <table class="tblAjax" style="align-items: center">
                <tr>
                    <td style="align-items: center; vertical-align: middle">
                        <asp:Image ID="img" runat="server" ImageUrl="~/Images/LoadingCounterClockwise.gif"
                            AlternateText="Loading" />
                    </td>
                </tr>
            </table>
        </telerik:RadAjaxLoadingPanel>

        <div id="parentDiv">
            <telerik:RadSplitter runat="server" Height="100%" Width="100%" Orientation="Horizontal">
                <telerik:RadPane runat="server" Height="100%" Width="100%" Scrolling="None">
                    <telerik:RadGrid ID="rgList" PageSize="100" AllowPaging="true" runat="server" Width="99.8%" Height="100%" CellSpacing="5"
                        AutoGenerateColumns="false" AllowFilteringByColumn="True" AllowSorting="true" CellPadding="5" 
                         OnDataBound="rgList_DataBound" OnInit="rgList_Init">
                        <MasterTableView CommandItemDisplay="Top" TableLayout="Auto" CommandItemSettings-ShowAddNewRecordButton="false"
                            CommandItemSettings-ShowRefreshButton="false"
                            ItemStyle-VerticalAlign="Top" AlternatingItemStyle-VerticalAlign="Top"
                            AlternatingItemStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" FilterItemStyle-HorizontalAlign="Center"
                            HeaderStyle-HorizontalAlign="Center">
                            <CommandItemTemplate>
                                <table width="100%">
                                    <tr>
                                        <td align="left">
                                            <asp:Label ID="lblTitle" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </CommandItemTemplate>
                            <Columns>
                                <telerik:GridBoundColumn DataField="DepartmentCode" HeaderText="Department Code" HeaderStyle-Width="90px" FilterControlWidth="50px"
                                    AutoPostBackOnFilter="true" />
                                <telerik:GridBoundColumn DataField="DepartmentName" HeaderText="Department Name" FilterControlWidth="100px" AutoPostBackOnFilter="true" />
                                <telerik:GridBoundColumn DataField="CMarksSF" HeaderText="Self Finance" HeaderStyle-Width="90px" ItemStyle-HorizontalAlign="Center"
                                    FilterControlWidth="70px" AutoPostBackOnFilter="true" />
                                <telerik:GridBoundColumn DataField="CmarksMerit" HeaderText="Regular" HeaderStyle-Width="90px" ItemStyle-HorizontalAlign="Center"
                                    FilterControlWidth="70px" AutoPostBackOnFilter="true" />
                            </Columns>
                        </MasterTableView>
                        <ClientSettings>
                            <Selecting AllowRowSelect="True" />
                            <Resizing AllowColumnResize="true" AllowResizeToFit="true" EnableRealTimeResize="true" ResizeGridOnColumnResize="true" />
                            <Scrolling AllowScroll="true" UseStaticHeaders="true" />
                        </ClientSettings>
                        <GroupingSettings CaseSensitive="false" />
                    </telerik:RadGrid>
                    <telerik:RadWindow ID="rWin" runat="server" Modal="true" Behaviors="Move, Close" ShowContentDuringLoad="false"
                        VisibleStatusbar="false" VisibleOnPageLoad="false" RestrictionZoneID="parentDiv" KeepInScreenBounds="true" OnClientClose="refreshGrid">
                    </telerik:RadWindow>
                </telerik:RadPane>
            </telerik:RadSplitter>
        </div>

        <script type="text/javascript">
            function refreshGrid() {
                var masterTable = $find("<%= rgList.ClientID %>").get_masterTableView();
                masterTable.rebind();
            }

            function ShowRadWindow(PRG_CODE) {
                var radWin = window.$find('rWin');
                radWin.SetUrl('Entry.aspx?PRG_CODE=' + PRG_CODE);
                radWin.SetTitle('Program Information ');
                radWin.Show();

            }

        </script>

    </form>

</body>
</html>


