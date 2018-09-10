 <%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Home</title>
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
                            <li><a href="Partner Companies.aspx">Space and Style</a></li>
                            <li><a href="Partner Companies.aspx">Amarco</a></li>
                            <li><a href="Partner Companies.aspx">Crown Paints</a></li>
                            <li><a href="Partner Companies.aspx">Bamburi Cement</a></li>
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
                            <li><a href="SignIn.aspx">Cement</a></li>
                           
                            <li role="separator" class="divider"></li>
                            <li class="dropdown-header">HouseHold Items</li>
                            <li role="separator" class="divider"></li>
                            <li><a href="SignIn.aspx">Tiles</a></li>
                            
                            <li role="separator" class="divider"></li>
                            <li class="dropdown-header">Farm Inputs</li>
                            <li role="separator" class="divider"></li>
                            <li><a href="SignIn.aspx">Jembes</a></li>
                            
                            <li role="separator" class="divider"></li>
                            <li class="dropdown-header">Hunting and Fishing</li>
                            <li role="separator" class="divider"></li>
                            <li><a href="SignIn.aspx">Hooks</a></li>
                            
                        </ul>
                    </li>
                    <li>
                        <button id="btnCart" class="btn btn-primary navbar-btn" type="button">
                           Cart <span class="badge" id="pCount" runat="server"></span>
                        </button>

                    </li>
                    <li><a  href="SignIn.aspx">My Cart</a></li>
                    <li id="btnSignUp" runat="server"><a href="SignUp.aspx">Sign Up</a></li>
                   
                    <li id="btnSignIn" runat="server"><a href="SignIn.aspx">Sign In</a></li>
                  <li>  <asp:Button ID="BtnSignOut" runat="server" Class="btn btn-default navbar-btn" Text="Sign Out" OnClick="BtnSignOut_Click"  />
               </li>
                      </ul>
            </div>
            </div>
    </div>

       
        <br />
        <!-----carousel---->
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="Images/Classical-Household-Furniture-Hardware-Pull-Handle-And-Cupboard-Shoe-Cabinet-font-b-Door-b-font-font.jpg "  alt="..." style="width:2000px;height:600px" />
      <div class="carousel-caption">
        <h3>Door Knobs</h3>
          <p>Different shapes and colors</p>
           <span class="badge">Original</span>
          <p><a class="btn btn-lg btn-primary" href="SignUp.aspx"  role="button">Join Us Today For Special Offer.</a></p>
      </div>
    </div>
    <div class="item">
      <img src="Images/utilizzare-la-pittura-a-tempera_NG3.jpg"  alt="..." style="width:2000px;height:600px"/>
      <div class="carousel-caption">
        <h3>Paint Brush</h3>
          <p>Brushes for different activites</p>
          <p><a class="btn btn-lg btn-primary" href="#" role="button">Like Our Pages</a></p>
      </div>
    </div>
   <div class="item">
      <img src="Images/Monica-Benavidez-DIY-Challenge-1.jpg"  alt="..." style="width:2000px;height:600px"/>
      <div class="carousel-caption">
        <h3>Pipe Connectors and Holders</h3>
          <p>Non-Rustable</p>
          <p><a class="btn btn-lg btn-primary" href="#" role="button">Share Your Experience</a></p>
      </div>
    </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        <!-----carousel---->

    </div>
        <br />
        <br />

        <!-----middle content---->
        <div class="container center">
        <div class="row">
            <div class="col-lg-4">
<img class="img-circle" src="Images/images (13).jpg" alt="imgpol" width="140" height="140" />
                <h3>CEMENT</h3>
                <p>
                    In this data collection technique it will be used especially in areas with big geographical cover hence we are able to get appropriate data from a huge number of people. This will help us to get the general overview of activities that transpire between the seller, buyer and also the middlemen and the challenges they encounter during their work. Questionnaires are going to be designed in a simplified way so that all people can be able to answer the questions appropriately and also it will be an open questionnaire in which respondents will be able to give in-depth information regarding to renting of spaces.
                </p>
                <p>
                    <a class="btn btn-default" href="#" role="button">View &raquo;</a>
                </p>
            </div>
                     <div class="col-lg-4">
<img class="img-circle" src="Images/images (18).jpg" alt="imgpol" width="140" height="140" />
                <h3>POWER SAW</h3>
                <p>
                    In this data collection technique it will be used especially in areas with big geographical cover hence we are able to get appropriate data from a huge number of people. This will help us to get the general overview of activities that transpire between the seller, buyer and also the middlemen and the challenges they encounter during their work. Questionnaires are going to be designed in a simplified way so that all people can be able to answer the questions appropriately and also it will be an open questionnaire in which respondents will be able to give in-depth information regarding to renting of spaces.
                </p>
                <p>
                    <a class="btn btn-default" href="#" role="button">View &raquo;</a>
                </p>
            </div>
                     <div class="col-lg-4">
<img class="img-circle" src="Images/images (49).jpg" alt="imgpol" width="140" height="140" />
                <h3>ROPE HOOK</h3>
                <p>
                    In this data collection technique it will be used especially in areas with big geographical cover hence we are able to get appropriate data from a huge number of people. This will help us to get the general overview of activities that transpire between the seller, buyer and also the middlemen and the challenges they encounter during their work. Questionnaires are going to be designed in a simplified way so that all people can be able to answer the questions appropriately and also it will be an open questionnaire in which respondents will be able to give in-depth information regarding to renting of spaces.
                </p>
                <p>
                    <a class="btn btn-default" href="#" role="button">View &raquo;</a>
                </p>
            </div>
            </div>
        </div>
         <!-----middle content---->
        <hr />
        <!-----subscriber email------>
        <section class="glyphicon-asterisk">
            <div class="well">
                <div class="container text-center nadro">
                    <h3><u>Subscribe for more offers</u></h3>
                    <p>Please enter your name and email</p>
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="Subscriber Name"></asp:Label>
                            <input type="text" class="form-control" id="subscription" placeholder="Enter your name" />
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label2" runat="server" Text="Email Address"></asp:Label>
                            <input type="text" class="form-control" id="email" placeholder="Enter your Email" />
                        </div>
                        <button type="submit" class="btn btn-default">Subscriber</button>
                   
                </div>
            </div>   
        </section>
        <!-----subscriber email------>
         <nav>
             <ul class="pager">
                 <li><a href="Default.aspx">Previous</a></li>
                 <li><a href="SignUp.aspx">Next</a></li>
             </ul>
         </nav>
        <hr />

       
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
