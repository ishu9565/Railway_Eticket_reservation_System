<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ClientWebApp.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
    <title>Railway Ticket Booking</title>
    <style type="text/css">
        th, td {
            padding: 10px;
            border: 1px solid;
            text-align: center;
        }
        table {
            display: flex;
            justify-content: center;
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
                    <asp:LinkButton class="nav-link" ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Add Train</asp:LinkButton>
                </li>
                </ul>
            </div>
            </div>
        </nav>

        <div class="container" >
            <h2 class="text-center my-3">List of Trains</h2>
            <div class="mx-2 my-2">

                <asp:ListView ID="ListView1" runat="server" DataKeyNames="trainId" DataSourceID="SqlDataSource1">
                    <AlternatingItemTemplate>
                        <tr style="background-color:#FFF8DC;">
                            <td>
                                <asp:Label ID="trainIdLabel" runat="server" Text='<%# Eval("trainId") %>' />
                            </td>
                            <td>
                                <asp:Label ID="trainNoLabel" runat="server" Text='<%# Eval("trainNo") %>' />
                            </td>
                            <td>
                                <asp:Label ID="trainTypeLabel" runat="server" Text='<%# Eval("trainType") %>' />
                            </td>
                            <td>
                                <asp:Label ID="availabilityLabel" runat="server" Text='<%# Eval("availability") %>' />
                            </td>
                            <td>
                                <asp:Label ID="isActiveLabel" runat="server" Text='<%# Eval("isActive") %>' />
                            </td>
                            <td>
                                <asp:Button ID="Button2" runat="server" CommandArgument='<%#Eval("trainId") %>' OnClick="ViewRoutes" Text="View Routes" CssClass="btn btn-outline-primary"/>
                                <asp:Button ID="Button1" runat="server" CommandArgument='<%#Eval("trainId") %>' OnClick="AddRoutes" Text="Add Routes" CssClass="btn btn-outline-primary"/>
                            </td>
                        </tr>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <tr style="background-color:#008A8C;color: #FFFFFF;">
                            <td>
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                            </td>
                            <td>
                                <asp:Label ID="trainIdLabel1" runat="server" Text='<%# Eval("trainId") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="trainNoTextBox" runat="server" Text='<%# Bind("trainNo") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="trainTypeTextBox" runat="server" Text='<%# Bind("trainType") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="availabilityTextBox" runat="server" Text='<%# Bind("availability") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="isActiveTextBox" runat="server" Text='<%# Bind("isActive") %>' />
                            </td>
                            
                        </tr>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                            <tr>
                                <td>No data was returned.</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                            </td>
                            <td>
                                <asp:TextBox ID="trainIdTextBox" runat="server" Text='<%# Bind("trainId") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="trainNoTextBox" runat="server" Text='<%# Bind("trainNo") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="trainTypeTextBox" runat="server" Text='<%# Bind("trainType") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="availabilityTextBox" runat="server" Text='<%# Bind("availability") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="isActiveTextBox" runat="server" Text='<%# Bind("isActive") %>' />
                            </td>
                            <td>
                                <asp:Button ID="Button2" runat="server" CommandArgument='<%#Eval("trainId") %>' OnClick="ViewRoutes" Text="View Routes" CssClass="btn btn-outline-primary"/>
                                <asp:Button ID="Button1" runat="server" CommandArgument='<%#Eval("trainId") %>' OnClick="AddRoutes" Text="Add Routes" CssClass="btn btn-outline-primary"/>
                            </td>
                        </tr>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <tr style="background-color:#DCDCDC;color: #000000;">
                            <td>
                                <asp:Label ID="trainIdLabel" runat="server" Text='<%# Eval("trainId") %>' />
                            </td>
                            <td>
                                <asp:Label ID="trainNoLabel" runat="server" Text='<%# Eval("trainNo") %>' />
                            </td>
                            <td>
                                <asp:Label ID="trainTypeLabel" runat="server" Text='<%# Eval("trainType") %>' />
                            </td>
                            <td>
                                <asp:Label ID="availabilityLabel" runat="server" Text='<%# Eval("availability") %>' />
                            </td>
                            <td>
                                <asp:Label ID="isActiveLabel" runat="server" Text='<%# Eval("isActive") %>' />
                            </td>
                            <td>
                                <asp:Button ID="Button2" runat="server" CommandArgument='<%#Eval("trainId") %>' OnClick="ViewRoutes" Text="View Routes" CssClass="btn btn-outline-primary"/>
                                <asp:Button ID="Button1" runat="server" CommandArgument='<%#Eval("trainId") %>' OnClick="AddRoutes" Text="Add Routes" CssClass="btn btn-outline-primary"/>
                            </td>
                        </tr>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                        <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                            <th runat="server">trainId</th>
                                            <th runat="server">trainNo</th>
                                            <th runat="server">trainType</th>
                                            <th runat="server">availability</th>
                                            <th runat="server">isActive</th>
                                            <th runat="server">Action</th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                    <asp:DataPager ID="DataPager1" runat="server">
                                        <Fields>
                                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                            <asp:NumericPagerField />
                                            <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                        </Fields>
                                    </asp:DataPager>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                            <td>
                                <asp:Label ID="trainIdLabel" runat="server" Text='<%# Eval("trainId") %>' />
                            </td>
                            <td>
                                <asp:Label ID="trainNoLabel" runat="server" Text='<%# Eval("trainNo") %>' />
                            </td>
                            <td>
                                <asp:Label ID="trainTypeLabel" runat="server" Text='<%# Eval("trainType") %>' />
                            </td>
                            <td>
                                <asp:Label ID="availabilityLabel" runat="server" Text='<%# Eval("availability") %>' />
                            </td>
                            <td>
                                <asp:Label ID="isActiveLabel" runat="server" Text='<%# Eval("isActive") %>' />
                            </td>
                            <td>
                                <asp:Button ID="Button2" runat="server" CommandArgument='<%#Eval("trainId") %>' OnClick="ViewRoutes" Text="View Routes" CssClass="btn btn-outline-primary"/>
                                <asp:Button ID="Button1" runat="server" CommandArgument='<%#Eval("trainId") %>' OnClick="AddRoutes" Text="Add Routes" CssClass="btn btn-outline-primary"/>
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RailwayE-TicketReservationSystemConnectionString %>" SelectCommand="SELECT * FROM [Trains]"></asp:SqlDataSource>

            </div>
        </div>

    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
