<%@ Page Title="Entry Form" Language="C#" MasterPageFile="~/MasterForm.Master" AutoEventWireup="true" CodeBehind="EntryForm.aspx.cs" Inherits="CapstoneGroup6WebPage.EntryForm" %>
<%@ MasterType VirtualPath="~/MasterForm.Master" %>

<asp:Content ID="entryFormPage" ContentPlaceHolderID="mainPlaceHolder" runat="server">

    <%--navbar area no data base access--%>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <div class="navbar-brand">Capstone Group 6</div>
            </div>
            <ul id="navbarLinks" class="nav navbar-nav navbar-right ">
                <li><a href="PolicyForm.aspx">Policy</a></li>
                <li><a href="StartPage.aspx">Home</a></li>
            </ul>
        </div>
    </nav>
    <%-- header for page--%>
    <div class="form-group">
        <div id="lbljEntryFormHeader" class="col-md-12">
            <asp:Label ID="entry" runat="server"
                Text="CCPA Complaince Recommendation:" Font-Bold="True"></asp:Label>
        </div>
    </div>
    <%--report entry section--%>
    <div class="form-group">
        <div id="lbljNewEntryHeader"class="col-md-offset-1 col-md-2 text-center">
            <%--<asp:Label ID="lbljnewEntry" runat="server" Text="New Entry:"
                CssClass="control-label" Font-Bold="True" Font-Names="Georgia" 
                Font-Size="X-Large"></asp:Label>--%>
        </div>
        <div class="col-md-6">
            <asp:TextBox ID="txtjEntryForm" runat="server" CssClass="form-control"
                Rows="8" placeholder="Please enter HCA HealthCare CCPA complaince suggestions here"
                TextMode="MultiLine" Width="100%" MaxLength="500" TabIndex="1"></asp:TextBox>
        </div>
       <%-- blank form validator--%>
        <div class="form-group">
            <div class="col-md-12 text-center">
        <asp:RequiredFieldValidator ID="entryFormValidator" runat="server"
            ErrorMessage="Invalid Entry" CssClass="text-danger" Font-Bold="True" 
            ControlToValidate="txtjEntryForm" Display="Dynamic"></asp:RequiredFieldValidator>
                           </div>
        </div>
       <%-- database connection--%>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            DeleteCommand="DELETE FROM [ProgressReports] WHERE [Report_ID] = @Report_ID"
            InsertCommand="INSERT INTO [ProgressReports] ([Report], [Created_Date]) VALUES (@Report, @Created_Date)"
            SelectCommand="SELECT * FROM [ProgressReports]"
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
    <%--buttons for submit and clear--%>
    <div class="form-group">
        <div id="btnjClear" class="col-md-offset-4 col-md-2">
            <asp:Button ID="clear" runat="server" Width="100%"
                Text="Clear" CssClass="btn btn-danger" OnClick="clear_Click" CausesValidation="False" />
        </div>
        <div id="btnjSubmit" class="col-md-2">
            <asp:Button ID="submit" runat="server" Width="100%"
                Text="Submit" CssClass="btn btn-primary" OnClick="submit_Click" TabIndex="2" />
        </div>
    </div>
  <%--  entry accepted announcement section--%>
    <div class="form-group">
        <div id="lbljAccepted" class="col-md-12 container-fluid">
            <asp:Label ID="Accepted" runat="server" Text=" "
                CssClass="control-label" ForeColor="Blue"></asp:Label>
        </div>
    </div>
    <%--Invisible date stamp label to link to submit button for date entry to database--%>
    <div class="form-group">
        <asp:Label ID="dateTimeStamp" runat="server" Text="Invisible Label for DateTimeStamp for database entry"
            Visible="False"></asp:Label>
        <asp:Label ID="lblError" runat="server" Visible="False"></asp:Label>
    </div>
</asp:Content>
