<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddBrands.aspx.cs" Inherits="AddBrands" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="form-horizontal">
            <h2>Add Brand</h2>
            <div class="glyphicon-align-left">
             <div class="form-inline">
            <asp:TextBox ID="txtsearch" CssClass="form-control" runat="server" Width="256px"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" CssClass="btn btn-default" Text="Search" OnClick="btnSearch_Click" />
                 </div>
        </div>
            <hr />
             <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Brand Name"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtBrandName" CssClass="form-control" runat="server" Width="256px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="This field is Required" ControlToValidate="txtBrandName"></asp:RequiredFieldValidator>
                    </div>
                </div>
             <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="BtnAdd" runat="server" Text="Add" CssClass="btn btn-default" OnClick="BtnAdd_Click" />
                        
                    </div>
                </div>
        </div>
        <h1>BRANDS</h1>
        <hr />
        <div class="panel panel-default">
            <!-----DEfault panel contents--->
            <div class="panel-heading">ALL BRANDS</div>

            <asp:Repeater ID="rptrBrands" runat="server">
                <HeaderTemplate>
                     <table class="table">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Brand</th>
                        <th>Edit</th>
                    </tr>
                </thead>
                <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                     <tr>
                        <th><%# Eval("BrandID")%></th>
                          <td><%# Eval("Name")%></td>
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
            </div>
</asp:Content>

