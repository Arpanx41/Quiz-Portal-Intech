<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="QuizCandidate.aspx.cs" Inherits="Quiz_Intech.QuizCandidate1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 42px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12 mx-auto">                     
                <div class="card">
                    <div class="card-body">
                       <div class="row">
                            <div class="col">
                                 <center>
                                    <h2>Quiz</h2>
                                 </center>
                                <br />
                                <center>
                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="QuizID" DataValueField="QuizID" AutoPostBack="True"></asp:DropDownList>
                                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SurveyPortalConnectionString %>" SelectCommand="SELECT [QuizID] FROM [Quiz]"></asp:SqlDataSource>
                                    </center>
                                 
                                 <asp:DataList ID="DataList1" runat="server" DataKeyField="QuizID" DataSourceID="SqlDataSource3">
                                     <ItemTemplate>
                                         <table class="w-100">
                                             <tr>
                                                 <td colspan="2">
                                                     <asp:Label ID="QuestionLabel" runat="server" Text='<%# Eval("Question") %>' />
                                                 </td>
                                             </tr>
                                             <tr>
                                                 <td class="auto-style1">
                                                     <asp:RadioButton ID="RB1" runat="server" GroupName="1" />
                                                 </td>
                                                 <td>
                                                     <asp:Label ID="Option1Label" runat="server" Text='<%# Eval("Option1") %>' />
                                                 </td>
                                             </tr>
                                             <tr>
                                                 <td class="auto-style1">
                                                     <asp:RadioButton ID="RB2" runat="server" GroupName="1" />
                                                 </td>
                                                 <td>
                                                     <asp:Label ID="Option2Label" runat="server" Text='<%# Eval("Option2") %>' />
                                                 </td>
                                             </tr>
                                             <tr>
                                                 <td class="auto-style1">
                                                     <asp:RadioButton ID="RB3" runat="server" GroupName="1" />
                                                 </td>
                                                 <td>
                                                     <asp:Label ID="Option3Label" runat="server" Text='<%# Eval("Option3") %>' />
                                                 </td>
                                             </tr>
                                             <tr>
                                                 <td class="auto-style1">
                                                     <asp:RadioButton ID="RB4" runat="server" GroupName="1" />
                                                 </td>
                                                 <td>
                                                     <asp:Label ID="Option4Label" runat="server" Text='<%# Eval("Option4") %>' />
                                                 </td>
                                             </tr>
                                         </table>
                                         <asp:Label ID="QuestionIDLabel" runat="server" Text='<%# Eval("QuestionID") %>' Visible="False" />
                                         <br />
                                     
                                         <asp:Label ID="QuizIDLabel" runat="server" Text='<%# Eval("QuizID") %>' Visible="False" />
                                         <br />
                                     
                                         &nbsp;<br />&nbsp;&nbsp;<asp:Label ID="QuiestionIDLabel" runat="server" Text='<%# Eval("QuiestionID") %>' Visible="False" />
                                         <br />
                                         &nbsp;<asp:Label ID="AnswerLabel" runat="server" Text='<%# Eval("Answer") %>' Visible="False" />
                                         <br />
                                         &nbsp;<asp:Label ID="Expr1Label" runat="server" Text='<%# Eval("Expr1") %>' Visible="False" />
                                         <br />
                                         &nbsp;<asp:Label ID="DurationLabel" runat="server" Text='<%# Eval("Duration") %>' Visible="False" />
                                         <br />
                                         &nbsp;<asp:Label ID="Total_markLabel" runat="server" Text='<%# Eval("Total_mark") %>' Visible="False" />
                                         <br />
                                     
                                         <br />
                                     </ItemTemplate>
                                 </asp:DataList>
                                

                                 <br />
                                 <br />
                                 <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SurveyPortalConnectionString %>" SelectCommand="SELECT QuizQuestion.QuizID, QuizQuestion.QuestionID, Question.Question, Question.QuiestionID, Question.Option1, Question.Option3, Question.Option2, Question.Option4, Question.Answer, Quiz.QuizID AS Expr1, Quiz.Duration, Quiz.Total_mark FROM Question INNER JOIN QuizQuestion ON Question.QuiestionID = QuizQuestion.QuestionID INNER JOIN Quiz ON QuizQuestion.QuizID = Quiz.QuizID WHERE (Quiz.QuizID = @arpan)">
                                     <SelectParameters>
                                         <asp:ControlParameter ControlID="DropDownList1" Name="arpan" PropertyName="SelectedValue" />
                                     </SelectParameters>
                                 </asp:SqlDataSource>
                                

                                <asp:Button class="btn btn-success btn-block btn-lg" ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
                                 <br />
                                 <br />
                                 <br />
                                 <br />
                                 <br />
                                 <br />
                                
                            </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

</asp:Content>