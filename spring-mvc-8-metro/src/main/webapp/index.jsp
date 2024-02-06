<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Your Website</title>

    <script type="text/javascript">
        function validateUserName() {
         var name = document.getElementById('username').value;
    var nameError = document.getElementById('usernameError');
    var borders = document.getElementById('username');

    if (name.trim() === '' || name.length < 2) {
        nameError.style.display = 'inline';
        borders.style.borderColor = 'red';
        return false;
    } else {
        nameError.style.display = 'none';
        borders.style.borderColor = '';
        return true;
    }
}
function validateEmail(){
    var name = document.getElementById('email').value;
    var nameError = document.getElementById('emailError');
    var borders = document.getElementById('email');
    var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!emailRegex.test(name)) {
        nameError.style.display = 'inline';
        borders.style.borderColor = 'red';
        return false;
    } else {
        nameError.style.display = 'none';
        borders.style.borderColor = '';
        return true;
    }
}
function validatePhone(){
 var phoneNumber = document.getElementById('phone').value;
 var phError = document.getElementById('phoneError');
 var borders = document.getElementById('phone');
 if (!/^\d{10}$/.test(phoneNumber.trim())) {
 phError.style.display = 'inline';
 borders.style.borderColor = 'red';
 return false;
 } else {
 phError.style.display = 'none';
 borders.style.borderColor = '';
 return true;
 }
}
function validateAddress() {
    var feedback=document.getElementById('address').value;
    var feedbackError=document.getElementById('addressError');
    if(feedback.length<25){
        feedbackError.style.display='inline';
        return false;
    }
    else {
        feedbackError.style.display='none';
        return true;
    }
 }
  function validateForm(){
    if(validateUserName() && validateEmail() && validatePhone() && validateAddress()) return true;
    else return false;
 }
    </script>


  <style>
    /* Add your styles here */
    body {
      margin: 0;
            font-family: Arial, sans-serif;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
    }

    header {
      background-color: #333;
      color: white;
      padding: 10px;
      display: flex;
      justify-content: space-between;
      align-items: center;
    }
    nav {
      display: flex;
      gap: 10px;
    }
    button, input {
      padding: 8px;
    }
    input[type="text"] {
      width: 200px;
    }
    /* Button styles */
    button {
      display: inline-block;
      padding: 10px 20px;
      font-size: 16px;
      font-weight: bold;
      text-align: center;
      text-decoration: none;
      cursor: pointer;
      border: none;
      border-radius: 20px;
      transition: background-color 0.3s ease-in-out, color 0.3s ease-in-out;
    }

    /* Default state */
    button {
      background-color: #3498db;
      color: #fff;
    }

    /* Hover state */
    button:hover {
      background-color: #2980b9;
      color: #fff;
    }

    /* Active state */
    button:active {
      background-color: #1f618d;
      color: #fff;
    }
    /* Search bar styles */
input[type="text"] {
  padding: 10px;
  font-size: 16px;
  border: 1px solid #ccc;
  border-radius: 5px;
}

/* Search button styles (optional) */
button.search-btn {
  padding: 10px 15px;
  font-size: 16px;
  border: 1px solid #3498db;
  background-color: #3498db;
  color: #fff;
  border-radius: 20px;
  cursor: pointer;
  transition: background-color 0.3s ease-in-out, color 0.3s ease-in-out;
}

/* Hover state for search button (optional) */
button.search-btn:hover {
  background-color: #2980b9;
  color: #fff;
}
 .logo {
      max-width: 50px; /* Adjust the maximum width as needed */
      border-radius: 5px;
    }
    footer {
          background-color: #333;
          color: white;
          padding: 20px;
          text-align: center;
          margin-top: auto; /* Push the footer to the bottom */
        }
        /* Social media links */
        .social-links {
          list-style: none;
          padding: 0;
          margin: 0;
        }
        .social-links li {
          display: inline-block;
          margin: 0 10px;
        }
        .social-links a {
          color: white;
          text-decoration: none;
          font-size: 20px;
        }
        /* Example: Adjust the color on hover if desired */
        .social-links a:hover {
          color: #3498db;
        }

          form {
      max-width: 500px;
      margin: 20px auto;
      width: 1000px;
     margin:  auto;
     height: auto;
     background-color: whitesmoke;
     font-size: 12px;
     border-radius: 25px;
     border: 2px solid #2b2d42;
     padding: 20px;
     margin-top: 40px;
     margin-bottom: 40px;
  }
  .fields input{
    margin-left: auto;
    margin-right: 0px;
  }
  label {
      display: block;
      margin-top: 12px;
      font-size: 20px;
  }
