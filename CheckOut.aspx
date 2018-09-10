<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.master" AutoEventWireup="true" CodeFile="CheckOut.aspx.cs" Inherits="CheckOut" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <hr /><h4 style="">WELCOME TO OUR CHECKOUT PAGE</h4><hr />
     <div class="form-horizontal">
     <div class="form-group">
         <p>SHIP TO:</p>
         <div class="form-group">
                 <asp:label id="Label6" runat="server" cssclass="col-md-2 control-label" text="OrderID"></asp:label>
                    <div class="col-md-3">
                         <asp:TextBox ID="txtorderID" CssClass="form-control" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" CssClass="text-danger" runat="server" ErrorMessage="This field is Required" ControlToValidate="txtorderID"></asp:RequiredFieldValidator>
                    </div>
             </div>
          <div class="form-group">
                 <asp:label id="Label5" runat="server" cssclass="col-md-2 control-label" text="UserName"></asp:label>
                    <div class="col-md-3">
                         <asp:TextBox ID="txtUn" CssClass="form-control" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="text-danger" runat="server" ErrorMessage="This field is Required" ControlToValidate="txtUn"></asp:RequiredFieldValidator>
                    </div>
             </div>
          <div class="form-group">
                 <asp:label id="Label2" runat="server" cssclass="col-md-2 control-label" text="Address"></asp:label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtaddre" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="text-danger" runat="server" ErrorMessage="This field is Required" ControlToValidate="txtaddre"></asp:RequiredFieldValidator>
                    </div>
                </div>
          <div class="form-group">
                 <asp:label id="Label3" runat="server" cssclass="col-md-2 control-label" text="Contact"></asp:label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtconta" CssClass="form-control" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="text-danger" runat="server" ErrorMessage="This field is Required" ControlToValidate="txtconta"></asp:RequiredFieldValidator>
                    </div>
                </div>
         <div class="form-group">
                 <asp:label id="Label4" runat="server" cssclass="col-md-2 control-label" text="Payment Method"></asp:label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtpay" CssClass="form-control" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" CssClass="text-danger" runat="server" ErrorMessage="This field is Required" ControlToValidate="txtpay"></asp:RequiredFieldValidator>
                    </div>
             </div>
         <div class="form-group">
                 <asp:label id="Label1" runat="server" cssclass="col-md-2 control-label" text="ProductID"></asp:label>
                    <div class="col-md-3">
                         <asp:TextBox ID="txtprodids" CssClass="form-control" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ErrorMessage="This field is Required" ControlToValidate="txtprodids"></asp:RequiredFieldValidator>
                    </div>
             </div>
         <div>
                <asp:Button ID="btnCompleteOrder" runat="server" Text="Complete Order" CssClass="buyNowBtn" OnClick="btnCompleteOrder_Click"/><p style="text-align:center;">
                   
                
             </div>
         </div>
         </div>
</asp:Content>
 


