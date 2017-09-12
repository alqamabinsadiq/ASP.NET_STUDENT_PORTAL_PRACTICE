<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="Pages_ContactUs" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../App_Themes/Default.css" rel="stylesheet" />
    <link rel="stylesheet" href="../App_Themes/contactForm.css" type="text/css" media="all" />
    <style>
        .RadInput_Metro .riTextBox, html body .RadInputMgr_Metro {
            padding: 10px;
            border: 1px solid #E5E5E5;
            width: 200px;
            color: #999999;
            box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 8px;
            -moz-box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 8px;
            -webkit-box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 8px;
        }
    </style>
</head>
<body style="background-color: #F6F3E9">
    <form id="form1" runat="server" style="background-color: #F6F3E9">
        <telerik:RadScriptManager ID="RadScriptManager1" runat="server"></telerik:RadScriptManager>
        <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
        </telerik:RadAjaxManager>
        <div id="parentDiv" style="background-color: #F6F3E9">
            <h2>Contact Form</h2>
            <p class="name">
                <telerik:RadTextBox CssClass="cntName" ID="name" runat="server" Height="30px" Width="221px" DisplayText="Jon Snow"></telerik:RadTextBox>
                <label for="name">Name</label>
            </p>

            <p class="email">
                <input type="email" name="email" id="email" placeholder="jon@nightswatch.com" required="required" />
                <label for="email">Email</label>
            </p>

            <p class="web">
                <input type="text" name="web" id="web" placeholder="www.example.com" />
                <label for="web">Website</label>
            </p>

            <p class="text">
                <textarea name="text" id="msg" required="required" placeholder="Write something to us" /></textarea>
            </p>

            <p class="submit">
                <telerik:RadButton Height="40px" ID="btnContact" runat="server" Text="Submit" OnClick="btnContact_Click"></telerik:RadButton>
            </p>
        </div>
    </form>
</body>
</html>
