<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="GenrateQuiz.aspx.cs" Inherits="Quiz_Intech.GenrateQuiz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">     
   <center>
       <button type="button" class="btn btn-primary"
           style  ="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;">
           Start from Scratch
       </button>
       <button type="button" class="btn btn-primary"
           style  ="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;">
           Select Template
       </button>
        
   </center>
</asp:Content>
