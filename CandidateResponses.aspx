<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CandidateResponses.aspx.cs" Inherits="Quiz_Intech.CandidateResponses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <br />
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Candidate Responses</h3>
                                </center>
                                </div>
                            </div>
                         <div class="row">
                            <div class="col">
                                <center>
                                    <asp:DropDownList ID="CandidateDropDownID" runat="server" DataSourceID="SqlDataSource1" ></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SurveyPortalConnectionString %>" SelectCommand="SELECT [CandidateID] FROM [Candidate]"></asp:SqlDataSource>
                                    </center>

                                
                                <div class="row">
                                    <div class="col">
                                        <hr />
                                    </div>
                                </div>


                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SurveyPortalConnectionString %>" SelectCommand="SELECT * FROM [Response] WHERE ([CandidateID] = @CandidateID)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="CandidateDropDownID" Name="CandidateID" PropertyName="SelectedValue" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <br />
                                <br />
                                
                                <%--<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SurveyPortalConnectionString %>" SelectCommand="SELECT Candidate.CandidateID AS Expr1, Candidate.Name, Question.Question, Question.Answer, Response.QuestionID AS Expr4, Response.QuizID AS Expr5, Response.QuizID, Response.QuestionID, Response.CandidateID, Response.CandidateAnswer, Response.Score, Response.CandidateID AS Expr2, Response.CandidateAnswer AS Expr3, Response.Score AS Expr6, Subject.SubjectID, Subject.SubjectName, Subject.AdminID, QuizQuestion.QuizID AS Expr8, QuizQuestion.QuestionID AS Expr9, Quiz.QuizName, Quiz.AdminID AS Expr7, Quiz.Total_mark FROM QuizQuestion INNER JOIN Question ON QuizQuestion.QuestionID = Question.QuiestionID INNER JOIN Quiz ON QuizQuestion.QuizID = Quiz.QuizID INNER JOIN Response ON QuizQuestion.QuizID = Response.QuizID AND QuizQuestion.QuestionID = Response.QuestionID INNER JOIN Candidate ON Response.CandidateID = Candidate.CandidateID INNER JOIN Subject ON Question.SubjectID = Subject.SubjectID WHERE (Response.CandidateID = @arpan)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="CandidateDropDownID" Name="arpan" PropertyName="SelectedValue" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                --%><asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource3">
                                    <ItemTemplate>
                                        CandidateID:
                                        <asp:Label ID="CandidateIDLabel" runat="server" Text='<%# Eval("CandidateID") %>' />
                                        <br />
                                        Name:
                                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                        <br />
                                        EmailID:
                                        <asp:Label ID="EmailIDLabel" runat="server" Text='<%# Eval("EmailID") %>' />
                                        <br />
                                        Password:
                                        <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                                        <br />
                                        Question:
                                        <asp:Label ID="QuestionLabel" runat="server" Text='<%# Eval("Question") %>' />
                                        <br />
                                        Answer:
                                        <asp:Label ID="AnswerLabel" runat="server" Text='<%# Eval("Answer") %>' />
                                        <br />
                                        Expr1:
                                        <asp:Label ID="Expr1Label" runat="server" Text='<%# Eval("Expr1") %>' />
                                        <br />
                                        Mark:
                                        <asp:Label ID="MarkLabel" runat="server" Text='<%# Eval("Mark") %>' />
                                        <br />
                                        SubjectID:
                                        <asp:Label ID="SubjectIDLabel" runat="server" Text='<%# Eval("SubjectID") %>' />
                                        <br />
                                        SubjectName:
                                        <asp:Label ID="SubjectNameLabel" runat="server" Text='<%# Eval("SubjectName") %>' />
                                        <br />
                                        AdminID:
                                        <asp:Label ID="AdminIDLabel" runat="server" Text='<%# Eval("AdminID") %>' />
                                        <br />
                                        QuizID:
                                        <asp:Label ID="QuizIDLabel" runat="server" Text='<%# Eval("QuizID") %>' />
                                        <br />
                                        QuestionID:
                                        <asp:Label ID="QuestionIDLabel" runat="server" Text='<%# Eval("QuestionID") %>' />
                                        <br />
                                        Expr2:
                                        <asp:Label ID="Expr2Label" runat="server" Text='<%# Eval("Expr2") %>' />
                                        <br />
                                        CandidateAnswer:
                                        <asp:Label ID="CandidateAnswerLabel" runat="server" Text='<%# Eval("CandidateAnswer") %>' />
                                        <br />
                                        Score:
                                        <asp:Label ID="ScoreLabel" runat="server" Text='<%# Eval("Score") %>' />
                                        <br />
                                        Expr3:
                                        <asp:Label ID="Expr3Label" runat="server" Text='<%# Eval("Expr3") %>' />
                                        <br />
                                        Expr4:
                                        <asp:Label ID="Expr4Label" runat="server" Text='<%# Eval("Expr4") %>' />
                                        <br />
<br />
                                    </ItemTemplate>
                                </asp:DataList>


                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SurveyPortalConnectionString %>" SelectCommand="SELECT Candidate.CandidateID, Candidate.Name, Candidate.EmailID, Candidate.Password, Question.Question, Question.Answer, Question.SubjectID AS Expr1, Question.Mark, Subject.SubjectID, Subject.SubjectName, Subject.AdminID, Response.QuizID, Response.QuestionID, Response.CandidateID AS Expr2, Response.CandidateAnswer, Response.Score, QuizQuestion.QuizID AS Expr3, QuizQuestion.QuestionID AS Expr4 FROM QuizQuestion INNER JOIN Question ON QuizQuestion.QuestionID = Question.QuiestionID INNER JOIN Quiz ON QuizQuestion.QuizID = Quiz.QuizID INNER JOIN Response ON QuizQuestion.QuizID = Response.QuizID AND QuizQuestion.QuestionID = Response.QuestionID INNER JOIN Candidate ON Response.CandidateID = Candidate.CandidateID INNER JOIN Subject ON Question.SubjectID = Subject.SubjectID WHERE (Response.CandidateID = @arpan)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="CandidateDropDownID" Name="arpan" PropertyName="SelectedValue" />
                                    </SelectParameters>
                                </asp:SqlDataSource>


                                </div>
                             </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
     </asp:Content>
