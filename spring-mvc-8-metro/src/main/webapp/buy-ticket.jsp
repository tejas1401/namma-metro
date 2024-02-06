<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Buy tickets!</title>
    <script type="text/javascript">

      function enableTo() {
        var fromSelect = document.getElementById('from');
        var toSelect = document.getElementById('to');

        if (fromSelect.value !== 'disable') {
            toSelect.disabled = false;
        } else {
            toSelect.disabled = true;
        }
    }
    </script>
    <style>
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
      <button onclick="window.location.href='home.html'">Home</button>
  </nav>
</header>
    <form>
          <label for="from">From:</label>
          <select id="from" name="from" onchange="enableTo()">
          <option value="disable">Select From</option>
          <option value="dasrhalli">Dasrhalli</option>
          <option value="gorguntepalya">Gorguntepalya</option>
          <option value="Jalhalli">Jalhalli</option>
          <option value="mahalakshmi">Mahalakshmi</option>
          <option value="nagasandra">Nagasandra</option>
          <option value="peenya">Peenya</option>
          <option value="rajajinagar">RajajiNagar</option>
          <option value="sandalSoapFactory">Sandal Soap Factory</option>
          <option value="yeshwantpur">Yeshwantpur</option>
          <!-- Add more options as needed -->
          </select>


        <label for="to">To:</label>
          <select id="to" name="to" disabled>
          <option value="">Select To</option>
          <option value="dasrhalli">Dasrhalli</option>
          <option value="gorguntepalya">Gorguntepalya</option>
          <option value="Jalhalli">Jalhalli</option>
          <option value="mahalakshmi">Mahalakshmi</option>
          <option value="nagasandra">Nagasandra</option>
          <option value="peenya">Peenya</option>
          <option value="rajajinagar">RajajiNagar</option>
          <option value="sandalSoapFactory">Sandal Soap Factory</option>
          <option value="yeshwantpur">Yeshwantpur</option>
          <!-- Add more options as needed -->
          </select>

          <label for="payment">From:</label>
          <select id="payment" name="payment">
          <option value="googlePay">Google Pay</option>
          <option value="phonepe">PhonePe</option>
          <option value="credit">Credit card</option>
          <option value="debit">Debit Card</option>
          <!-- Add more options as needed -->
          </select>
          <button  type="submit">Buy</button>
    </form>
<footer>
      <ul class="social-links">
        <li><a href="#" target="_blank">Facebook</a></li>
        <li><a href="#" target="_blank">Twitter</a></li>
        <li><a href="#" target="_blank">Instagram</a></li>
        <!-- Add more social media links as needed -->
      </ul>
    </footer>
</body>
</html>