﻿<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.master" AutoEventWireup="true" CodeFile="ProductPreview.aspx.cs" Inherits="ProductPreview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="padding-top:50px" >
        <div class="col-md-5">
            <div style="max-width:480px" class="thumbnail">
             <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
      <li data-target="#carousel-example-generic" data-slide-to="3"></li>
      <li data-target="#carousel-example-generic" data-slide-to="4"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
      <asp:Repeater ID="rptrimages" runat="server">
          <ItemTemplate>
    <div class="item <%# GetActiveClass(Container.ItemIndex) %>">
      <img src="Images/Product Images/<%# Eval("ProductID") %>/<%# Eval("Name") %><%# Eval("Extention") %>" alt="<%# Eval("ProductID") %>" onerror="this.src='Imagesnoimage.jpg'">
    </div>
              </ItemTemplate>
        </asp:Repeater>
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
            </div>
        </div>
        <div class="col-md-7">
            <asp:Repeater ID="rptrProductDetails" OnItemDataBound="rptrProductDetails_ItemDataBound" runat="server">
                <ItemTemplate>
            <div class="divDet1">
            <h1 class="proNameView"><%# Eval("ProductName") %></h1>
            <span class="proopriceView"><%# Eval("ProductPrice") %></span><span class="propriceDiscountView"><%# string.Format("{0}",Convert.ToInt64(Eval("ProductPrice"))-Convert.ToInt64(Eval("ProductSellPrice"))) %> OFF</span>
            <p class="propriceView"><%# Eval("ProductSellPrice") %></p>
                </div>
            <div>
                <h5 class="h5Size">SIZE</h5>
                <div>
                    <asp:radiobuttonlist id="RblSize" runat="server" repeatdirection="Horizontal" repeatlayout="Flow">
                        </asp:radiobuttonlist>
                </div>
            </div>
            <div class="divDet1">
                <asp:Button ID="btnAddtoCart" OnClick="btnAddtoCart_Click" CssClass="mainButton" runat="server" Text="ADD TO CART" />
                <asp:Label ID="lblerror" runat="server" CssClass="text-danger"></asp:Label>
            </div>
            <div class="divDet1">
 <h5 class="h5Size">Product Description</h5>
                <p>
               <%# Eval("ProductDescrption") %>
                    </p>
                <h5 class="h5Size">Product Details</h5>
                <p> <%# Eval("ProductDetails") %></p>
                <h5 class="h5Size">Material and Care</h5>
                <p><%# Eval("ProductMaterialCare") %> </p>
            </div>
            <div>
                <p><%# ((int)Eval("FreeDelivery")==1)?"Free Delivery":"" %></p>
                  <p><%# ((int)Eval("30DaysReturn")==1)?"30 Days return":"" %></p>
                  <p><%# ((int)Eval("COD")==1)?"Cash on Delivery ":"" %></p>
            </div>

                    <asp:HiddenField ID="hfCatID" Value='<%# Eval("ProductCategoryID") %>' runat="server" />
                    <asp:HiddenField ID="hfSubCatID" Value='<%# Eval("ProductSubCategoryID") %>' runat="server" />
                     <asp:HiddenField ID="hfGenreID" Value='<%# Eval("ProductGenre") %>' runat="server" />
                    <asp:HiddenField ID="hfBrandID" Value='<%# Eval("ProductBrandID") %>' runat="server" />
                    </ItemTemplate>
                </asp:Repeater>
        </div>
    </div>
</asp:Content>

