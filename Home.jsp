<%-- 
    Document   : Home
    Created on : 10 Mar, 2024, 1:27:44 AM
    Author     : pooja
--%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Banasthali Vidyapith</title>
<style>
  body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    background-image: url('https://www.dststutitraining.com/docs/docfile_13410884.jfif');
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
  }
  header {
    background-color: rgba(51, 51, 51, 0.7);
    color: #fff;
    padding: 10px 20px;
    text-align: center;
  }
  nav {
    background-color: rgba(242, 242, 242, 0.7);
    padding: 10px 20px;
    text-align: center;
  }
  nav a {
    text-decoration: none;
    color: #333;
    padding: 10px 20px;
    transition: background-color 0.0s ease;
  }
  nav a:hover {
    background-color: #dddddd;
  }
  .container {
    padding: 20px;
  }
  .content {
    margin-top: 20px;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
    display: none;
    background-color: rgba(255, 255, 255, 0.8);
  }
  .content.active {
    display: block;
  }
</style>
</head>
<body>
<header>
  <h1>Welcome to Banasthali Vidyapith</h1>
</header>
<nav>
  <a href="#login">SIGN IN</a>
  <a href="#about">About Us</a>
  <a href="#contact">Contact Us</a>
</nav>
<div class="container">
  <div class="content active" id="login">
   
    <form id="loginForm">
      <label for="role">SIGN IN:</label>
      <select id="role" name="role">
        <option value="admin">Admin</option>
        <option value="student">Student</option>
      </select>
      <button type="submit">OK</button>
    </form>
  </div>
  <div class="content" id="about">
    <h2>About Banasthali Vidyapith</h2>
    <p>Banasthali Vidyapith is a deemed university located in Rajasthan, India. It was founded in 1935 by Pandit Hiralal Shastri and Ratan Shastri.</p>
    <p>It offers various undergraduate, postgraduate, and doctoral programs in disciplines like Arts, Science, Commerce, Engineering, and Management.The campus is a sprawling 850 acres, located about 80 kilometres from the capital city of Jaipur, in the Tonk district of Rajasthan, India. The campus has been broadly divided into the school division, the University division and the residential blocks. The residential blocks feature 56 hostels each with the capacity of housing up to 438 students.</p>
  </div>
  <div class="content" id="contact">
    <h2>Contact</h2>
    <p>9352141479</p>
    <p>9410111228</p>
    <p>9352878377</p>
     <p>9352879809</p>
    <p>9783774453</p>
     

    <p>Email:campusplacement@banasthali.in</p>
    <p>iic@banasthali.in</p>admin.bid@banasthali.in </p>
  </div>
</div>

<script>
  document.addEventListener("DOMContentLoaded", function() {
    const loginForm = document.getElementById("loginForm");
    const loginContent = document.getElementById("ok");
    const contactContent = document.getElementById("contact");

    loginForm.addEventListener("submit", function(event) {
      event.preventDefault();
      const role = document.getElementById("role").value;
      // You can add login logic here
      console.log("Logged in as: " + role);
      if (role === 'admin') {
        window.location.href = 'AdminLogin.jsp'; // Redirect to admin homepage
      } else if (role === 'student') {
        window.location.href = 'StudentRegistration.jsp'; // Redirect to student homepage
      }
    });

    document.querySelectorAll("nav a").forEach(function(navLink) {
      navLink.addEventListener("click", function(event) {
        event.preventDefault();
        const targetId = this.getAttribute("href").substring(1);
        document.querySelectorAll(".content").forEach(function(content) {
          content.classList.remove("active");
        });
        document.getElementById(targetId).classList.add("active");
      });
    });
  });
</script>

</body>
</html>

