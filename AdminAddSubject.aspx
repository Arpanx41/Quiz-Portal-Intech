<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminAddSubject.aspx.cs" Inherits="Quiz_Intech.AdminAddSubject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="container">
      <div class="row">

         <div class="col-md-6">
            <div class="card">
               <div class="card-body">
                  
                   <div class="row">
                     <div class="col">
                        <center>
                           <h4>Add Subject</h4>
                        </center>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col">
                        <hr />
                     </div>
                  </div>

                  <div class="row">
                     <div class="col-md-12">
                        <label>Add Subject</label>
                        
                         <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Subject Name"  ></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Please Enter Subject" ForeColor="Red" ValidationGroup="Sub"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                             
                        <div class="form-group">
                           <div class="input-group">
                                <asp:Button class="btn btn-success btn-primary btn-block" ID="addsub" runat="server" Text="Add" ValidationGroup="Sub" OnClick="addsub_Click"/>
                           </div>
                        </div>

                     </div>
                  </div>
               </div>
            </div>
             </div>

        <div class="col-md-6">
            <div class="card">
               <div class="card-body">

                   <div class="row">
                     <div class="col">
                        <center>
                           <h4>&nbsp;Added Subjects</h4>
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
                            <center>
                            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White" />
                                <EditRowStyle BackColor="#7C6F57" />
                                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#E3EAEB" />
                                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                <SortedAscendingHeaderStyle BackColor="#246B61" />
                                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                <SortedDescendingHeaderStyle BackColor="#15524A" />
                            </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                            </center>
                        </div>
                    </div>

                </div>
            </div>
        </div>

      </div>
    </div>
    <br />
    </asp:Content>