<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminCResult.aspx.cs" Inherits="Quiz_Intech.AdminCResult" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">  
          <br /><br />
    <div class="container">
            <div class="row">
                <div class="col-md-6 mx-auto">

                    <div class="card">
                        <div class="card-body">

                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h3>Result</h3>
                                    </center>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <hr />
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    
                                    <div class="form-group">
                                        <asp:Label ID="Label1" runat="server" Text="Select Quiz :" Font-Bold="True"></asp:Label>
                                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="QuizName" DataValueField="QuizID"></asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SurveyPortalConnectionString %>" SelectCommand="SELECT * FROM [Quiz]"></asp:SqlDataSource>
                                    </div>
                               
                                   <div class="form-group">
                                       <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Enter Candidate ID: "></asp:Label>
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                   </div>

                                    <div class ="form-group">
                                        <asp:Button ID="Button1" runat="server" Text="View Result" CssClass="btn btn-success btn-block btn-lg" OnClick="Button1_Click" />
                                    </div>
                                        
                                    <div class ="form-group">

                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

        </div>


</asp:Content>