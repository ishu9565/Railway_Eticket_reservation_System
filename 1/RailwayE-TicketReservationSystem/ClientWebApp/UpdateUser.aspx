<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateUser.aspx.cs" Inherits="ClientWebApp.UpdateUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
    <title>Railway Ticket Booking</title>
    <style type="text/css">
        .container {
            border: 2px solid;
            border-radius: 15px;
            padding: 50px;
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
        <div class="container col-6 my-3">
            <div class="form-group">
                <label for="userName">User Name</label>
                <asp:TextBox ID="userName" class="form-control" runat="server"></asp:TextBox>
                <asp:requiredfieldvalidator id="r1" runat="server" errormessage="*Required" controltovalidate="userName" ForeColor="Red"></asp:requiredfieldvalidator>
            </div>
             <div class="form-group">
                <label for="firstName">First Name</label>
                 <asp:TextBox ID="firstName" class="form-control" runat="server"></asp:TextBox>
                 <asp:requiredfieldvalidator id="Requiredfieldvalidator1" runat="server" errormessage="*Required" controltovalidate="firstName" ForeColor="Red"></asp:requiredfieldvalidator>
            </div>
             <div class="form-group">
                <label for="lastName">Last Name</label>
                 <asp:TextBox ID="lastName" class="form-control" runat="server"></asp:TextBox>
                 <asp:requiredfieldvalidator id="Requiredfieldvalidator2" runat="server" errormessage="*Required" controltovalidate="lastName" ForeColor="Red"></asp:requiredfieldvalidator>
            </div>
            <div class="form-group">
                <label for="email">Email address</label><br />
                <asp:TextBox ID="email" class="form-control" runat="server"></asp:TextBox>
                <asp:requiredfieldvalidator id="Requiredfieldvalidator3" runat="server" errormessage="*Required" controltovalidate="email" ForeColor="Red"></asp:requiredfieldvalidator>
                <asp:regularexpressionvalidator id="Regularexpressionvalidator1" controltovalidate="email" runat="server" errormessage="Please enter proper email" validationexpression="^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$" ForeColor="Red"></asp:regularexpressionvalidator>            
            </div>
            <div class="form-group">
                <label for="mobileNo">Mobile Number</label><br />
                <asp:TextBox ID="mobileNo" class="form-control" runat="server"></asp:TextBox>
                <asp:requiredfieldvalidator id="Requiredfieldvalidator4" runat="server" errormessage="*Required" controltovalidate="mobileNo" ForeColor="Red"></asp:requiredfieldvalidator>
                <asp:regularexpressionvalidator id="regular1" controltovalidate="mobileNo" runat="server" errormessage="Please enter 10 digit Mobile No." validationexpression="\d{10}" ForeColor="Red"></asp:regularexpressionvalidator>
            </div>
             <div class="form-group">
                <label for="gender">Gender</label>
                 <br />
                 <asp:DropDownList ID="DropDownList1" runat="server">
                     <asp:ListItem>Male</asp:ListItem>
                     <asp:ListItem>Female</asp:ListItem>
                     <asp:ListItem>Other</asp:ListItem>
                 </asp:DropDownList>
                 <br />
                 <asp:requiredfieldvalidator id="Requiredfieldvalidator5" runat="server" errormessage="*Required" controltovalidate="DropDownList1" ForeColor="Red"></asp:requiredfieldvalidator>
            </div>
             <div class="form-group">
                <label for="Address">Address</label>
                 <asp:TextBox ID="address" class="form-control" runat="server"></asp:TextBox>
                 <asp:requiredfieldvalidator id="Requiredfieldvalidator6" runat="server" errormessage="*Required" controltovalidate="address" ForeColor="Red"></asp:requiredfieldvalidator>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <asp:TextBox ID="password" class="form-control" runat="server"></asp:TextBox>
                <asp:requiredfieldvalidator id="Requiredfieldvalidator7" runat="server" errormessage="*Required" controltovalidate="password" ForeColor="Red"></asp:requiredfieldvalidator>
                
            </div>
            <asp:Button ID="Button1" class="btn btn-primary my-2"  runat="server" OnClick="Button1_Click" Text="Update" />
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
