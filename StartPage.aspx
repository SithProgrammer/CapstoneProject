<%@ Page Title="HCA Health Care" Language="C#" MasterPageFile="~/MasterForm.Master" AutoEventWireup="true" CodeBehind="StartPage.aspx.cs" Inherits="CapstoneGroup6WebPage.StartPage" %>

<%@ MasterType VirtualPath="~/MasterForm.Master" %>

<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceHolder" runat="server">
    <%--new entry button section--%>
    <div class="row" id="newEntrySection">
        <div class="form-group ">
            <div class="col-md-8 text-center">
                <asp:Label ID="lbljNewEntry" runat="server" Text="CCPA Compliance Recommendation Form:"
                    CssClass="control-label" Font-Bold="True" Font-Size="20"></asp:Label>
            </div>       
            <div id="btnjStart" class="col-md-3 ">
                <asp:Button ID="btnjNewEntry" runat="server" Text="Start"
                    CssClass="btn btn-success" CausesValidation="False" OnClick="btnjNewEntry_Click" 
                    Width="70%" Font-Size="20px" />
            </div>
        </div>
    </div>
    <%--log In entry field for data base--%>
    <div class="form-group" id="loginSection">
        <div class="form-group row">
            <div id="lbljLoginHeader" class="col-md-12 text-center">
                <asp:Label runat="server" Text="Database Login:" CssClass="control-label"></asp:Label>
            </div>
        </div>
        <div class="form-group row">
            <div class="col-md-offset-3 col-md-1">
                <asp:Label ID="lblLoginName" runat="server" Text="User ID: "
                    CssClass="control-label" Font-Size="Large"></asp:Label>
            </div>
            <div class="col-md-4">
                <asp:TextBox ID="txtLoginID" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
            </div>
            <div class="col-md-2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server"
                    ErrorMessage="Invalid User ID" ControlToValidate="txtLoginID"
                    CssClass="text-danger" Display="Dynamic" Font-Size="Large"></asp:RequiredFieldValidator>

            </div>
        </div>
        <%--Password entry field--%>
        <div class="form-group row">
            <div class="col-md-offset-3 col-md-1">
                <asp:Label ID="lblPassword" runat="server" Text="Password:"
                    CssClass="control-label" Font-Size="Large"></asp:Label>
            </div>
            <div class="col-md-4">
                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
            </div>
            <div class="col-md-2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server"
                    ErrorMessage="Invalid Password" ControlToValidate="txtPassword"
                    CssClass="text-danger" Display="Dynamic" Font-Size="Large"></asp:RequiredFieldValidator>
                           <asp:CompareValidator ID="CompareValidator2" runat="server" 
                    ErrorMessage="Invalid Password" Font-Size="Large" 
                    CssClass="text-danger" ControlToValidate="txtPassword" 
                    ValueToCompare="password"></asp:CompareValidator>
                </div>
        </div>
        <%--  button for login--%>
        <div class="form-group">
            <div class="col-md-12 text-center">
                <asp:Button ID="btnLogIn" runat="server" Text="Log In"
                    CssClass="btn btn-primary" OnClick="btnLogIn_Click"
                    Width="30%" Font-Size="Larger" />
            </div>
        </div>
    </div>
</asp:Content>
  