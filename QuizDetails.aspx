<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="QuizDetails.aspx.cs" Inherits="Quiz_Intech.QuizDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <center>
     <div class="container">
      <div class="row">
         <div class="col-md-8 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="imgs/generaluser.png"/>
                        </center>
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
                           <asp:TextBox CssClass="form-control" ID="QuizNameTextBoxID" runat="server" placeholder="Name your Quiz"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Select Date</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="DateTextBoxID" runat="server" placeholder="Select Date" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                 
                  <div class="row">
                     <div class="col-md-6">
                        <label>Quiz Marks</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="QuizMarksTextBoxID" runat="server" placeholder="Enter Total Marks"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Duration: </label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="DurationTextBoxID" runat="server" placeholder="Enter Duration" ></asp:TextBox>
                        </div>
                         
                     </div>
                      <div class="col-md-4">
                          <center>
                              <div class="cards">
                              <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="SubjectName" DataValueField="SubjectName" BackColor="White" BorderColor="Black"></asp:CheckBoxList>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Survey_portalConnectionString %>" SelectCommand="SELECT [SubjectName] FROM [Subject]"></asp:SqlDataSource>
                                  </div>
                          </center>
                      </div> */
                 </div>
                 </div>                                                                          
                 </div>
                  <div class="row">
                     <div class="col">
                        <div class="form-group">

                           <asp:Button class="btn btn-success btn-block btn-lg" ID="CreateQuizButton" runat="server" Text="Create Quiz" OnClick="CreateQuizButton_Click" />
                        </div>
                     </div>
                  </div>
               </div>
            </div>
             </div>
            
   </center> 
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
</asp:Content>