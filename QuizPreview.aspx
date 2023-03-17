<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="QuizPreview.aspx.cs" Inherits="Quiz_Intech.QuizPreview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 96px;
        }
        .auto-style2 {
            width: 15px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <%-- onload="startcountdown(20);" style="background-image:url('Image/obr.jpg');" >   
    
    <script>
    function startCountdown(timeLeft) {
        var interval = setInterval( countdown, 1000 );
        update();

        function countdown() {
            if ( --timeLeft > 0 ) {
                update();
            } else {
                clearInterval( interval );
                update();
              //Show the alert message , change the message as per your need
              alert('Time Up!');
                completed();
            }
        }

        function update() {
            hours   = Math.floor( timeLeft / 3600 );
            minutes = Math.floor( ( timeLeft % 3600 ) / 60 );
            seconds = timeLeft % 60;

            document.getElementById('lbltimer').innerHTML = '' + hours + ':' + minutes + ':' + seconds;
        }

        function completed() {
          //Change the url here
            window.location = "http://www.asp.net";
        }
    }
    </script>--%>
    
    <div class="container">
        <div class="row">
            <div class="col-md-12 mx-auto">                     
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                 <center>
                           <h2>Quiz Preview</h2>
                        </center>
                        <br />

                        <asp:TextBox  class="form-control" ID="TextBox1" runat="server" placeholder="Enter QuizID" ></asp:TextBox>
                        <br />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SurveyPortalConnectionString %>" SelectCommand="SELECT Question.Question, Question.Option1, Question.Option2, Question.Option3, Question.Option4, QuizQuestion.QuizID, QuizQuestion.QuestionID, Quiz.QuizID AS Expr1 FROM Question INNER JOIN QuizQuestion ON Question.QuiestionID = QuizQuestion.QuestionID INNER JOIN Quiz ON QuizQuestion.QuizID = Quiz.QuizID WHERE (Quiz.QuizID = @arpan)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBox1" Name="arpan" PropertyName="Text" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                        <br />
                        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                            <ItemTemplate>
                               
                                <br />
                                <br />
                                <table class="w-100">
                                    <tr>
                                        <td colspan="2">
                                            <asp:Label ID="QuestionLabel" runat="server" Text='<%# Eval("Question") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">
                                            <asp:RadioButton ID="RB1" runat="server" GroupName="1" />
                                        </td>
                                        <td>
                                            <asp:Label ID="Option1Label" runat="server" Text='<%# Eval("Option1") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">
                                            <asp:RadioButton ID="RB2" runat="server" GroupName="1" />
                                        </td>
                                        <td>
                                            <asp:Label ID="Option2Label" runat="server" Text='<%# Eval("Option2") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">
                                            <asp:RadioButton ID="RB3" runat="server" GroupName="1" />
                                        </td>
                                        <td>
                                            <asp:Label ID="Option3Label" runat="server" Text='<%# Eval("Option3") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">
                                            <asp:RadioButton ID="RB4" runat="server" GroupName="1" />
                                        </td>
                                        <td>
                                            <asp:Label ID="Option4Label" runat="server" Text='<%# Eval("Option4") %>' />
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                <br />
                            </ItemTemplate>
                        </asp:DataList>
                        <br />
                        <asp:DataList ID="DataList2" runat="server" DataKeyField="null" DataSourceID="SqlDataSource3">
                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server"></asp:SqlDataSource>
                        <br />

                                <asp:Button class="btn btn-primary align-content-center" ID="ClearResponcesID" runat="server" Text="ClearResponces" OnClick="ClearResponcesID_Click" />

                <asp:Button class="btn btn-success btn-block btn-lg" ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />

                            </div>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    <div class="container-fluid">
       <div class="row">
          <div class="col">
                                            </div>
           </div>
    </div>
</asp:Content>
