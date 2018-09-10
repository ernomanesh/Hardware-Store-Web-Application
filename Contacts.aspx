<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contacts.aspx.cs" Inherits="Contacts" %>

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
                        <a href="Partner Companies.aspx" class="dropdown-toggle" data-toggle="dropdown">Partner Companies<b class="caret"></b></a>
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
        <!----Navigatio Contact---->
        <div class="container">
            <div class="box">
                <div class="row">
                    <div class="col-lg-12">
                        <br />
                        <hr />
                        <h2 class="intro-text text-center">OUR BUSINESS CONTACTS</h2>
                        <hr />
                    </div>

                    <div class="col-md-8">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.840237452397!2d36.791357789327634!3d-1.2686965931230747!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x182f1744d1f496ef%3A0xa2a048835be09d59!2sRiverside+Dr%2C+Nairobi!5e0!3m2!1sen!2ske!4v1499522197345" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                    </div>

                    <div class="col-md-4 jumbotron">
                        <hr />
                        <h2 class="intro-text">CONTACTS</h2>
                        <hr />
                        <p style="color:mediumvioletred">Phone:<strong>0723570912</strong></p>
                        <p>Tel:<strong>1237289593</strong></p>
                         <p>Email:<strong><a href="mailto:ernestonsase@gmail.com">ernestonsase@gmail.com</a></strong></p>
                        <p>Address:<strong>44412 Riverside Nairobi</strong></p>
                    </div>
                </div>
            </div>
            <div class="jumbotron ">
                <div class="row">
                    <div class="col-lg-12">
                        <br />
                        <hr />
                        <h2 class="intro-text text-center">CONTACT FORM</h2>
                        <hr />
                        <p class="text-center">Please fill all the field bellow so that we can be able to get your feedback as our policiy says our customers are our pillar.</p>
                        <br />
                          <div class="row">
                              <div class="form-group col-lg-4">
                                  <asp:Label ID="Lblname" runat="server" Text="Name"></asp:Label><br />
                                  <asp:TextBox ID="name" runat="server"></asp:TextBox>
                              </div>
                               <div class="form-group col-lg-4">
                                  <asp:Label ID="Lblemail" runat="server" Text="Email"></asp:Label><br />
                                  <asp:TextBox ID="email" runat="server"></asp:TextBox>
                              </div>
                               <div class="form-group col-lg-4">
                                  <asp:Label ID="Lblpn" runat="server" Text="Phone Number"></asp:Label><br />
                                  <asp:TextBox ID="phonenumber" runat="server"></asp:TextBox>
                              </div>
                          </div>
                   <div class="form-group col-lg-12">
                                  <asp:Label ID="Label1" runat="server" Text="Message"></asp:Label><br />
                       <textarea class="form-control" id="TextArea1" cols="20" rows="7"></textarea>
                              </div>
                        <div class="form-group col-lg-12">
                                  <input type="hidden" name="SAVE" value="Contact" />
                            <asp:Button CssClass="btn btn-success"  ID="Button1" runat="server" Text="Submitt"  />
                              </div>
                    </div>
                </div>

            </div>
        </div>
        <hr>
        <!----Navigatio Contact---->
         <!------footer----->
        <div>
        <div id="footer" class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-4">
                        <h4><a href="Contacts.aspx">Contact Us</a></h4>
                        <p><i class="fa fa-home" aria-hidden="true"></i>44412 Riverside Nairobi</p>
                         <p><i class="fa fa-envelop" aria-hidden="true"></i>ernestonsase@gmail.com</p>
                         <p><i class="fa fa-phone" aria-hidden="true"></i>0723570913</p>
                         <p><i class="fa fa-home" aria-hidden="true"></i>www.onestophardwarestore.com</p>
                    </div>
                    <div class="col-lg-4 col-md-4">
                        <h4><a href="Contacts.aspx">Contact Us</a></h4>
                        <p><i class="fa fa-square-o" aria-hidden="true"></i>About Us</p>
                         <p><i class="fa fa-square-o" aria-hidden="true"></i>Privacy</p>
                         <p><i class="fa fa-square-o" aria-hidden="true"></i>Terms and Conditions</p>
                         
                    </div>
                   <div class="col-lg-4 col-md-4">
                        <h4><a href="Contacts.aspx">Social Media Handles</a></h4>
                       <i class="fa fa-facebook" aria-hidden="true"></i>
 <i class="fa fa-whatsapp" aria-hidden="true"></i>
<i class="fa fa-twitter" aria-hidden="true"></i>
<i class="fa fa-instagram" aria-hidden="true"></i>
<i class="fa fa-linkedin" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
        </div>
            </div>
       
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
