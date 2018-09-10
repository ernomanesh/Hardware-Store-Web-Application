<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddGenre.aspx.cs" Inherits="AddGenre" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container">
         <div class="form-horizontal">
             <br /><br />
             <h2>Add Genre</h2>
             <hr />
             <div class="form-group">
                 <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Genre Name"></asp:Label>
                 <div class="col-md-3">
                     <asp:TextBox ID="txtGenreName" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="text-danger" runat="server" ErrorMessage="The field is Required" ControlToValidate="txtGenreName" InitialValue="0"></asp:RequiredFieldValidator>
             </div>
         </div>
             <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="BtnAdd" runat="server" Text="Add" CssClass="btn btn-default" OnClick="BtnAdd_Click"/>
                        </div>
                    </div>
             </div>
         <h1>Genre</h1>
        <hr />
        <div class="panel panel-default">
            <!-----DEfault panel contents--->
            <div class="panel-heading">ALL Genre</div>

            <asp:Repeater ID="rptrCategory" runat="server">
                <HeaderTemplate>
                     <table class="table">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Genre</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                </thead>
                <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                     <tr>
                        <th><%# Eval("GenreID")%></th>
                          <td><%# Eval("GenreName")%></td>
                          <td>Edit</td>
                          <td>Delete</td>
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

