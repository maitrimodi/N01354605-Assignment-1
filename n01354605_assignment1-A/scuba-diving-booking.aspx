<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="scuba-diving-booking.aspx.cs" Inherits="n01354605_assignment1_A.scuba_diving_booking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        
        <style>
            * {
                box-sizing: border-box;
            }

            .register-container {
                padding: 16px;
            }

            input[type=text],
            input[type=email],
            input[type=number],
            input[type=date],
            .radio-inputs,
            .select-inputs {
                width: 100%;
                padding: 15px;
                margin: 5px 0 22px 0;
                display: block;
                border: none;
                background: #f1f1f1;
            }


            label {
                color: aqua;
            }

            body {
                background-color: #151212;
                margin: 0;
            }

            h1 {
                color:#8cfffb;
                text-shadow: 2px 2px #1f1e1e;
                position: absolute;
                left: 40%;
            }

            .main-container {
                width: 70%;
                margin: auto;
            }

            .terms-conditions-link {
                color:aquamarine;
            }

            .header-bg-image {
                height:550px;
                width:100%;
                margin:auto;
                display:block;
            }

            .register-btn {
                margin-top:30px;
                padding:5px;
            }

            .radio-inputs td label {
                color: black;
            }
        </style>
        <title>
            Book
        </title>
    </head> 
    <body>
        <center>     
            <h1><u>Coral Scuba Dive</u></h1>
        </center>
        <asp:Image CssClass="header-bg-image" ID="image" runat="server" ImageUrl="~/reef1.jpg" /> 
        <div class="main-container">
            <h2 style="color:aquamarine">Who is eligible to dive?</h2>
            <p style="color:aqua; font-size:20px">
                If you have always wanted to take scuba diving lessons, experience unparalleled adventure and see the world
                underneath the waves, this is the place it starts. Get your scuba diving certificate with the Coral Scuba
                Dive open water diver course. To sign up, you need to be 15 years old or older.
                You need enough swimming capabilities and want to be suitable in bodily health.
            </p>
        <form id="form1" runat="server" action="https://postman-echo.com/post" method="post">
            <div class="register-container">
                    <h2 style="color:aquamarine">Register</h2>
                    <p style="color:aqua; font-size:20px">Please fill in this form to book your diving session.</p>
                    <hr/>
                    <div>
                        <label for="fname"><b>First Name</b></label>
                        <asp:TextBox ID="fname" runat="server" placeholder="First Name" required="true"></asp:TextBox>
                    </div>
                    <div>
                        <label for="lname"><b>Last Name</b></label>
                        <asp:TextBox ID="lname" runat="server" placeholder="Last Name"  required="true"></asp:TextBox>
                    </div>
                    <div>
                        <label for="email"><b>E-mail</b></label>
                        <asp:TextBox ID="email" runat="server" TextMode="email" placeholder="E-mail"  required="true"></asp:TextBox>
                    </div>
                    <div>
                        <label for="mobile"><b>Mobile No.</b></label>
                        <asp:TextBox ID="mobile" runat="server" TextMode="number" placeholder="Mobile No"  required="true" />
                    </div>
                    <div>
                        <label for="gender"><b>Gender</b></label>
                        <div class="radio-inputs">
                            <asp:RadioButtonList ID="gender" runat="server">
                                <asp:ListItem Text="Male" Value="male"></asp:ListItem>
                                <asp:ListItem Text="Female" Value="female"></asp:ListItem>
                            </asp:RadioButtonList> 
                        </div>
                    </div>
                    <div>
                        <label for="birthdate"><b>Date of Birth</b></label>
                        <asp:TextBox ID="bday" runat="server" TextMode="Date" required="true" />
                    </div>
                    <div>
                        <label for="location"><b>Location of dive</b></label>
                        <asp:DropDownList runat="server" ID="location" class="select-inputs">
                            <asp:ListItem Text="Toronto" Value="toronto"></asp:ListItem>
                            <asp:ListItem Text="Mississauga" Value ="mississauga"></asp:ListItem>
                            <asp:ListItem Text="Brampton" Value="brampton"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div>
                        <label for="date_of_booking"><b>Booking Date</b></label>
                        <asp:TextBox ID="booking_date" runat="server" TextMode="Date" required="true"></asp:TextBox>
                    </div>
                    <div>
                        <label for="time"><b>Choose time</b></label>
                        <div class="radio-inputs">
                            <asp:RadioButtonList ID="time" runat="server">
                                <asp:ListItem Text="8:00AM to 9:00AM" Value="8-9"></asp:ListItem>
                                <asp:ListItem Text="11:00AM to 12:00PM" Value="11-12"></asp:ListItem>
                                <asp:ListItem Text="3:00PM to 4:00PM" Value="3-4"></asp:ListItem>
                                <asp:ListItem Text="5:00PM to 6:00PM" Value="5-6"></asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>
                    <div>
                        <label for="state"><b>State</b></label>
                        <asp:TextBox ID="state" runat="server" placeholder="State" required="true"></asp:TextBox>
                    </div>
                    <div>
                        <label for="city"><b>City</b></label>
                        <asp:TextBox ID="city" runat="server" placeholder="City" required="true"></asp:TextBox>
                    </div>
                    <div>
                        <label for="street"><b>Street Address</b></label>
                        <asp:TextBox ID="street" runat="server" placeholder="Street Address" required="true"></asp:TextBox>
                    </div>
                    <div>
                        <label for="zip"><b>Zip Code</b></label>
                        <asp:TextBox ID="zip" runat="server" placeholder="Zip-code" required="true"></asp:TextBox>
                    </div>
                    <div>
                        <asp:CheckBoxList ID="news" runat="server">
                            <asp:ListItem Text="I want to receive news about Coral Scuba Dive through mail." Value="I want to receive news about Coral Scuba Dive through mail."></asp:ListItem>
                        </asp:CheckBoxList>
                    </div>
                    <div>
                        <asp:CheckBox ID="conditions" runat="server" Text="" />
                        <label>I agree to the <a href="terms.html" class="terms-conditions-link">terms and conditions</a></label>
                    </div>

                    <asp:Button runat="server" Text="Register" CssClass="register-btn" />
                    <hr/>
                </div>
            </form>
        </div>
        
    </body>
</html>

