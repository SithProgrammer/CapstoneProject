<%@ Page Title="Security Policy" Language="C#" MasterPageFile="~/MasterForm.Master" AutoEventWireup="true" CodeBehind="PolicyForm.aspx.cs" Inherits="CapstoneGroup6WebPage.PolicyForm" %>

<%@ MasterType VirtualPath="~/MasterForm.Master" %>

<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceHolder" runat="server">
   <%-- Page Navigation Bar section--%>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <div class="navbar-brand">Capstone Group 6</div>
            </div>
            <ul id="navbarLinks" class="nav navbar-nav navbar-right ">
                <li><a href="EntryForm.aspx">Entry Form</a></li>
                <li><a href="StartPage.aspx">Home</a></li>
            </ul>
        </div>
    </nav>
    <%--Page headers and announcements--%>
    <div class="form-group">
        <div id="lbljPolicyPageHeader" class="col-sm-12">
            <asp:Label ID="PolicyPageHeader" runat="server"
                CssClass="control-label" Text="Security Policy:" Font-Bold="True"
                Font-Names="Century" Font-Size="20pt"></asp:Label>
        </div>
    </div>
    <div class="form-group">
        <div id="lbljOpeningQuestion" class="col-md-12 text-center">
            <asp:Label ID="OpeningQuestion" runat="server"
                Text="How is our company CCPA compliant?"></asp:Label>
        </div>
    </div>
    <div class="form-group">
        <div id="lbljOpeningStatement" class="col-md-12 text-center">
            <asp:Label ID="OpeningStatement" runat="server"
                Text="Our company is dedicated to providing our customers 
                with the best and most up to date security standards that 
                comply with the new CCPA regulations."></asp:Label>
        </div>
    </div>
    <%--Page security description paragraphs--%>
    <div class="form-group">
        <div id="lbljPolicyP1" class="col-md-offset-2 col-md-8">
            <asp:Label ID="PolicyP1" runat="server"
                Text="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HCA Healthcare’s privacy policies have been updated to explain, 
                how, why and what personal information that we will be collecting. 
                Our management teams have also added information on how our users can request access, 
                change or erasure of their personal information that we have collected. Our 
                company has introduced a few methods for verifying identification of the person 
                making the request. Our staff members have also informed our customers in the privacy 
                policy that under HIPPA laws that we are not allowed to share or sell any information 
                pertaining to our customers."></asp:Label>
        </div>
    </div>
    <div class="form-group">
        <div id="lbljPolicyP2" class="col-md-offset-2 col-md-8">
            <asp:Label ID="PolicyP2" runat="server"
                Text="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HCA Healthcare is also dedicated to providing the best security measures to 
                ensure our customer’s personal information remains secure. Here are some of the 
                update made to our security policy in order to comply with the new CCPA laws. We 
                have installed DLP (Data Loss Prevention) sensors such as Data Storage sensors that 
                keeps all our customers information encrypted. We have Data Execution Preventions 
                (DEP) in place in order to keep information from leaving our facilities by 
                implementing USB blocking. Security and information event management (SIEM) devices 
                have also been installed for real time monitoring of security information and in 
                the event of an attack, the system alerts our teams immediately. Following the 
                SIEM devices, we have also placed network taps in our security arsenal in order 
                to filter and block unwanted network traffic. Along with all the security updates 
                made to our site and facilities, our cyber security department is constantly monitoring our security 
                logs to see what types of attacks that are being targeted towards us and if any have 
                been successful. Lastly, in order to improve identity verification, we have also 
                implemented a two-point verification"></asp:Label>
        </div>
    </div>
   <%-- Security feature bullets header--%>
    <div class="form-group">
        <div id="bulletListHeader" class="col-sm-offset-3 col-md-4">
            <asp:Label ID="bulletHeader" runat="server" Text="Security Features"></asp:Label>
        </div>
    </div>
    <%--Security features bullets--%>
    <div class="form-group">
        <div id="bulletPoints" class="col-sm-offset-3 col-sm-9">
            <ul class="bulletul">
                <li class="bulletli">DLP (Data Loss Prevention) sensors</li>
                <li class="bulletli">DEP (Data Execution Preventions)</li>
                <li class="bulletli">USB Blocking</li>
                <li class="bulletli">SIEM (Security and Information Event Management)</li>
                <li class="bulletli">Two-Point Verification</li>
            </ul>
        </div>
    </div>
</asp:Content>
