<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddCategory.aspx.cs" Inherits="AddCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
         <div class="form-horizontal">
             <br /><br />
             <h2>Add Category</h2>
             <hr />
             <div class="form-group">
                 <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Category Name"></asp:Label>
                 <div class="col-md-3">
                     <asp:TextBox ID="txtCatName" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="text-danger" runat="server" ErrorMessage="The field is Required" ControlToValidate="txtCatName" InitialValue="0"></asp:RequiredFieldValidator>
             </div>
         </div>
             <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="BtnAdd" runat="server" Text="Add" CssClass="btn btn-default" OnClick="BtnAdd_Click"/>
                        </div>
                    </div>
             </div>
         <h1>CATEGORY</h1>
        <hr />
        <div class="panel panel-default">
            <!-----DEfault panel contents--->
            <div class="panel-heading">ALL CATEGORIES</div>

            <asp:Repeater ID="rptrCategory" runat="server">
                <HeaderTemplate>
                     <table class="table">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Category</th>
                        <th>Edit</th>
                    </tr>
                </thead>
                <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                     <tr>
                        <th><%# Eval("CategoryID")%></th>
                          <td><%# Eval("CategoryName")%></td>
                          <td>Edit</td>
                         <td>Details</td>
                         <td>Delete </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>  
                </tbody>
            </table>
                </FooterTemplate>
            </asp:Repeater>
            <!-----Table--->                       
            </div>
</div>
</asp:Content>

