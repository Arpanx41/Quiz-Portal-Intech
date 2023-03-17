<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CandidateQuizHome.aspx.cs" Inherits="Quiz_Intech.CandidateQuizHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <%--Bootstrap css--%>
    <link href="../Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <%--Datatables css--%>
    <link href="datatables/css/jquery.dataTables.min.css" rel="stylesheet" />
    <%--Fontawsome.css--%>
    <link href="fontawesome/css/all.css" rel="stylesheet" />

    <%--JQuery--%>
    <script src="Bootstrap/js/jquery-3.3.1.slim.min.js"></script>
    <%--Popper js--%>
    <script src="Bootstrap/js/popper.min.js"></script>
    <%--Bootstrap js--%>
    <script src="Bootstrap/js/bootstrap.min.js"></script>

    <style type="text/css">
        .auto-style1 {
            width: 87px;
        }
    </style>

    </head>
<body>
    <form id="form1" runat="server">
       
        <br /><br />
        <asp:Panel ID="Panel1" runat="server">
            <div class="container">
            <div class="row">
                <div class="col-md-6 mx-auto">

                    <div class="card">
                        <div class="card-body">

                            <div class="row">
                                <div class="col">
                                    <asp:Label ID="Label1" runat="server" Text="Enter Quiz Id Given by Admin" Font-Bold="True"></asp:Label>
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
                                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Enter Quiz ID" TextMode="SingleLine" ></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Quiz ID" ControlToValidate="TextBox1" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    </div>

                                    <div class="form-group">
                                        <asp:Button CssClass="btn btn-success" ID="Button1" runat="server" Text="Start Quiz" OnClick="Button1_Click" />
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </asp:Panel>

        <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>

        <asp:Panel ID="Panel2" runat="server" Visible="False">

            <div class="container">
            <div class="row">
                <div class="col-md-12 mx-auto">

                    <div class="card">
                        <div class="card-body">

                            <div class="row">
                                <div class="col">
                                    <%-- <asp:ScriptManager ID="ScriptManager1" runat="server">
                                                                             </asp:ScriptManager>
                                <asp:Timer ID="Timer1" runat="server" Interval="4000" OnTick="Timer1_Tick">
                                           </asp:Timer>
                                    </div>--%>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <asp:DataList ID="DataList1" runat="server" DataKeyField="QuiestionID" DataSourceID="SqlDataSource1">
                                            <ItemTemplate>
                                                &nbsp;<asp:Label ID="QuiestionIDLabel" runat="server" Text='<%# Eval("QuiestionID") %>' Visible="False" />
                                                <br />
                                                &nbsp;<asp:Label ID="AnswerLabel" runat="server" Text='<%# Eval("Answer") %>' Visible="False" />
                                                <br />
                                                <asp:Label ID="QuizIDLabel" runat="server" Text='<%# Eval("QuizID") %>' Visible="False" />
                                                <br />
                                                &nbsp;<asp:Label ID="QuestionIDLabel" runat="server" Text='<%# Eval("QuestionID") %>' Visible="False" />
                                                <br />
                                                &nbsp;<asp:Label ID="Expr1Label" runat="server" Text='<%# Eval("Expr1") %>' Visible="False" />
                                                <br />
                                                &nbsp;<asp:Label ID="QuizNameLabel" runat="server" Text='<%# Eval("QuizName") %>' Visible="False" />
                                                <br />
                                                &nbsp;<asp:Label ID="Total_markLabel" runat="server" Text='<%# Eval("Total_mark") %>' Visible="False" />
                                                <br />
                                                &nbsp;<asp:Label ID="DurationLabel" runat="server" Text='<%# Eval("Duration") %>' Visible="False" />
                                                <br />
                                                &nbsp;<asp:Label ID="AdminIDLabel" runat="server" Text='<%# Eval("AdminID") %>' Visible="False" />
                                                <br />
                                                <br />
                                                <table class="w-100">
                                                    <tr>
                                                        <td colspan="2">
                                                            <asp:Label ID="QuestionLabel" runat="server" Text='<%# Eval("Question") %>' />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:RadioButton ID="RB1" runat="server" GroupName="1" />
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Option1Label" runat="server" Text='<%# Eval("Option1") %>' />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:RadioButton ID="RB2" runat="server" GroupName="1" />
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Option2Label" runat="server" Text='<%# Eval("Option2") %>' />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:RadioButton ID="RB3" runat="server" GroupName="1" />
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Option3Label" runat="server" Text='<%# Eval("Option3") %>' />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:RadioButton ID="RB4" runat="server" GroupName="1" />
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Option4Label" runat="server" Text='<%# Eval("Option4") %>' />
                                                        </td>
                                                    </tr>
                                                </table>
                                                <br />
                                            </ItemTemplate>
                                        </asp:DataList>
                                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SurveyPortalConnectionString %>" SelectCommand="SELECT Question.Question, Question.Option1, Question.Option2, Question.Option3, Question.Option4, Question.QuiestionID, Question.Answer, QuizQuestion.QuizID, QuizQuestion.QuestionID, Quiz.QuizID AS Expr1, Quiz.QuizName, Quiz.Total_mark, Quiz.Duration, Quiz.AdminID FROM Question INNER JOIN QuizQuestion ON Question.QuiestionID = QuizQuestion.QuestionID INNER JOIN Quiz ON QuizQuestion.QuizID = Quiz.QuizID
where Quiz.QuizID = @arpan">
                                     <SelectParameters>
                                         <asp:ControlParameter ControlID="TextBox1" Name="arpan" PropertyName="Text" />
                                     </SelectParameters>
                                 </asp:SqlDataSource>
                                

<%--                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SurveyPortalConnectionString %>" SelectCommand="SELECT QuizQuestion.QuizID, QuizQuestion.QuestionID, Question.Question, Question.QuiestionID, Question.Option1, Question.Option3, Question.Option2, Question.Option4, Question.Answer, Quiz.QuizID AS Expr1, Quiz.Duration, Quiz.Total_mark FROM Question INNER JOIN QuizQuestion ON Question.QuiestionID = QuizQuestion.QuestionID INNER JOIN Quiz ON QuizQuestion.QuizID = Quiz.QuizID WHERE (Quiz.QuizID = @arpan)">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="DropDownList1" Name="arpan" PropertyName="SelectedValue" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                --%>

                                        <br />
                                        <br />
                                        <asp:Button class="btn btn-success" ID="Button2" runat="server" OnClick="Button2_Click" Text="Submit" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        </asp:Panel>
        
        <br /><br />
    </form>
   
</body>
</html>
