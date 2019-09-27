
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

                .error-message {
                    color:aquamarine;
                }

                element.style {
                    color:aquamarine;
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

                .label-style {
                    color: aqua;
                    text-decoration-style:solid;
                }

                body {
                    background-color: #151212;
                    margin: 0;
                }

                .main-heading {
                    text-align:center;
                    color:#8cfffb;
                    text-shadow: 2px 2px #1f1e1e;
                    position: absolute;
                    left: 40%;
                }

                h2 {
                    color:aquamarine;
                }

                p {
                    color:aqua;
                    font-size:20px;
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

                .summary-label {
                    color:azure;
                    font-size:20px;
                }
        </style>
        <title>
            Book
        </title>
    </head>
    <body>     
        <h1 class="main-heading"><u>Coral Scuba Drive</u></h1>
        <asp:Image CssClass="header-bg-image" ID="image" runat="server" ImageUrl="~/reef1.jpg" /> 
        <div class="main-container">
            <h2>Who is eligible to dive?</h2>
            <p>
                If you have always wanted to take scuba diving lessons, experience unparalleled adventure and see the world
                underneath the waves, this is the place it starts. Get your scuba diving certificate with the Coral Scuba
                Dive open water diver course. To sign up, you need to be 15 years old or older.
                You need enough swimming capabilities and want to be suitable in bodily health.
            </p>
            <form id="form1" runat="server"  method="post"><!--action="https://postman-echo.com/post"-->
                <div class="register-container">
                    <h2>Register</h2>
                    <p>Please fill in this form to book your diving session.</p>
                    <hr />
                    <div>
                        <asp:Label ID="label_diver_fname" runat="server" Text="First Name" CssClass="label-style"></asp:Label>
                        <asp:TextBox ID="diver_fname" runat="server" placeholder="First Name"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="error-message" runat="server" EnableClientScript="true"  ErrorMessage="Please enter your first name" ControlToValidate="diver_fname" SetFocusOnError="true" ></asp:RequiredFieldValidator>
                        </div>
                        <div>
                            <asp:Label ID="label_diver_lname" runat="server" Text="Last Name" CssClass="label-style"></asp:Label>
                            <asp:TextBox ID="diver_lname" runat="server" placeholder="Last Name"></asp:TextBox>
                            <asp:RequiredFieldValidator CssClass="error-message" runat="server" EnableClientScript="true"  ErrorMessage="Please enter your last name" ControlToValidate="diver_lname" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        </div>  
                        <div>
                            <asp:Label ID="label_diver_email" runat="server" Text="E-mail" CssClass="label-style"></asp:Label>
                            <asp:TextBox ID="diver_email" runat="server" TextMode="email" placeholder="E-mail"></asp:TextBox>
                            <asp:RegularExpressionValidator CssClass="error-message" runat="server" EnableClientScript="true" ErrorMessage="Please enter valid e-mail address" ControlToValidate="diver_email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" SetFocusOnError="true"></asp:RegularExpressionValidator><br />
                            <!--site:"https://www.codeproject.com/Tips/472728/RegularExpressionValidator-In-ASP-NET"
                                date:26-09-2019
                                purpose:To validate correct e-mail address-->
                            <asp:RequiredFieldValidator CssClass="error-message" runat="server" EnableClientScript="true" ErrorMessage="Please enter your e-mail" ControlToValidate="diver_email" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        </div>
                        <div>
                            <asp:Label ID="label_diver_mobile" runat="server" Text="Mobile No." CssClass="label-style"></asp:Label>
                            <asp:TextBox ID="diver_mobile" runat="server" placeholder="Mobile No"/>
                            <asp:RegularExpressionValidator CssClass="error-message" runat="server" EnableClientScript="true" ErrorMessage="Please enter valid mobile number." ControlToValidate="diver_mobile" ValidationExpression="^([0-9]{10})$" SetFocusOnError="true"></asp:RegularExpressionValidator><br />
                            <!--site:"https://www.codeproject.com/Tips/472728/RegularExpressionValidator-In-ASP-NET"
                                date:26-09-2019
                                purpose:To validate correct mobile number-->
                            <asp:RequiredFieldValidator CssClass="error-message" runat="server" EnableClientScript="true" ErrorMessage="Please enter your mobile number" ControlToValidate="diver_mobile" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        </div>
                        <div>
                            <asp:Label ID="lable_diver_gender" runat="server" Text="Gender" CssClass="label-style"></asp:Label>
                            <div class="radio-inputs">
                                <asp:RadioButtonList ID="diver_gender" runat="server">
                                    <asp:ListItem Text="Male" Value="male"></asp:ListItem>
                                    <asp:ListItem Text="Female" Value="female"></asp:ListItem>
                                </asp:RadioButtonList>  
                               
                            </div>
                             <asp:RequiredFieldValidator CssClass="error-message" runat="server" EnableClientScript="true" ErrorMessage="Please select your gender" ControlToValidate="diver_gender" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        </div>
                        <div>
                            <asp:Label ID="label_diver_age" runat="server" Text="Age(Min:15years & Max:45years)" CssClass="label-style"></asp:Label>
                            <asp:TextBox ID="diver_age" runat="server" placeholder="Age"/>
                            <asp:RangeValidator runat="server" CssClass="error-message" ControlToValidate="diver_age" ErrorMessage="Your are not eligible to dive." MaximumValue="45" MinimumValue="15" SetFocusOnError="true" Type="Integer"></asp:RangeValidator><br />
                            <asp:RequiredFieldValidator CssClass="error-message" runat="server" EnableClientScript="true" ErrorMessage="Please enter your age." ControlToValidate="diver_age" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        </div>
                        <div>
                            <asp:Label ID="label_booking_location" runat="server" Text="Location of dive" CssClass="label-style"></asp:Label>
                            <asp:DropDownList runat="server" ID="booking_location" class="select-inputs">
                                <asp:ListItem Text="" Value="" Selected="True"></asp:ListItem>
                                <asp:ListItem Text="Toronto" Value="toronto"></asp:ListItem>
                                <asp:ListItem Text="Mississauga" Value ="mississauga"></asp:ListItem>
                                <asp:ListItem Text="Brampton" Value="brampton"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator CssClass="error-message" runat="server" EnableClientScript="true" ErrorMessage="Select diving location!" ControlToValidate="booking_location" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        </div>
                        <div>
                            <asp:Label ID="label_booking_date" runat="server" Text="Booking Date" CssClass="label-style"></asp:Label>
                            <asp:TextBox ID="booking_date" runat="server" TextMode="Date"></asp:TextBox>
                            <asp:RequiredFieldValidator CssClass="error-message" runat="server" EnableClientScript="true" ErrorMessage="Select your booking date." ControlToValidate="booking_date" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        </div>
                        <div>
                            <asp:Label ID="label_booking_time" runat="server" Text="Choose time" CssClass="label-style"></asp:Label>
                            <div class="radio-inputs">
                                <asp:RadioButtonList ID="booking_time" runat="server">
                                    <asp:ListItem Text="8:00AM to 9:00AM" Value="800-900"></asp:ListItem>
                                    <asp:ListItem Text="11:00AM to 12:00PM" Value="1100-1200"></asp:ListItem>
                                    <asp:ListItem Text="3:00PM to 4:00PM" Value="1500-1600"></asp:ListItem>
                                    <asp:ListItem Text="5:00PM to 6:00PM" Value="1700-1800"></asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <asp:RequiredFieldValidator CssClass="error-message" runat="server" EnableClientScript="true" ErrorMessage="Please select your booking time" ControlToValidate="booking_time" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        </div>
                        <div>
                            <asp:Label ID="lable_diver_state" runat="server" Text="State" CssClass="label-style"></asp:Label>
                            <asp:TextBox ID="diver_state" runat="server" placeholder="State" ></asp:TextBox>
                            <asp:RequiredFieldValidator CssClass="error-message" runat="server" EnableClientScript="true" ErrorMessage="Please enter your state." ControlToValidate="diver_state" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        </div>
                        <div>
                            <asp:Label ID="label_diver_city" runat="server" Text="City" CssClass="label-style"></asp:Label>
                            <asp:TextBox ID="diver_city" runat="server" placeholder="City"></asp:TextBox>
                            <asp:RequiredFieldValidator CssClass="error-message" runat="server" EnableClientScript="true" ErrorMessage="Please enter your city." ControlToValidate="diver_city" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        </div>
                        <div>
                            <asp:Label ID="label_diver_street_address" runat="server" Text="Street Address" CssClass="label-style"></asp:Label>
                            <asp:TextBox ID="diver_street_address" runat="server" placeholder="Street Address"></asp:TextBox>
                            <asp:RequiredFieldValidator CssClass="error-message" runat="server" EnableClientScript="true" ErrorMessage="Please enter your street address." ControlToValidate="diver_street_address" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        </div>
                        <div>
                            <asp:Label ID="label_diver_zip_code" runat="server" Text="Zip Code" CssClass="label-style"></asp:Label>
                            <asp:TextBox ID="diver_zip_code" runat="server" placeholder="Zip-code"></asp:TextBox>
                            <asp:RequiredFieldValidator CssClass="error-message" runat="server" EnableClientScript="true" ErrorMessage="Please enter your zip code." ControlToValidate="diver_zip_code" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        </div>
                        <div>
                            <asp:CheckBox ID="checkbox_news" runat="server" Text="I want to receive news about Coral Scuba Dive through mail." CssClass="label-style"/>
                        </div>
                        <div>
                            <asp:CheckBox ID="conditions" runat="server" Text="" />
                            <label class="label-style">I agree to the <a href="terms.html" class="terms-conditions-link">terms and conditions</a></label>
                        </div>
                        <asp:Button runat="server" Text="Register" CssClass="register-btn" />
                        <hr/>
                        <asp:ValidationSummary ID="validation_summary" runat="server" DisplayMode="BulletList" ShowSummary="true" HeaderText="Errors:" CssClass="error-message" />
                        <div id="summary_details" class ="summary-label" runat="server">

                        </div> 
                    </div>
            </form>
        </div>
    </body>
</html>
