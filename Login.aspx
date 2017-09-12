<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Portal</title>

   
     <!-- javascript in order to prevent user from going back -->
    <script type = "text/javascript" >
   function preventBack(){window.history.forward();}
    setTimeout("preventBack()", 0);
    window.onunload=function(){null};
    </script>
            <script type="text/javascript">
                function Alert(alertMsg) {
                    debugger;
           window.alert(alertMsg);
        }
    </script>

     <link href="App_Themes/StyleSheet.css" rel="stylesheet" type="text/css" />    
    <style type="text/css">

        .auto-style3 {
            height: 120px;

        }
        html .RadComboBox .rcbInput {
    height: 35px ;
    color:#717171;
}
        .RadComboBox .rcbInputCell .rcbEmptyMessage, .RadComboBox.rcbInputCell.rcbItem{
            font-style: normal;

        }
        .RadComboBox table td.rcbInputCell, .RadComboBox .rcbInputCell .rcbInput
 {
    font-family:"Segoe UI Webfont",-apple-system,"Helvetica Neue","Lucida Grande","Roboto","Ebrima","Nirmala UI","Gadugi","Segoe Xbox Symbol","Segoe UI Symbol","Meiryo UI","Khmer UI","Tunga","Lao UI","Raavi","Iskoola Pota","Latha","Leelawadee","Microsoft YaHei UI","Microsoft JhengHei UI","Malgun Gothic","Estrangelo Edessa","Microsoft Himalaya","Microsoft New Tai Lue","Microsoft PhagsPa","Microsoft Tai Le","Microsoft Yi Baiti","Mongolian Baiti","MV Boli","Myanmar Text","Cambria Math";
 font-size:14px !important;
 margin-top:-6px !important;
 }
                .rcbHeader ul,
        .rcbFooter ul,
        .rcbItem ul,
        .rcbHovered ul,
        .rcbDisabled ul {
            margin: 0;
            padding: 0;
            width: 100%;
            display: inline-block;
            list-style-type: none;
        }

        .prgComboBox .rcbHeader {
            padding: 5px 27px 4px 7px;
        }

        .rcbScroll {
            overflow: scroll !important;
            overflow-x: hidden !important;
        }

        .col1 {
            margin: 0;
            padding: 0 0 0 0;
            width: 25%;
            float: left;
        }

        .col2 {
            margin: 0;
            padding: 0 0 0 0;
            width: 70%;
            float: right;
        }
        
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        <table align="center" class="auto-style1" cellspacing="5" cellpadding="5">
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/ISRLOGO.png"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblSignIn" runat="server" Text="Sign in" Font-Size="24pt"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox runat="server" ID="USR_NAME" CssClass="textbox" Width="340px" Placeholder="Enter username" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TxtBoxPass" runat="server" CssClass="textbox" Width="340px" TextMode="Password" Placeholder="Enter password" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td ></td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnSignIn" runat="server" CssClass="button" Text="Sign in" Width="350px" OnClick="btnSignIn_Click" />
                </td>
            </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="SignInMsgLabel" runat="server" ForeColor="#CC0000" ></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
            </tr>
        </table>
    
    </div>
    </form>

</body>
</html>

