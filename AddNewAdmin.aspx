<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddNewAdmin.aspx.cs" Inherits="Quiz_Intech.AddNewAdmin" %>
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
                                        <img src="images/admin.png" width="150" />
                                      
                                    </center>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h3>Admin</h3>
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
                                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder ="Enter Name" TextMode="SingleLine"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Name" ControlToValidate="TextBox1" ForeColor="Red" Display="Dynamic" ValidationGroup="AddAdmin"></asp:RequiredFieldValidator>
                                    </div>

                                    <div class="form-group">
                                        <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" placeholder ="Enter Contact Number" TextMode="Phone"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Contact Number" ControlToValidate="TextBox4" ForeColor="Red" Display="Dynamic" ValidationGroup="AddAdmin"></asp:RequiredFieldValidator>
                                    </div>
                               
                                   <div class="form-group">
                                        <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder ="Enter Email-ID" TextMode="Email"></asp:TextBox>
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Email-ID" ControlToValidate="TextBox2" ForeColor="Red" Display="Dynamic" ValidationGroup="AddAdmin"></asp:RequiredFieldValidator>
                                   </div>

                                    <div class="form-group">
                                        <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder ="Enter Password" TextMode="Password"></asp:TextBox>
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Password" ControlToValidate="TextBox2" ForeColor="Red" Display="Dynamic" ValidationGroup="AddAdmin"></asp:RequiredFieldValidator>
                                   </div>

                                    <div class ="form-group">
                                        <asp:Button CssClass="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Add New Admin" ValidationGroup="AddAdmin" OnClick="Button1_Click" />
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
    <br />


</asp:Content>
