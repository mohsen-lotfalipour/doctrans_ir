<%@ Page Title="" Language="C#" MasterPageFile="~/Doctrans.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="doctrans_ir.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



<%--    <div class="alert alert-warning alert-dismissible fade show" role="alert">
        <strong>Holy guacamole!</strong> You should check in on some of those fields below.
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
      <span aria-hidden="true">&times;</span>
  </button>
    </div>--%>


    <div style="text-align: right;">
        <div class="col-lg-4 col-sm-6 col-md-2 col-xs-6">

            <asp:Label ID="Label1" runat="server" Text="ایمیل :"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Width="150px" BackColor="DarkGray" ValidationGroup="1"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ValidationGroup="1"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ValidationGroup="1" ErrorMessage="لطفا آدرس ایمیل را صحیح وارد کنید" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </div>
        <div class="col-lg-4 col-sm-6 col-md-2 col-xs-6">

            <asp:Label ID="Label2" runat="server" Text="رمز عبور :"></asp:Label>

            <asp:TextBox ID="TextBox2" runat="server" Width="150px" BackColor="DarkGray" TextMode="Password" ValidationGroup="1" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ValidationGroup="1"></asp:RequiredFieldValidator>
        </div>
        <div class="col-lg-4 col-sm-6 col-md-2 col-xs-6">
            <asp:Label ID="Label16" runat="server" Text="تکرار رمز عبور :"></asp:Label>
            <asp:TextBox ID="TextBox16" runat="server" Width="150px" BackColor="DarkGray" TextMode="Password" ValidationGroup="1"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox16" ErrorMessage="رمز عبور و تکرار آن یکسان نیست" ForeColor="Red" ValidationGroup="1"></asp:CompareValidator>
        </div>
        <div class="col-lg-4 col-sm-6 col-md-2 col-xs-6">

            <asp:Label ID="Label3" runat="server" Text="نام : "></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" Width="150px" BackColor="DarkGray" ValidationGroup="1"></asp:TextBox>

        </div>
        <div class="col-lg-4 col-sm-6 col-md-2 col-xs-6">

            <asp:Label ID="Label4" runat="server" Text="نام خانوادگی :"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" Width="150px" BackColor="DarkGray" ValidationGroup="1"></asp:TextBox>

        </div>
        <div class="col-lg-4 col-sm-6 col-md-2 col-xs-6">
            <asp:Label ID="Label5" runat="server" Text="تلفن :"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" Width="150px" BackColor="DarkGray" ValidationGroup="1"></asp:TextBox>

        </div>
        <div class="col-lg-4 col-sm-6 col-md-2 col-xs-6">
            <asp:Label ID="Label6" runat="server" Text="همراه : "></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server" Width="150px" BackColor="DarkGray" ValidationGroup="1"></asp:TextBox>

        </div>
        <div class="col-lg-4 col-sm-6 col-md-2 col-xs-6">
            <asp:Label ID="Label7" runat="server" Text="شهر"></asp:Label>
            <asp:TextBox ID="TextBox7" runat="server" Width="150px" BackColor="DarkGray" ValidationGroup="1"></asp:TextBox>
        </div>

        <div class="col-lg-4 col-sm-6 col-md-2 col-xs-6">
            <asp:Label ID="Label8" runat="server" Text="آدرس :"></asp:Label>
            <asp:TextBox ID="TextBox8" runat="server" Width="150px" BackColor="DarkGray" ValidationGroup="1"></asp:TextBox>

        </div>
        <div class="col-lg-4 col-sm-6 col-md-2 col-xs-6">
            <asp:Label ID="Label9" runat="server" Text="کد ملی :"></asp:Label>
            <asp:TextBox ID="TextBox9" runat="server" Width="150px" BackColor="DarkGray" ValidationGroup="1"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox9" ErrorMessage="*" ValidationGroup="1"></asp:RequiredFieldValidator>

        </div>
        <div class="col-lg-4 col-sm-6 col-md-2 col-xs-6">
            <asp:Label ID="Label10" runat="server" Text="رشته :"></asp:Label>
            <asp:TextBox ID="TextBox10" runat="server" Width="150px" BackColor="DarkGray" ValidationGroup="1"></asp:TextBox>

        </div>
        <div class="col-lg-4 col-sm-6 col-md-2 col-xs-6">
            <asp:Label ID="Label11" runat="server" Text="مقطع :"></asp:Label>
            <asp:TextBox ID="TextBox11" runat="server" Width="150px" BackColor="DarkGray" ValidationGroup="1"></asp:TextBox>

        </div>
        <div class="col-lg-4 col-sm-6 col-md-2 col-xs-6">
            <asp:Label ID="Label12" runat="server" Text="جنسیت :"></asp:Label>
            <asp:TextBox ID="TextBox12" runat="server" Width="150px" BackColor="DarkGray" ValidationGroup="1"></asp:TextBox>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem Text="زن" Value="male"></asp:ListItem>
                <asp:ListItem Text="مرد" Value="female" Selected="True"></asp:ListItem>

            </asp:RadioButtonList>
        </div>
        <div class="col-lg-4 col-sm-6 col-md-2 col-xs-6">
            <asp:Label ID="Label13" runat="server" Text="تاریخ تولد : "></asp:Label>
            <asp:TextBox ID="TextBox13" runat="server" Width="150px" BackColor="DarkGray" ValidationGroup="1" CssClass="form-control"></asp:TextBox>

        </div>
        <asp:Label ID="Label14" runat="server" Text="آخرین ورود"></asp:Label>
        <asp:TextBox ID="TextBox14" runat="server" Width="150px" BackColor="DarkGray" ValidationGroup="1"></asp:TextBox>


        </br>
        <asp:Label ID="Label15" runat="server" Text="عکس :"></asp:Label>
        <!-- <asp:TextBox ID="TextBox15" runat="server" Width="150px" BackColor="DarkGray" ValidationGroup="1"></asp:TextBox> -->
        <asp:FileUpload ID="FileUpload1" runat="server" ValidationGroup="1" />

        </br>
        <asp:Button ID="Button1" runat="server" Text="ثبت" OnClick="Button1_Click" ValidationGroup="1" CssClass="btn btn-success" />
        <asp:Button ID="Button2" runat="server" Text="پاک کردن" OnClick="Button2_Click" CssClass="btn btn-danger" />

        <asp:Button ID="Button3" runat="server" Text=" chekc" OnClick="Button3_Click" CssClass="btn btn-info" />


        <asp:Label ID="Label17" runat="server" Text=""></asp:Label>
    </div>



</asp:Content>
