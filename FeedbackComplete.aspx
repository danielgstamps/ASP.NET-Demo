<%@ Page Title="Feedback Confirmation" MasterPageFile="Site.master" Language="C#" AutoEventWireup="true" CodeFile="FeedbackComplete.aspx.cs" Inherits="FeedbackComplete" %>

<asp:Content ID="feedbackCompleteContent" ContentPlaceHolderID="bodyPlaceHolder" runat="server">   
    Thank you, your feedback has been received!<br />
    <asp:Label ID="lblContact" runat="server"></asp:Label>
    <br />
    <br />
    <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="Back to Feedback Submission" /> 
</asp:Content>
