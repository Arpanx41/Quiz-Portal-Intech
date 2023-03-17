<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CreateQuestionBank.aspx.cs" Inherits="Quiz_Intech.CreateQuestionBank" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            display: block;
            width: 100%;
            height: calc(1.5em + .75rem + 2px);
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #495057;
            background-clip: padding-box;
            border-radius: .25rem;
            transition: none;
            border: 1px solid #ced4da;
            background-color: #fff;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">   
   
    <div class="container">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>ADD Subject</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" <img src="images/light-books-school-207636.jpg"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-12">
                        <label>Add Subject</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="auto-style1" ID="TextBox1" runat="server" placeholder="Subject Name"></asp:TextBox><br>
                               <asp:RequiredFieldValidator ID="SubjectRF" runat="server" ErrorMessage="Enter New Subject" ValidationGroup="AddSub" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                             
                     <asp:Button class="btn btn-success" ID="addsub" runat="server" Text="Add" OnClick="Button1_Click"/>

                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Back to Home</a><br>
            <br>
         </div>
              
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Subjects:</h4>
                              
                        </center>
                     </div>
                   &nbsp;
                      <asp:GridView ID="GridView1" CssClass="bg-faded table" runat="server">
                      </asp:GridView>
                      <br />
                      <br />
                      <br />
                   </div>
                   
                </div>
              </div>
            </div>
      </div>
             <!-- Creating Questions -->  
             <div>
                 <center>
                    <asp:Label ID="Label2" runat="server" Text="Select Subject : "></asp:Label>
<asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="SubjectName" DataValueField="SubjectID">
</asp:DropDownList>
    
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SurveyPortalConnectionString2 %>" SelectCommand="SELECT * FROM [Subject]"></asp:SqlDataSource>
                     <asp:TextBox CssClass="form-control" ID="SubjectQuestion"  runat="server" placeholder="Add Question" ></asp:TextBox>
                     <asp:RequiredFieldValidator ID="SubjectQuestionRF" runat="server" ErrorMessage="Please Enter Question" ControlToValidate="SubjectQuestion" Display="Dynamic" ForeColor="#33CC33" ValidationGroup="AddQ"></asp:RequiredFieldValidator>
                     
                     <asp:TextBox CssClass="form-control" ID="Option1" runat="server" placeholder="Enter Option1" ></asp:TextBox>
                     <asp:RequiredFieldValidator ID="Option1RF" runat="server" ErrorMessage="Please Enter Option1" ControlToValidate="Option1" Display="Dynamic" ForeColor="#33CC33" ValidationGroup="AddQ"></asp:RequiredFieldValidator>
                    
                     <asp:TextBox CssClass="form-control" ID="Option2" runat="server" placeholder="Enter Option2" ></asp:TextBox>
                     <asp:RequiredFieldValidator  ID="Option2RF" runat="server" ErrorMessage="Please Enter Option2" ControlToValidate="Option2" Display="Dynamic" ForeColor="#33CC33" ValidationGroup="AddQ"></asp:RequiredFieldValidator>
                     
                     <asp:TextBox CssClass="form-control" ID="Option3" runat="server" placeholder="Enter Option3" ></asp:TextBox>
                     <asp:RequiredFieldValidator ID="Option3RF" runat="server" ErrorMessage="Please Enter Option3" ControlToValidate="Option3" Display="Dynamic" ForeColor="#33CC33" ValidationGroup="AddQ"></asp:RequiredFieldValidator>
                     
                     <asp:TextBox CssClass="form-control" ID="Option4" runat="server" placeholder="Enter Option4"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="Option4RF" runat="server" ErrorMessage="Please Enter Option4" ControlToValidate="Option4" Display="Dynamic" ForeColor="#33CC33" ValidationGroup="AddQ"></asp:RequiredFieldValidator>
                     
                     <asp:TextBox CssClass="form-control" ID="Answer" runat="server" placeholder="Enter Correct Answer" ></asp:TextBox>
                     <asp:RequiredFieldValidator ID="AnswerRF" runat="server" ErrorMessage="Please Enter Answer" ControlToValidate="Answer" ForeColor="#009933" ValidationGroup="AddQ"></asp:RequiredFieldValidator>
                     
                     <asp:Button class="btn btn-success" ID="QuestionButton" runat="server" Text="Submit" OnClick="SubmitButtonClick"/>

                     <br />
                     <br />
                      <br />
                     <br />
                     </center>
                     </div>
        

         <asp:Label ID="Label1" runat="server" Text="Select Subject : "></asp:Label>
<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="SubjectName" DataValueField="SubjectID">
</asp:DropDownList>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SurveyPortalConnectionString2 %>" SelectCommand="SELECT * FROM [Subject]"></asp:SqlDataSource>
<br />
<br />
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="QuiestionID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField>
            </asp:TemplateField>
            <asp:BoundField DataField="QuiestionID" HeaderText="QuiestionID" SortExpression="QuiestionID" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="Question" HeaderText="Question" SortExpression="Question" />
            <asp:BoundField DataField="Option1" HeaderText="Option1" SortExpression="Option1" />
            <asp:BoundField DataField="Option2" HeaderText="Option2" SortExpression="Option2" />
            <asp:BoundField DataField="Option3" HeaderText="Option3" SortExpression="Option3" />
            <asp:BoundField DataField="Option4" HeaderText="Option4" SortExpression="Option4" />
            <asp:BoundField DataField="Answer" HeaderText="Answer" SortExpression="Answer" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <EmptyDataTemplate>
            <asp:CheckBox ID="CheckBox1" runat="server" />
        </EmptyDataTemplate>
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SurveyPortalConnectionString %>" SelectCommand="SELECT [QuiestionID], [Question], [Option1], [Option2], [Option3], [Option4], [Answer] FROM [Question] WHERE ([SubjectID] = @SubjectID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="SubjectID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
  

</asp:Content>
