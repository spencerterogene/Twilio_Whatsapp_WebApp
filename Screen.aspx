<%@ Page
    Language="C#"
    AutoEventWireup="true"
    CodeBehind="Screen.aspx.cs"
    Inherits="Twilio.Screen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Twilio_Whatsapp_WebApp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>    <style type="text/css">
   

        #form1 {
            margin: 0 auto; /* Center the form horizontally */
            width: 480px; /* Set a maximum width for the form */
        }

        #message {
            height: 84px;
            width: 456px;
        }

        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            background-color: #f0f0f0;
            align-items:center;
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: space-between;
            min-height: 100vh;
        }

        .content {
            flex-grow: 1;
        }

        footer {
            background-color: #333;
            color: white;
            padding: 20px;
            text-align: center;
        }

            footer p {
                margin: 0;
                font-size: 14px;
            }

            footer a {
                color: #fff;
                text-decoration: none;
                font-weight: bold;
                width:150px
            }
    </style>
</head>
<body>



    <form id="form1" runat="server">
<div class="container">
       <h2>Welcome to Whatsapp Sender</h2>
       
    <br />
       <div class="mb-3">
  <label for="phone" class="form-label">Phone</label>
  <input type="tel" class="form-control" ID="phone" name="phone" runat="server" placeholder="5555-5555" required>
</div>

 <div class="mb-3">
  <label for="message" class="form-label">Message</label>
  <textarea class="form-control" ID="message" name="message" runat="server" rows="3" required></textarea>
     <br />
     <asp:Button ID="Button1" runat="server"  class="btn btn-success" Text="Send" OnClick="SubmitButton_Click" />
        <br />
                 <asp:Label ID="SuccessLabel" runat="server" ForeColor="Green" />
      <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red" />


</div>
</div>
 

     


        <footer>
            <p>Designed with <span style="color: red;">&#10084;</span> by Spencer Terogene</p>
        </footer>
    </form>
</body>
</html>
