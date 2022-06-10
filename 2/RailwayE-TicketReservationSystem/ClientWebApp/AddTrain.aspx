<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddTrain.aspx.cs" Inherits="ClientWebApp.AddTrain" %>

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
                </ul>
            </div>
            </div>
        </nav>

        <div class="container col-6 my-3">
            <div class="form-group">
                <label for="trainNo">Train No</label>
                <asp:TextBox ID="trainNo" class="form-control" runat="server"></asp:TextBox>
                <asp:requiredfieldvalidator id="r1" runat="server" errormessage="*Required" controltovalidate="trainNo" ForeColor="Red"></asp:requiredfieldvalidator>
                <asp:regularexpressionvalidator id="Regularexpressionvalidator1" controltovalidate="trainNo" runat="server" errormessage="Please enter 6 length number" validationexpression="\d{6}" ForeColor="Red"></asp:regularexpressionvalidator>
            </div>
            <div class="form-group">
                <label for="trainType">Train Type</label>
                 <br />
                 <asp:DropDownList ID="DropDownList2" runat="server">
                     <asp:ListItem>SL</asp:ListItem>
                     <asp:ListItem>2S</asp:ListItem>
                     <asp:ListItem>1A</asp:ListItem>
                     <asp:ListItem>2A</asp:ListItem>
                 </asp:DropDownList>
                 <br />
                 <asp:requiredfieldvalidator id="Requiredfieldvalidator1" runat="server" errormessage="*Required" controltovalidate="DropDownList2" ForeColor="Red"></asp:requiredfieldvalidator>
            </div>
             <div class="form-group">
                <label for="availability">Availability</label>
                 <asp:TextBox ID="availability" class="form-control" runat="server"></asp:TextBox>
                 <asp:requiredfieldvalidator id="Requiredfieldvalidator2" runat="server" errormessage="*Required" controltovalidate="availability" ForeColor="Red"></asp:requiredfieldvalidator>
                 <asp:regularexpressionvalidator id="regular1" controltovalidate="availability" runat="server" errormessage="Please enter Digits" validationexpression="-?[0-9]{0,10}" ForeColor="Red"></asp:regularexpressionvalidator>
            </div>
            
            <asp:Button ID="Button1" class="btn btn-primary my-2" runat="server" Text="Submit" OnClick="Button1_Click" />

        </div>

    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
