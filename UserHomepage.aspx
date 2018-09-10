<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserHomepage.aspx.cs" Inherits="UserHomepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Welcome Again</title>
    <script
        src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous">
    </script>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/HardwareStylers.css" rel="stylesheet" />
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
     <script>
         $(document).ready(function myfunction() {
             $("#btnCart").click(function myfunction() {
                 window.location.href = "~/Cart.aspx";
             });
         });
     </script>
          
</head>
<body>
    <form id="form1" runat="server">
  
    <div>
    <div class="navbar navbar-default navbar-fixed-top fixnav" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle Navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                    </button>
                <a class="navbar-brand" href="Default.aspx"><span><img alt="logo" src="Images/images (48).jpg" height="40"/></span>OneTouch Hardware Store</a>
                </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li ><a href="Default.aspx">Home</a></li>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Contacts</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Partner Companies<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li class="dropdown-header">Our Partner Companies</li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">John Deer</a></li>
                            <li><a href="#">Space and Style</a></li>
                            <li><a href="#">Amarco</a></li>
                            <li><a href="#">Crown Paints</a></li>
                            <li><a href="#">Bamburi Cement</a></li>
                            </ul>
                        </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                             <li><a href="Products.aspx">All Products</a></li>
                            <li><a href="ProductPreview.aspx">View Products</a></li>
                             <li role="separator" class="divider"></li>
                            <li class="dropdown-header">Building Materials</li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">Cement</a></li>
                           
                            <li role="separator" class="divider"></li>
                            <li class="dropdown-header">HouseHold Items</li>
                            <li role="separator" class="divider"></li>
                            <li><a href="Products.aspx">Tiles</a></li>
                           
                            <li role="separator" class="divider"></li>
                            <li class="dropdown-header">Farm Inputs</li>
                            <li role="separator" class="divider"></li>
                            <li><a href="Products.aspx">Jembes</a></li>
                           
                            <li role="separator" class="divider"></li>
                            <li class="dropdown-header">Hunting and Fishing</li>
                            <li role="separator" class="divider"></li>
                            <li><a href="Products.aspx">Hooks</a></li>
                           
                        </ul>
                    </li>
                     <li>
                    <button id="btnCart" class="btn btn-primary navbar-btn" type="button">
                           Cart <span class="badge" id="pCount" runat="server"></span>
                        </button>
                        </li>
                    <li><a  href="Cart.aspx">My Cart</a></li>
                    <li>
                        <asp:Button ID="btnSignIn" runat="server" Class="btn btn-default navbar-btn" Text="Sign In" OnClick="btnSignIn_Click" />
                        <asp:Button ID="BtnSignOut" runat="server" Class="btn btn-default navbar-btn" Text="Sign Out" OnClick="BtnSignOut_Click" />

                    </li>
                   
                </ul>
            </div>
            </div>
        </div>
    </div>
    <br /><br /><br /><br />
         <asp:Label ID="lblSuccess" runat="server" CssClass="text-success"></asp:Label>
    </form>
     <!------footer----->
        <hr />
        <footer>
            <div class="container">
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p class="center">&copy; 2017 One Touch Hardware Store.com &middot;<a href="Default.aspx">Home</a>&middot;<a href="#">About Us</a>&middot;<a href="#">Contacts</a>&middot;<a href="#">Products</a>&middot;<a href="#">Partner Companies</a></p>
            </div>
        </footer>
        <!------footer----->

   
     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
