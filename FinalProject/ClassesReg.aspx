<%@ Page Language="C#" AutoEventWireup="false" CodeFile="ClassesReg.aspx.cs" Inherits="ClassesReg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Db Display</title>

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
    <div style="margin-top: 58px; height: 559px;">
            <br />
            <br />
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

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FacultAdminConnectionString %>" SelectCommand="SELECT * FROM [Register]"></asp:SqlDataSource>

        <center>
                 <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="RegisterId" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="443px">
                     <AlternatingRowStyle BackColor="#CCCCCC" />
                     <Columns>
                         <asp:CommandField ShowSelectButton="True" />
                         <asp:BoundField DataField="RegisterId" HeaderText="RegisterId" InsertVisible="False" ReadOnly="True" SortExpression="RegisterId" />
                         <asp:BoundField DataField="CourseCrn" HeaderText="CourseCrn" SortExpression="CourseCrn" />
                         <asp:BoundField DataField="CourseName" HeaderText="CourseName" SortExpression="CourseName" />
                     </Columns>
                     <FooterStyle BackColor="#CCCCCC" />
                     <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                     <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                     <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                     <SortedAscendingCellStyle BackColor="#F1F1F1" />
                     <SortedAscendingHeaderStyle BackColor="#808080" />
                     <SortedDescendingCellStyle BackColor="#CAC9C9" />
                     <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
        </center>
       
    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Script to Activate the Carousel -->
         
    </div>
    </form>
</body>
</html>
