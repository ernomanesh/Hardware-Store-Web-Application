<%@ Page Title="Cart" Language="C#" MasterPageFile="~/UserPage.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="padding-top:30px;">
        <div class="col-md-9">
            <hr /><h5 class="proNameViewCart" runat="server" id="h5NiItems"></h5><hr />
            <asp:repeater ID="rptrCartProducts" runat="server">
            
            <ItemTemplate>
            <div class="media" style="border: 1px solid #eaeaec;">
  <div class="media-left">
    <a href="ProductPreview.aspx?ProductID=<%# Eval("ProductID") %>" target="_blank">
      <img width="300px" class="media-object"  src="Images/Product Images/<%# Eval("ProductID") %>/<%# Eval("Name") %><%# Eval("Extention") %>" alt="<%# Eval("ProductID") %>>" onerror="this.src='Imagesnoimage.jpg'"/>
    </a>
  </div>
  <div class="media-body">
    <h5 class="media-heading proNameViewCart"><%# Eval("Name") %></h5>
    <p class="propriceDiscountView">Size :<%# Eval("SizeNamee") %></p>
      <span class="propriceView"> <%# Eval("ProductSellPrice","{0:C}") %></span>
      <span class="proopriceView"><%# Eval("ProductPrice" ,"{0:0,00}") %></span>
      <p>
        <asp:Button commandArgument='<%#Eval("ProductID")+"-"+Eval("SizeIDD") %>' ID="btnRemoveItem" runat="server" CssClass="removeButton" OnClick="btnRemoveItem_Click1" Text="REMOVE" />
      </p>
  </div>
</div>  
                </ItemTemplate>
            </asp:repeater>
 </div>
         <div class="col-md-3" runat="server" id="divPriceDetails">
             <div style="border-bottom: 1px solid #eaeaec;">
            <hr /> <h5 class="proNameViewCart">PRICE DETAILS</h5><hr />
             <div>
                 <label>Cart Total</label>
                 <span class="pull-right priceGray" runat="server" id="SpanCartTotal"></span>
             </div>
              <div>
                 <label>Cart Discount</label>
                 <span class="pull-right priceGreen" runat="server" id="SpanDiscount"></span>
             </div>
        </div>
             <div>
                 <div class="propriceView">
                 <label>Total</label>
                 <span class="pull-right" runat="server" id="SpanTotal"></span>
             </div>
             </div>
             <div>
                <asp:Button ID="btnBuyNow" runat="server" CssClass="buyNowBtn" OnClick="btnBuyNow_Click" Text="CHECK OUT" /><p style="text-align:center;">OR</p>
                  <asp:Button ID="btncontinue" runat="server" CssClass="buyNowBtn" OnClick="btncontinue_Click" Text="CONTINUE SHOPPING" />
             </div>
    </div>
    </div>
</asp:Content>

