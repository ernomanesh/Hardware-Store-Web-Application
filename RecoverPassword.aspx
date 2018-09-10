<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RecoverPassword.aspx.cs" Inherits="RecoverPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reset your Password </title>
     <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/HardwareStyler.css" rel="stylesheet" />
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle Navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="Default.aspx"><span>
                            <img alt="logo" src="Images/images (2).png" height="30" /></span>OneTouch Hardware Store</a>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="Default.aspx">Home</a></li>
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

                            <li><a href="SignIn.aspx">Sign In</a></li>
                        </ul>
                    </div>
                </div>

            </div>
    </div>

        <div class="container">
            <div class="form-horizontal"><br /><br />
                <h3>Reset Password</h3>
                <hr />
                <div class="form-group">
                    <asp:Label ID="LblMsg" runat="server" CssClass="col-md-2 control-label" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                  </div>
                <div class="form-group">
                    <asp:Label ID="LblPass" runat="server" CssClass="col-md-2 control-label" Text="New Password:" Visible="False"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="tbNewPass" CssClass="form-control" textmode="Password" runat="server" Visible="False"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" CssClass="text-danger" runat="server" ErrorMessage="Please enter your New Password" ControlToValidate="tbNewPass"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="LblRetypepass" runat="server" CssClass="col-md-2 control-label" Text="Confirm Password:" Visible="False"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="tbConfirmPass" CssClass="form-control" textmode="Password" runat="server" Visible="False"></asp:TextBox>
                         
                        <asp:CompareValidator ID="CompareValidatorPass" runat="server" CssClass="text-danger" ErrorMessage="Both password must match." ControlToValidate="tbNewPass" ControlToCompare="tbConfirmPass"></asp:CompareValidator>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-2"></div>
                     <div class="col-md-6">
                    <asp:Button ID="btPassReset" runat="server" CssClass="btn btn-default" Text="Reset" Visible="False" OnClick="btPassReset_Click"  />
                    </div>
                </div>
            </div>
        </div>

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

