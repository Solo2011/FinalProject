<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegisterForm.aspx.cs" Inherits="RegisterForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>RegisterForm</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>

    <!-- Custom CSS -->
    <link href="css/modern-business.css" rel="stylesheet"/>

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>

    <style type="text/css">
        .auto-style10 {
            width: 100%;
        }
        .auto-style11 {
            height: 33px;
        }
        .auto-style12 {
            width: 244px;
        }
        .auto-style13 {
            height: 33px;
            width: 244px;
        }
        .auto-style14 {
            width: 244px;
            height: 52px;
        }
        .auto-style15 {
            height: 52px;
            text-align: left;
        }
        .auto-style16 {
            height: 52px;
            width: 208px;
            text-align: right;
        }
        .auto-style17 {
            width: 208px;
        }
        .auto-style18 {
            height: 33px;
            width: 208px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-top: 58px">
            <div class="text-center">
            <br />
            <br />
                <h3>
                    <strong>Enter the Course Name and the Course CRN from the Search Page</strong>
                </h3>
                <br />
    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
       
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="Default.aspx">
                    <asp:Image ID="Image1" runat="server" Height="48px" ImageUrl="Images/images1.jpg" Width="131px" />
                    Atlanta University
                </a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="Default.aspx">Home</a>
                    </li>
                    <li>
                        <a href="Register.aspx">Register</a>
                    </li>
                    <li>
                        <a href="Search.aspx">Search</a>
                    </li>
                  
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Select a Site <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="Register.aspx">Register</a>
                            </li>
                            <li>
                                <a href="Search.aspx">Search</a>
                            </li>
                            <li>
                                <a href="404.html">404</a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <p>
                    &nbsp;</p>
                <p>
                    &nbsp;</p>
                <p>
                    &nbsp;</p>
                <p>
                    &nbsp;</p>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    
    
            </div>
    
    
        <table class="auto-style10">
            <tr>
                <td class="auto-style14">
                    <strong>&nbsp;Enter Course Name:</strong><br />
                </td>
                <td class="auto-style16">
                    <asp:TextBox ID="TextBoxCN" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style15">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BackColor="White" ControlToValidate="TextBoxCN" ErrorMessage="Please Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style14"><strong>Enter Course #:</strong></td>
                <td class="auto-style16">
                    <asp:TextBox ID="TextBoxCID" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style15">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxCID" ErrorMessage="Enter the Course #" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                    <asp:Button ID="Button2" runat="server" Text="Clear" OnClick="Button2_Click" />
                </td>
                <td class="auto-style17">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13"></td>
                <td class="auto-style18"></td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
        </table>
             <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Script to Activate the Carousel -->
    </div>
    </form>
</body>
</html>
