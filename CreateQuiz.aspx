<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CreateQuiz.aspx.cs" Inherits="Quiz_Intech.CreateQuiz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server"> 
    
    <asp:Label ID="Label1" runat="server" Text="Select Subject : "></asp:Label>
<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="SubjectName" DataValueField="SubjectID">
</asp:DropDownList>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Survey_portalConnectionString %>" SelectCommand="SELECT * FROM [Subject]"></asp:SqlDataSource>
<br />
<br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="QuestionID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="QuestionID" HeaderText="QuestionID" SortExpression="QuestionID" />
            <asp:BoundField DataField="Question" HeaderText="Question" SortExpression="Question" />
            <asp:BoundField DataField="Option1" HeaderText="Option1" SortExpression="Option1" />
            <asp:BoundField DataField="Option2" HeaderText="Option2" SortExpression="Option2" />
            <asp:BoundField DataField="Option3" HeaderText="Option3" SortExpression="Option3" />
            <asp:BoundField DataField="Option4" HeaderText="Option4" SortExpression="Option4" />
            <asp:BoundField DataField="Answer" HeaderText="Answer" SortExpression="Answer" />
            <asp:BoundField DataField="Mark" HeaderText="Mark" SortExpression="Mark" />
        </Columns>
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Survey_portalConnectionString %>" SelectCommand="SELECT * FROM [Question] WHERE ([SubjectID] = @SubjectID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="SubjectID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
     <asp:Button CssClass="btn btn-success" ID="AddQuestionButton" runat="server" Text="Add Question" />
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