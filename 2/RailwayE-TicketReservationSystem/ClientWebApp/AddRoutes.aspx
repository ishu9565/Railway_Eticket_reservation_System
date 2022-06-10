<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddRoutes.aspx.cs" Inherits="ClientWebApp.AddRoutes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
    <title>Railway Ticket Booking</title>
    <style type="text/css">
        label {
            font-weight: bold;
        }
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
                    <asp:LinkButton ID="LinkButton1" class="nav-link active" runat="server" OnClick="LinkButton1_Click" CausesValidation="False">Home</asp:LinkButton>
                </li>
                <li class="nav-item">
                    <asp:LinkButton class="nav-link" ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" CausesValidation="False">Add Train</asp:LinkButton>
                </li>
                </ul>
            </div>
            </div>
        </nav>

        <div class="container col-6 my-3">
            <div class="form-group">
                <label for="from">From</label>
                <asp:TextBox ID="from" class="form-control" runat="server"></asp:TextBox>
                <asp:requiredfieldvalidator id="r1" runat="server" errormessage="*Required" controltovalidate="from" ForeColor="Red"></asp:requiredfieldvalidator>
            </div>
             <div class="form-group">
                <label for="sTime">Start Time</label>
                 <asp:TextBox ID="sTime" class="form-control"  type="time" runat="server"></asp:TextBox>
                 <asp:requiredfieldvalidator id="Requiredfieldvalidator1" runat="server" errormessage="*Required"  controltovalidate="sTime" ForeColor="Red"></asp:requiredfieldvalidator>
            </div>
            <div class="form-group">
                <label for="to">To</label>
                <asp:TextBox ID="to" class="form-control" runat="server"></asp:TextBox>
                <asp:requiredfieldvalidator id="Requiredfieldvalidator8" runat="server" errormessage="*Required" controltovalidate="to" ForeColor="Red"></asp:requiredfieldvalidator>
            </div>
             <div class="form-group">
                <label for="eTime">End Time</label>
                 <asp:TextBox ID="eTime" class="form-control" type="time" runat="server"></asp:TextBox>
                 <asp:requiredfieldvalidator id="Requiredfieldvalidator9" runat="server" errormessage="*Required" controltovalidate="eTime" ForeColor="Red"></asp:requiredfieldvalidator>
            </div>
            <div class="form-group">
                <label for="price">Price</label><br />
                <asp:TextBox ID="price" class="form-control" runat="server"></asp:TextBox>
                <asp:requiredfieldvalidator id="Requiredfieldvalidator4" runat="server" errormessage="*Required" controltovalidate="price" ForeColor="Red"></asp:requiredfieldvalidator>
                <asp:regularexpressionvalidator id="regular1" controltovalidate="price" runat="server" errormessage="Please enter Digits" validationexpression="^[1-9]\d*$" ForeColor="Red"></asp:regularexpressionvalidator>
            </div>
             
            <asp:Button ID="Button1" class="btn btn-primary my-2" runat="server" Text="Submit" OnClick="Button1_Click" />

        </div>

    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
