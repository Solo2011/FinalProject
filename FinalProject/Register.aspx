<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Atlanta University Register Page</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>

    <!-- Custom CSS -->
    <link href="css/modern-business.css" rel="stylesheet"/>

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>

    <style type="text/css">
        .auto-style1 {
            width: 130px
        }
        .auto-style4 {
            text-align: left;
            width: 285px;
        }
        .auto-style5 {
            width: 285px
        }
        .auto-style6 {
            width: 130px;
            text-align: right;
        }
        .auto-style7 {
            width: 130px;
            text-align: right;
            height: 22px;
        }
        .auto-style8 {
            height: 22px;
        }
        .auto-style9 {
            text-align: left;
            width: 285px;
            height: 22px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-top: 58px">
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
        <br />
        <br />
        <table class="nav-justified">
            <tr>
                <td class="auto-style7"><strong>UserName:</strong></td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBoxUN" runat="server" Width="180px" BackColor="White"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUN" ErrorMessage="UserName Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>Email</strong>:</td>
                <td>
                    <asp:TextBox ID="TextBoxEmail" runat="server" Width="180px" BackColor="White"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="You must enter the vaild email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBoxEmail"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>Password:</strong></td>
                <td>
                    <asp:TextBox ID="TextBoxPass" runat="server" Width="180px" BackColor="White"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="Password Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                    <asp:Button ID="Reset" runat="server" OnClick="Reset_Click" Text="Clear" />
                </td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSourceRegister" runat="server" ConnectionString="<%$ ConnectionStrings:FacultAdminConnectionString %>" SelectCommand="SELECT * FROM [Log_Users]"></asp:SqlDataSource>
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Click Here</asp:LinkButton>
        <br />
        <asp:Label ID="lblSuccess" runat="server"></asp:Label>
        <br />
        <br />

         <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Script to Activate the Carousel -->
    </div>

    </form>
</body>
</html>
