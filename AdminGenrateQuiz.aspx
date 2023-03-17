<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminGenrateQuiz.aspx.cs" Inherits="Quiz_Intech.AdminGenrateQuiz" %>
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
                                    <h3>Create a Quiz</h3>
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
                                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Quiz Name" TextMode="SingleLine"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Quiz Name" ControlToValidate="TextBox1" ForeColor="Red" Display="Dynamic" ValidationGroup="Quiz"></asp:RequiredFieldValidator>
                                </div>

                                <div class="form-group">
                                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Enter Mark" TextMode="Number"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Quiz Mark" ControlToValidate="TextBox2" ForeColor="Red" Display="Dynamic" ValidationGroup="Quiz"></asp:RequiredFieldValidator>
                                </div>

                                <div class="form-group">
                                    <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder="Enter Quiz Duration" TextMode="Time"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Quiz Duration" ControlToValidate="TextBox3" ForeColor="Red" Display="Dynamic" ValidationGroup="Quiz"></asp:RequiredFieldValidator>
                                </div>

                                <div class="form-group">
                                    <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <asp:Button CssClass="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Create Quiz" ValidationGroup="Quiz" OnClick="Button1_Click" />
                                </div>

                                <div class="form-group">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <style>
        body {
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

    <br />
    <br />

    <div class="container">
        <div class="row">
            <div class="col-md-12 mx-auto">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h5>Select Subject</h5>
                                    <%--<asp:Label runat="server" Text="Select Subject : "></asp:Label>--%>
                                    <asp:DropDownList runat="server" DataSourceID="SqlDataSource1" DataTextField="SubjectName" DataValueField="SubjectID" ID="DropDownList1" AutoPostBack="True" CssClass="mt-0"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SurveyPortalConnectionString %>" SelectCommand="SELECT * FROM [Subject]"></asp:SqlDataSource>

                                    <div class="row">
                                        <div class="col">
                                            <hr />
                                        </div>
                                    </div>

                                    <br />

                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="QuiestionID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:CheckBox ID="CheckBox1" runat="server" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="QuiestionID" HeaderText="QuiestionID" InsertVisible="False" ReadOnly="True" SortExpression="QuiestionID" />
                                            <asp:BoundField DataField="Question" HeaderText="Question" SortExpression="Question" />
                                            <asp:BoundField DataField="Option1" HeaderText="Option1" SortExpression="Option1" />
                                            <asp:BoundField DataField="Option2" HeaderText="Option2" SortExpression="Option2" />
                                            <asp:BoundField DataField="Option3" HeaderText="Option3" SortExpression="Option3" />
                                            <asp:BoundField DataField="Option4" HeaderText="Option4" SortExpression="Option4" />
                                            <asp:BoundField DataField="Answer" HeaderText="Answer" SortExpression="Answer" />
                                            <asp:BoundField DataField="Mark" HeaderText="Mark" SortExpression="Mark" />
                                        </Columns>
                                        <EditRowStyle BackColor="#999999" />
                                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                    </asp:GridView>
                                </center>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SurveyPortalConnectionString %>" SelectCommand="SELECT * FROM [Question] WHERE ([SubjectID] = @SubjectID)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList1" Name="SubjectID" PropertyName="SelectedValue" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>
                        </div>

                        <br />

                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <center>
                                        <asp:Button CssClass="btn btn-success" ID="Button2" runat="server" Text="Add Question in Quiz" OnClick="Button2_Click" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Select Question from Above" ControlToValidate="TextBox1" ForeColor="Red" ValidationGroup="Quiz"></asp:RequiredFieldValidator>

                                        <asp:Button CssClass="btn btn-success" ID="Button3" runat="server" Text="Quiz Preview" OnClick="Button3_Click" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="First, Genrate the Quiz" ForeColor="Red" ValidationGroup="Quiz" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                                    </center>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>
    </div>

    <br />
    <br />
</asp:Content>