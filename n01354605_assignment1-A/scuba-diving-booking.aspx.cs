using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace n01354605_assignment1_A
{
    public partial class scuba_diving_booking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string cost;
            if (Page.IsPostBack) {
                Page.Validate();
                if (Page.IsValid) {

                    string diver_fname_var = diver_fname.Text.ToString();
                    string diver_lname_var = diver_lname.Text.ToString();
                    string diver_email_var = diver_email.Text.ToString();
                    string diver_mobile_var = diver_mobile.Text.ToString();
                    string diver_gender_var = diver_gender.Text.ToString();
                    string diver_age_var = diver_age.Text.ToString();
                    string booking_location_var = booking_location.Text.ToString();
                    string booking_date_var = booking_date.Text.ToString();
                    string booking_time_var = booking_time.Text.ToString();
                    string diver_state_var = diver_state.Text.ToString();
                    string diver_city_var = diver_city.Text.ToString();
                    string diver_street_address_var = diver_street_address.Text.ToString();
                    string diver_zip_code_var = diver_zip_code.Text.ToString();

                    if (booking_location_var == "Toronto")
                    {
                        cost = "$250";
                    }
                    else if (booking_location_var == "Brampton")
                    {
                        cost = "$230";
                    }
                    else {
                        cost = "$200";
                    }
                    summary_details.InnerHtml = "<h1>" + "Summary" + "</h1>";
                    summary_details.InnerHtml += "First Name:" + diver_fname_var + "<br/>" + "<br/>";
                    summary_details.InnerHtml += "Last Name: " + diver_lname_var + "<br/>" + "<br/>";
                    summary_details.InnerHtml += "Email: " + diver_email_var + "<br/>" + "<br/>";
                    summary_details.InnerHtml += "Mobile No.: " + diver_mobile_var + "<br/>" + "<br/>";
                    summary_details.InnerHtml += "Gender: " + diver_gender_var + "<br>" + "<br/>";
                    summary_details.InnerHtml += "Age: " + diver_age_var + "<br/>" + "<br/>";
                    summary_details.InnerHtml += "Booking Location: " + booking_location_var + "<br/>" + "<br/>";
                    summary_details.InnerHtml += "Booking Date: " + booking_date_var + "<br/>" + "<br/>";
                    summary_details.InnerHtml += "Booking Time: " + booking_time_var + "<br>" + "<br/>";
                    summary_details.InnerHtml += "State: " + diver_state_var + "<br/>" + "<br/>";
                    summary_details.InnerHtml += "City: " + diver_city_var + "<br>" + "<br/>";
                    summary_details.InnerHtml += "Street Address: " + diver_street_address_var + "<br/>" + "<br/>";
                    summary_details.InnerHtml += "Zip Code: " + diver_zip_code_var + "<br/>" + "<br/>";
                    summary_details.InnerHtml += "Total Cost: <b>" + cost + "</b>";

                }
                
            }
        }
    }
}