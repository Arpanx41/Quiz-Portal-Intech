<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminAddQuestion.aspx.cs" Inherits="Quiz_Intech.AdminAddQuestion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server"> 
    <div class="container">
      <div class="row">

          <div class="col-md-7 mx-auto">
            <div class="card">
               <div class="card-body">

                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Add Question</h4>
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
                            <div class="form-group">
                               <asp:DropDownList ID="SubjectDropDown" runat="server"  DataSourceID="SqlDataSource1" DataTextField="SubjectName" DataValueField="SubjectID" AutoPostBack="True" ></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SurveyPortalConnectionString %>" SelectCommand="SELECT * FROM [Subject]"></asp:SqlDataSource>
                            </div>
                            </center>
                        


                   <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="SubjectQuestion"  runat="server" placeholder="Add Question" ></asp:TextBox>
                     <asp:RequiredFieldValidator ID="SubjectQuestionRF" runat="server" ErrorMessage="Please Enter Question" ControlToValidate="SubjectQuestion" Display="Dynamic" ForeColor="Red" ValidationGroup="Que"></asp:RequiredFieldValidator>   
                  </div>

                   <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="Option1" runat="server" placeholder="Enter Option1" ></asp:TextBox>
                     <asp:RequiredFieldValidator ID="Option1RF" runat="server" ErrorMessage="Please Enter Option1" ControlToValidate="Option1" Display="Dynamic" ForeColor="Red" ValidationGroup="Que"></asp:RequiredFieldValidator>
                  </div>
                   
                   <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="Option2" runat="server" placeholder="Enter Option2" ></asp:TextBox>
                     <asp:RequiredFieldValidator  ID="Option2RF" runat="server" ErrorMessage="Please Enter Option2" ControlToValidate="Option2" Display="Dynamic" ForeColor="Red" ValidationGroup="Que"></asp:RequiredFieldValidator>
                  </div>

                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="Option3" runat="server" placeholder="Enter Option3" ></asp:TextBox>
                     <asp:RequiredFieldValidator ID="Option3RF" runat="server" ErrorMessage="Please Enter Option3" ControlToValidate="Option3" Display="Dynamic" ForeColor="Red" ValidationGroup="Que"></asp:RequiredFieldValidator>
                  </div>

                  
                     <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="Option4" runat="server" placeholder="Enter Option4"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="Option4RF" runat="server" ErrorMessage="Please Enter Option4" ControlToValidate="Option4" Display="Dynamic" ForeColor="Red" ValidationGroup="Que"></asp:RequiredFieldValidator>
                  </div>

                   
                     <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="Answer" runat="server" placeholder="Enter Correct Answer" ></asp:TextBox>
                     <asp:RequiredFieldValidator ID="AnswerRF" runat="server" ErrorMessage="Please Enter Answer" ControlToValidate="Answer" ForeColor="Red" Display="Dynamic" ValidationGroup="Que"></asp:RequiredFieldValidator>
                  </div>

                   <div class="form-group">
                       <asp:Button class="btn btn-success btn-primary btn-block" ID="QuestionButton" runat="server" Text="Submit" ValidationGroup="Que" OnClick="QuestionButton_Click"/>
                  </div>


             </div>
         </div>
           
      </div>
   </div>
             </div>

      </div>
    </div>

        </asp:Content>