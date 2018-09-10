<%@ Page Language="C#" AutoEventWireup="true" CodeFile="About Us.aspx.cs" Inherits="About_Us" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>About Us</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/HardwareStylers.css" rel="stylesheet" />
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head><body>
    <form id="form1" runat="server">
    <div>
    <div class="navbar navbar-default navbar-fixed-top fixnav" role="navigation">
        <div class="container">
            <div class="navbar-header ">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle Navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                    </button>
                <a class="navbar-brand" href="Default.aspx"><span><img alt="logo" src="Images/images (48).jpg" height="40"/></span>Apex Hardware Store</a>
                </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="Default.aspx">Home</a></li>
                    <li><a href="About Us.aspx">About Us</a></li>
                    <li><a href="Contacts.aspx">Contacts</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Partner Companies<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li class="dropdown-header sidenav">Our Partner Companies</li>
                            <li role="separator" class="divider"></li>
                            <li><a href="Partner Companies.aspx">John Deer</a></li>
                            <li><a href="Partner Companies.aspx">Space and Style</a></li>
                            <li><a href="Partner Companies.aspx">Amarco</a></li>
                            <li><a href="Partner Companies.aspx">Crown Paints</a></li>
                            <li><a href="Partner Companies.aspx">Bamburi Cement</a></li>
                            </ul>
                        </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li class="dropdown-header">Building Materials</li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">Cement</a></li>
                            <li><a href="#">Sand</a></li>
                            <li><a href="#">Wire Mesh</a></li>
                            <li><a href="#">Steel</a></li>
                            <li><a href="#">Timber</a></li>
                            <li role="separator" class="divider"></li>
                            <li class="dropdown-header">HouseHold Items</li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">Tiles</a></li>
                            <li><a href="#">Paint</a></li>
                            <li><a href="#">Door Knobs</a></li>
                            <li><a href="#">Tap Headers</a></li>
                            <li><a href="#">Locker</a></li>
                            <li role="separator" class="divider"></li>
                            <li class="dropdown-header">Farm Inputs</li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">Jembes</a></li>
                            <li><a href="#">Rake</a></li>
                            <li><a href="#">Shovels</a></li>
                            <li><a href="#">Panga</a></li>
                            <li><a href="#">Tractor</a></li>
                            <li role="separator" class="divider"></li>
                            <li class="dropdown-header">Hunting and Fishing</li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">Hooks</a></li>
                            <li><a href="#">Baits</a></li>
                            <li><a href="#">Wrope</a></li>
                            <li><a href="#">Net</a></li>
                            <li><a href="#">Floaters</a></li>
                        </ul>
                    </li>
                    <li><a href="SignUp.aspx">Sign Up</a></li>
                    <li><a href="SignIn.aspx">Sign In</a></li>
                </ul>
            </div>
            </div>
    </div>
        </div>

        <!---------Our Team Members----------->
        <div class="team">
            <div class="container">
                <div class="row">
                    <hr />
                    <h3>Our Team Members</h3>
                    <hr />
                    <p>Below are our team members who ensure that our hardware store runs efficiently.</p>
                    <div class="col-lg-4">
                        <img src="Images/loginimage.png" class="img-circle" alt="ernestonsase" />
                        <h4>ERNEST ONSASE</h4>
                        <b>CEO AND FOUNDER</b>
                        <p>Ernest Onsase is a professional when delaing it comes to delaing with quality hadware materials and also installation</p>
                        <a href="#"><i class="fa fa-whatsapp" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                         <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                         <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                    </div>
                     <div class="col-lg-4">
                        <img src="Images/loginimage.png" class="img-circle" alt="kca" />
                        <h4>KCA</h4>
                        <b>WEB DEVELOPER</b>
                        <p>KCA University is a professional when delaing it comes to delaing with quality hadware materials and also installation</p>
                        <a href="#"><i class="fa fa-whatsapp" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                         <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                         <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                    </div>
                     <div class="col-lg-4">
                        <img src="Images/loginimage.png" class="img-circle" alt="ernestonsase" />
                        <h4>WORKER</h4>
                        <b>DELIVERIES AND COMPLAINTS</b>
                        <p>Ernest Onsase is a professional when delaing it comes to delaing with quality hadware materials and also installation</p>
                        <a href="#"><i class="fa fa-whatsapp" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                         <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                         <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                    </div>
                </div>
            </div>
        </div>
         <!---------Our Team Members----------->

         <!------footer----->
       
        <footer>
            <div class="container">
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p class="center">&copy; 2017 Apex Hardware Store.com &middot;<a href="Default.aspx">Home</a>&middot;<a href="#">About Us</a>&middot;<a href="#">Contacts</a>&middot;<a href="#">Products</a>&middot;<a href="#">Partner Companies</a></p>
            </div>
        </footer>
        <!------footer----->
    </form>
        
     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