select {
            width: 300px;
            padding: 10px;
            margin-bottom: 10px;
            border: 2px solid #2b2d42;
            border-radius: 40px;
            box-sizing: border-box;
            display: block;
         color: #333;
         font-size: 16px;
             margin-left: auto;
    margin-right: 0px;
        }
        #buttons {
            padding-top: 10px;
            justify-content: center;
            gap: 7px;
            display: block;
            display: flex;
        }
        .button.rest{
    background-color: #ff0000;
     color: #ffffff; /* White text color */
}
.button.sub{
    background-color: #38b000; /* Blue color */
    color: #ffffff; /* White text color */
}
.button {
    display: inline-block;
    padding: 10px 20px;
    font-size: 16px;
    font-weight: bold;
    text-align: center;
    text-decoration: none;
    cursor: pointer;
    border: none;
    border-radius: 5px;
    transition: background-color 0.1s ease;
}
     input, textarea {
         width: 300px;
         margin-bottom: 10px;
         margin-right: 0px;
         box-sizing: border-box;
         border: 2px solid #2b2d42;
         border-radius: 40px;
         padding: 10px;
         display: block;
         color: #333;
         font-size: 16px;
 }
 textarea{
      border-radius: 20px;
     height: 80px;
    }
.error {
            color: red;
            margin-top: 5px;
            display:none;
}
.fields{
            display: flex;
        }


  </style>
</head>
<body>

  <header>

    <nav>
    <img src="metrologo.png" alt="Logo" class="logo">
      <button onclick="window.location.href='index.jsp'">Home</button>
      <button onclick="window.location.href='login.jsp'">Login</button>
      <button onclick="window.location.href='list.jsp'">Show</button>
      <button onclick="window.location.href='buy-ticket.jsp'">Buy Ticket</button>
    </nav>
    <div>
  <input type="text" placeholder="Search...">
  <button class="search-btn" onclick="performSearch()">Search</button>
</div>
  </header>
  <form   onsubmit="return validateForm()" method="post" action="register" >
    <div>Register with namma metro</div>
      <div class="fields">
        <label for="username">UserName:</label>
        <input type="text" id="username" name="userName" onblur="validateUserName()">
        </div>
        <div id="usernameError" class="error">Enter valid Name</div>

        <div class="fields">
        <label for="phone">Contact Number:</label>
        <input type="text" id="phone" name="phone" onblur="validatePhone()">
        </div>
        <div id="phoneError" class="error">Enter valid contact number</div>


        <div class="fields">
        <label for="email">Email:</label>
        <input type="text" id="email" name="email" onblur="validateEmail()">
        </div>
        <div id="emailError" class="error">Enter valid Email</div>

        <div class="fields">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" onblur="validatePassword()">
                </div>
                <div id="passwordError" class="error">Enter valid password</div>


        <div class="fields">
        <label for="address">Address:</label>
        <input type="text" id="address" name="address" onblur="validateAddress()">
        </div>
        <div id="addressError" class="error">Enter valid Address</div>
        <button  type="submit">Register</button>
        <div>Already a user? click <a href="login.jsp">here</a> to login</div>
  </form>
  <footer>
      <ul class="social-links">
        <li><a href="#" target="_blank">Facebook</a></li>
        <li><a href="#" target="_blank">Twitter</a></li>
        <li><a href="#" target="_blank">Instagram</a></li>
        <!-- Add more social media links as needed -->
      </ul>
    </footer>

  <!-- Your page content goes here -->

</body>
</html>