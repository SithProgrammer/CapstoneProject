<%@ Page Title="Administrator" Language="C#" MasterPageFile="~/MasterForm.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="CapstoneGroup6WebPage.DataBaseForm" %>

<%@ MasterType VirtualPath="~/MasterForm.Master" %>

<asp:Content ContentPlaceHolderID="mainPlaceHolder" runat="server">
    <%--  Navigation Bar section--%>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <div class="navbar-brand">Capstone Group 6</div>
            </div>
            <ul id="navbarLinks" class="nav navbar-nav navbar-right">
                <li><a href="EntryForm.aspx">Entry Form</a></li>
                <li><a href="PolicyForm.aspx">Policy</a></li>
                <li><a href="StartPage.aspx">Log Out</a></li>
            </ul>
        </div>
    </nav>
    <%--    Admin Header--%>
    <div class="form-group">
        <div id="adminHeader" class="col-md-12">
            <asp:Label ID="lblAdmin" runat="server" Text="Administrator Database Access"
                CssClass="control-label" Font-Bold="True" Font-Underline="False"></asp:Label>
        </div>
    </div>
    <%--Data Base in a Grid View--%>
    <div class="gridStyle">
        <div id="gridStyle" class="col-sm-12 table-responsive">
            <asp:GridView ID="reportGrid" runat="server"
                AutoGenerateColumns="False" DataKeyNames="Report_ID"
                DataSourceID="SqlDataSource1"
                CssClass="table table-striped table-bordered"
                AllowPaging="True" AllowSorting="True"
                OnPreRender="reportGrid_PreRender">
                <Columns>
                    <asp:BoundField DataField="Report_ID" HeaderText="Report ID#"
                        InsertVisible="False" ReadOnly="True" SortExpression="Report_ID">
                        <ItemStyle CssClass="col-xs-1" />
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="Date Created" SortExpression="Created_Date">
                        <ItemTemplate>
                            <asp:Label ID="tempDateCreated" runat="server"
                                Text='<%# Bind("Created_Date", "{0:MM/dd/yyyy  hh:mm tt}") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle CssClass="col-xs-1 text-center" />
                        <HeaderStyle CssClass="text-center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Entry Reports" SortExpression="Report">
                        <EditItemTemplate>
                            <div class="col-md-12">
                                <asp:TextBox ID="txtReportGrid" runat="server"
                                    CssClass="form-control"
                                    Text='<%# Bind("Report") %>' TextMode="MultiLine" Rows="3"></asp:TextBox>
                            </div>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="itemtempReport" runat="server"
                                Text='<%# Bind("Report") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle CssClass="col-lg-8 " />
                    </asp:TemplateField>
                    <asp:CommandField ShowEditButton="True">
                        <ItemStyle CssClass="col-xs-1 text-center" />
                    </asp:CommandField>
                    <asp:CommandField ShowDeleteButton="True">
                        <ControlStyle CssClass="col-xs-1" />
                    </asp:CommandField>
                </Columns>
                <%--Grid Styling--%>
                <HeaderStyle CssClass="" BackColor="#cccccc" />
                <EditRowStyle CssClass="warning" />
                <PagerStyle CssClass="cssPager" BackColor="#cccccc" HorizontalAlign="Center" />
            </asp:GridView>
            <%-- Data Base connection--%>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                SelectCommand="SELECT * FROM [ProgressReports]"
                DeleteCommand="DELETE FROM [ProgressReports] WHERE [Report_ID] = @Report_ID"
                InsertCommand="INSERT INTO [ProgressReports] ([Report], [Created_Date]) VALUES (@Report, @Created_Date)"
                UpdateCommand="UPDATE [ProgressReports] SET [Report] = @Report, [Created_Date] = @Created_Date WHERE [Report_ID] = @Report_ID">
                <DeleteParameters>
                    <asp:Parameter Name="Report_ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Report" Type="String" />
                    <asp:Parameter Name="Created_Date" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Report" Type="String" />
                    <asp:Parameter Name="Created_Date" Type="DateTime" />
                    <asp:Parameter Name="Report_ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
