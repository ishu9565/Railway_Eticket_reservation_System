<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewUser.aspx.cs" Inherits="ClientWebApp.ViewUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
    <title>Railway Ticket Booking</title>
    <style type="text/css">
        ul#ListView1_itemPlaceholderContainer li {
            padding: 15px;
            list-style: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
            <a class="navbar-brand">Railway Ticket Booking</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <asp:LinkButton ID="LinkButton1" class="nav-link active" runat="server" OnClick="LinkButton1_Click">Home</asp:LinkButton>
                    </li>
                    <li class="nav-item">
                        <asp:LinkButton class="nav-link" ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Add User</asp:LinkButton>
                    </li>
                </ul>
            </div>
            </div>
        </nav>

        <div class="container col-6 my-5">

            <asp:ListView ID="ListView1" runat="server" DataKeyNames="userId" DataSourceID="SqlDataSource1">
                <AlternatingItemTemplate>
                    <li style="background-color: #FFF8DC;">userId:
                        <asp:Label ID="userIdLabel" runat="server" Text='<%# Eval("userId") %>' />
                        <br />
                        userName:
                        <asp:Label ID="userNameLabel" runat="server" Text='<%# Eval("userName") %>' />
                        <br />
                        firstName:
                        <asp:Label ID="firstNameLabel" runat="server" Text='<%# Eval("firstName") %>' />
                        <br />
                        lastName:
                        <asp:Label ID="lastNameLabel" runat="server" Text='<%# Eval("lastName") %>' />
                        <br />
                        email:
                        <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                        <br />
                        mobileNo:
                        <asp:Label ID="mobileNoLabel" runat="server" Text='<%# Eval("mobileNo") %>' />
                        <br />
                        gender:
                        <asp:Label ID="genderLabel" runat="server" Text='<%# Eval("gender") %>' />
                        <br />
                        address:
                        <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
                        <br />
                        password:
                        <asp:Label ID="passwordLabel" runat="server" Text='<%# Eval("password") %>' />
                        <br />
                        isActive:
                        <asp:Label ID="isActiveLabel" runat="server" Text='<%# Eval("isActive") %>' />
                        <br />
                        cretedAt:
                        <asp:Label ID="cretedAtLabel" runat="server" Text='<%# Eval("cretedAt") %>' />
                        <br />
                    </li>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <li style="background-color: #008A8C;color: #FFFFFF;">userId:
                        <asp:Label ID="userIdLabel1" runat="server" Text='<%# Eval("userId") %>' />
                        <br />
                        userName:
                        <asp:TextBox ID="userNameTextBox" runat="server" Text='<%# Bind("userName") %>' />
                        <br />
                        firstName:
                        <asp:TextBox ID="firstNameTextBox" runat="server" Text='<%# Bind("firstName") %>' />
                        <br />
                        lastName:
                        <asp:TextBox ID="lastNameTextBox" runat="server" Text='<%# Bind("lastName") %>' />
                        <br />
                        email:
                        <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                        <br />
                        mobileNo:
                        <asp:TextBox ID="mobileNoTextBox" runat="server" Text='<%# Bind("mobileNo") %>' />
                        <br />
                        gender:
                        <asp:TextBox ID="genderTextBox" runat="server" Text='<%# Bind("gender") %>' />
                        <br />
                        address:
                        <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                        <br />
                        password:
                        <asp:TextBox ID="passwordTextBox" runat="server" Text='<%# Bind("password") %>' />
                        <br />
                        isActive:
                        <asp:TextBox ID="isActiveTextBox" runat="server" Text='<%# Bind("isActive") %>' />
                        <br />
                        cretedAt:
                        <asp:TextBox ID="cretedAtTextBox" runat="server" Text='<%# Bind("cretedAt") %>' />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </li>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    No data was returned.
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <li style="">userId:
                        <asp:TextBox ID="userIdTextBox" runat="server" Text='<%# Bind("userId") %>' />
                        <br />userName:
                        <asp:TextBox ID="userNameTextBox" runat="server" Text='<%# Bind("userName") %>' />
                        <br />firstName:
                        <asp:TextBox ID="firstNameTextBox" runat="server" Text='<%# Bind("firstName") %>' />
                        <br />lastName:
                        <asp:TextBox ID="lastNameTextBox" runat="server" Text='<%# Bind("lastName") %>' />
                        <br />email:
                        <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                        <br />mobileNo:
                        <asp:TextBox ID="mobileNoTextBox" runat="server" Text='<%# Bind("mobileNo") %>' />
                        <br />gender:
                        <asp:TextBox ID="genderTextBox" runat="server" Text='<%# Bind("gender") %>' />
                        <br />address:
                        <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                        <br />password:
                        <asp:TextBox ID="passwordTextBox" runat="server" Text='<%# Bind("password") %>' />
                        <br />isActive:
                        <asp:TextBox ID="isActiveTextBox" runat="server" Text='<%# Bind("isActive") %>' />
                        <br />cretedAt:
                        <asp:TextBox ID="cretedAtTextBox" runat="server" Text='<%# Bind("cretedAt") %>' />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </li>
                </InsertItemTemplate>
                <ItemSeparatorTemplate>
                <br />
                </ItemSeparatorTemplate>
                <ItemTemplate>
                    <li style="background-color: #DCDCDC;color: #000000;">userId:
                        <asp:Label ID="userIdLabel" runat="server" Text='<%# Eval("userId") %>' />
                        <br />
                        userName:
                        <asp:Label ID="userNameLabel" runat="server" Text='<%# Eval("userName") %>' />
                        <br />
                        firstName:
                        <asp:Label ID="firstNameLabel" runat="server" Text='<%# Eval("firstName") %>' />
                        <br />
                        lastName:
                        <asp:Label ID="lastNameLabel" runat="server" Text='<%# Eval("lastName") %>' />
                        <br />
                        email:
                        <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                        <br />
                        mobileNo:
                        <asp:Label ID="mobileNoLabel" runat="server" Text='<%# Eval("mobileNo") %>' />
                        <br />
                        gender:
                        <asp:Label ID="genderLabel" runat="server" Text='<%# Eval("gender") %>' />
                        <br />
                        address:
                        <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
                        <br />
                        password:
                        <asp:Label ID="passwordLabel" runat="server" Text='<%# Eval("password") %>' />
                        <br />
                        isActive:
                        <asp:Label ID="isActiveLabel" runat="server" Text='<%# Eval("isActive") %>' />
                        <br />
                        cretedAt:
                        <asp:Label ID="cretedAtLabel" runat="server" Text='<%# Eval("cretedAt") %>' />
                        <br />
                    </li>
                </ItemTemplate>
                <LayoutTemplate>
                    <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                        <li runat="server" id="itemPlaceholder" />
                    </ul>
                    <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">userId:
                        <asp:Label ID="userIdLabel" runat="server" Text='<%# Eval("userId") %>' />
                        <br />
                        userName:
                        <asp:Label ID="userNameLabel" runat="server" Text='<%# Eval("userName") %>' />
                        <br />
                        firstName:
                        <asp:Label ID="firstNameLabel" runat="server" Text='<%# Eval("firstName") %>' />
                        <br />
                        lastName:
                        <asp:Label ID="lastNameLabel" runat="server" Text='<%# Eval("lastName") %>' />
                        <br />
                        email:
                        <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                        <br />
                        mobileNo:
                        <asp:Label ID="mobileNoLabel" runat="server" Text='<%# Eval("mobileNo") %>' />
                        <br />
                        gender:
                        <asp:Label ID="genderLabel" runat="server" Text='<%# Eval("gender") %>' />
                        <br />
                        address:
                        <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
                        <br />
                        password:
                        <asp:Label ID="passwordLabel" runat="server" Text='<%# Eval("password") %>' />
                        <br />
                        isActive:
                        <asp:Label ID="isActiveLabel" runat="server" Text='<%# Eval("isActive") %>' />
                        <br />
                        cretedAt:
                        <asp:Label ID="cretedAtLabel" runat="server" Text='<%# Eval("cretedAt") %>' />
                        <br />
                    </li>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RailwayE-TicketReservationSystemConnectionString %>" SelectCommand="SELECT * FROM [Users] WHERE ([userId] = @userId)">
                <SelectParameters>
                    <asp:SessionParameter Name="userId" SessionField="uid" Type="Object" />
                </SelectParameters>
            </asp:SqlDataSource>

        </div>

    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
