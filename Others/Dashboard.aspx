<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Others_Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../App_Themes/style.css"/>
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
            background-color: #eee;
        }
    </style>
       <!-- jQuery, jQuery.ui -->
    <link href="https://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.min.css" rel="stylesheet" type="text/css" />
	<script src="https://code.jquery.com/jquery-1.12.1.min.js"></script>
    <!-- Bootstrap -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="gtco-header" class="gtco-cover" role="banner">
            <div class="overlay"></div>
            <div class="gtco-container">
                <div class="row">
                    <div class="col-md-12 col-md-offset-0 text-left">
                        <div class="row row-mt-15em">
                            <div class="col-md-7 mt-text animate-box" data-animate-effect="fadeInUp">
                                <span class="intro-text-small">Welcome to Student Portal.</span>
                                <h1>All the information required for admission at on place.</h1>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
