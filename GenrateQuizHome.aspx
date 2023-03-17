<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="GenrateQuizHome.aspx.cs" Inherits="Quiz_Intech.GenrateQuizHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div class="container">
      <div class="row">
         <div class="col-md-8 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Create A Quick Quiz</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Quiz Name: </label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="QuizNameTextBox" runat="server" placeholder="Name your Quiz"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Quiz Name" ControlToValidate="QuizNameTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                        </div>
                     </div>

                     <div class="col-md-6">
                        <label>Date:&nbsp;&nbsp;&nbsp; </label>
                         &nbsp;<asp:TextBox ID="Date" runat="server" Height="23px" ReadOnly="True" Width="308px"></asp:TextBox>
                         <%-- <div class="form-group">--%>                           <%--<asp:TextBox CssClass="form-control" ID="DateTextBox" runat="server" placeholder="Select Date" TextMode="Date"></asp:TextBox>--%>                           <%-- <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="DateTextBox" ErrorMessage="Choose today's date or onwards" MaximumValue="2050-02-10" MinimumValue="2023-03-10" ForeColor="Red"></asp:RangeValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Date is Required" ControlToValidate="DateTextBox" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                        </div>
                     </div>
                  </div>
                 
                  <div class="row">
                     <div class="col-md-6">
                        <label>Quiz Marks: </label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="QuizMarksTextBox" runat="server" placeholder="Enter Total Marks"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Marks Are Required" ControlToValidate="QuizMarksTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Duration: </label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="DurationTextBox" runat="server" placeholder="Enter Duration" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Quiz Duration Required" ControlToValidate="DurationTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                         
                     </div>
                      <div class="col-md-4">
                          <center>
                              <div class="cards">
                    
                                  </div>
                          </center>
                      </div> 
                 </div>
                 </div>                                                                          
              
                  <div class="row">
                     <div class="col">
                        <div class="form-group">

                           <asp:Button class="btn btn-success btn-block btn-lg" ID="CreateQuizButton" runat="server" Text="Create Quiz" OnClick="CreateQuizButton_Click1"  />
                        </div>
                     </div>
                  </div>
             
        </div>    
               </div>
      </div>
  
    <style>
        body 
        {
    background-color: #ffffff;
}

.heading {
    font-size: 20px;
    font-weight: 600;
    color: #3D5AFE;
}

.line1 {
    color: #000;
    font-size: 12px;
}

.line2 {
    color: #000;
    font-size: 12px;
}

.line3 {
    color: #000;
    font-size: 12px;
}

.cards {
    transition: all 0.2s ease;
    cursor: pointer;
    color: #000000;
}
.cards:hover {
        box-shadow: 5px 6px 6px 2px #e9ecef;
        transform: scale(1.1);
    }

    </style>
  
   <asp:Label ID="Label1" runat="server" Text="Select Subject : "></asp:Label>
<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="SubjectName" DataValueField="SubjectID">
</asp:DropDownList>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SurveyPortalConnectionString2 %>" SelectCommand="SELECT * FROM [Subject]"></asp:SqlDataSource>
<br />
<br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="QuiestionID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </ItemTemplate>
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
     <asp:Button CssClass="btn btn-success" ID="AddQuestionButton" runat="server" Text="Add Question" OnClick="AddQuestionButton_Click1" />
    <br />
     <br />
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <center>    
        </center>
     <br />
     <br />
     <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
     <br />
     <br />
     <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
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
     <br />
     <br />
     <br />
     </asp:Content>
