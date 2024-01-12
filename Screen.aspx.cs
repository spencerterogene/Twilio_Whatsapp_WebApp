using System;
using System.Collections.Generic;
using Twilio;
using Twilio.Rest.Api.V2010.Account;
using Twilio.Types;

namespace Twilio
{
    public partial class Screen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if the page is being loaded for the first time
            if (!IsPostBack)
            {
                // Initialize the Twilio client only once when the page loads
                var accountSid = "ACeccdb5a12fd584706fff3ce35906660f";
                var authToken = "7f677aeb1b7d6468963267538c5bbf88";
                TwilioClient.Init(accountSid, authToken);
            }
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            // Retrieve values from textboxes
            string phoneNumber = phone.Value;
            string messageBody = message.Value;

            // Call the method to send a WhatsApp message when the button is clicked
            SendWhatsAppMessage(phoneNumber, messageBody);
        }

        private void SendWhatsAppMessage(string phoneNumber, string messageBody)
        {
            try
            {
               // 39172824
                var messageOptions = new CreateMessageOptions(
                    new PhoneNumber("whatsapp:+509"+ phoneNumber.Trim())
                );

                // Add the sender and the body of the message
                messageOptions.From = new PhoneNumber("whatsapp:+14155238886");
                messageOptions.Body = messageBody;

                // Send the message
                var twilioMessage = MessageResource.Create(messageOptions);

                // Clear the error label
                ErrorLabel.Text = "";

                // Handle success - you might want to redirect the user or display a success message
                SuccessLabel.Text = $"Message sent successfully!";

                // Clear the textboxes after successful submission
                 phone.Value = "";
                 message.Value = "";
            }
            catch (Exception ex)
            {
                // Handle exceptions, log errors, or display a user-friendly error message
                ErrorLabel.Text = $"Error: {ex.Message}";
            }
        }
    }
}
