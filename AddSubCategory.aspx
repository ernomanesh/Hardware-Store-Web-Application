﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddSubCategory.aspx.cs" Inherits="AddSubCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container">
         <div class="form-horizontal">
             <br /><br />
             <h2>Add Sub Category</h2>
             <hr />
             <div class="form-group">
                 <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Main Category"></asp:Label>
                 <div class="col-md-3">
                  <asp:DropDownList ID="ddlCategory" CssClass="form-control"  runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="text-danger" runat="server" ErrorMessage="The field is Required" ControlToValidate="ddlCategory" InitialValue="0"></asp:RequiredFieldValidator>
             </div>
         </div>
             <div class="form-group">
                 <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Sub Category"></asp:Label>
                 <div class="col-md-3">
                     <asp:TextBox ID="txtSubCatName" CssClass="form-control" runat="server"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="Username is Required" ControlToValidate="txtSubCatName"></asp:RequiredFieldValidator>
                     </div>
                 </div>
         <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="BtnAdd" runat="server" Text="Add" CssClass="btn btn-default" OnClick="BtnAdd_Click"/>
                        </div>
                    </div>
                </div>
          <h1>SUB CATEGORY</h1>
        <hr />
        <div class="panel panel-default">
            <!-----DEfault panel contents--->
            <div class="panel-heading">ALL SUB CATEGORIES</div>

            <asp:Repeater ID="rptrCategory" runat="server">
                <HeaderTemplate>
                     <table class="table">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Sub Category</th>
                        <th>Category</th>
                        <th>Edit</th>
                    </tr>
                </thead>
                <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                     <tr>
                        <th><%# Eval("SubCategoryID")%></th>
                          <td><%# Eval("SubCategoryName")%></td>
                          <td><%# Eval("CategoryName")%></td>
                          <td>Edit</td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>  
                </tbody>
            </table>
                </FooterTemplate>
            </asp:Repeater>
            <!-----Table--->             
        </div>
     
</asp:Content>

