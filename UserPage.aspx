<%@ Page Title="Data Base Search" Language="C#" MasterPageFile="~/MasterForm.Master" AutoEventWireup="true" CodeBehind="UserPage.aspx.cs" Inherits="CapstoneGroup6WebPage.UserPage" %>

<%@ MasterType VirtualPath="~/MasterForm.Master" %>

<asp:Content ContentPlaceHolderID="mainPlaceHolder" runat="server">
<%--    Page Navigation Bar--%>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <div class="navbar-brand">Capstone Group 6</div>
            </div>
            <ul id="navbarLinks" class="nav navbar-nav navbar-right ">
                <li><a href="EntryForm.aspx">Entry Form</a></li>
                <li><a href="PolicyForm.aspx">Policy</a></li>              
                <li><a href="StartPage.aspx">Log Out</a></li>
            </ul>
        </div>
    </nav>
  <%--  Page header section--%>
    <div class="form-group">
        <div id="userHeader" class="col-md-12">
            <asp:Label ID="lblUser" runat="server" Text="Entry Report Database" 
                CssClass="control-label" Font-Bold="True" Font-Underline="False"></asp:Label>
        </div>
    </div>
    <%--Data Base Search Results in a Grid View(read-only)--%>
    <div class="gridStyle">
        <div id="gridStyle" class="table-responsive">
            <asp:GridView ID="reportGrid" runat="server" AutoGenerateColumns="False"
                DataKeyNames="Report_ID" DataSourceID="SqlDataSource1" CssClass="table table-striped table-bordered"
                AllowPaging="True" AllowSorting="True" OnPreRender="reportGrid_PreRender">
                <Columns>
                    <asp:BoundField DataField="Report_ID" HeaderText="Report ID#"
                        InsertVisible="False" ReadOnly="True" SortExpression="Report_ID">
                        <HeaderStyle Width="10%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Created_Date" HeaderText="Date Created"
                        DataFormatString="{0:MM/dd/yyyy hh:mm tt}" SortExpression="Created_Date">
                        <HeaderStyle Width="15%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Report" HeaderText="Report"
                        SortExpression="Report">
                        <HeaderStyle Width="70%" />
                    </asp:BoundField>
                   
                </Columns>
                <HeaderStyle CssClass="" BackColor="LightBlue" />
                <PagerStyle CssClass="cssPager" BackColor="LightBlue" HorizontalAlign="Center" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [ProgressReports]"></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>

