<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="row" style="padding-top:100px">
         <asp:repeater id="rptrProducts" runat="server">
             <ItemTemplate>
        <div class="col-sm-3 col-md-3">
            <a style="text-decoration:none" href="ProductPreview.aspx?ProductID=<%# Eval("ProductID") %>">
            <div class="thumbnail">
                <img src="Images/Product Images/<%# Eval("ProductID") %>/<%# Eval("ImageName") %><%# Eval("Extention") %>" alt="<%#Eval("ImageName") %>" />
                <div class="caption">
                    <div class="probrand"><%# Eval("BrandName") %></div>
                <div class="proname"><%# Eval("ProductName") %></div>
                      <div class="proprice"><span class="prooprice"><%# Eval("ProductPrice") %></span><%# Eval("ProductSellPrice") %><span class="propriceDiscount">(<%# Eval("DiscAmount") %> off)</span></div> 
            </div>
        </div>
                </a>
    </div>
                </Itemtemplate> 
             </asp:repeater>
    </div>
</asp:Content>

