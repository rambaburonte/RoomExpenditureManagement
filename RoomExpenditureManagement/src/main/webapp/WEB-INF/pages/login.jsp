<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login - Expenditure Management Tracker</title>
    <style>
        /* Global Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }
        body {
            background-color: #f4f4f4;
        }
        /* Header Styles */
        header {
            width: 100%;
            height: 80px;
            background-color: silver;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 20px;
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            border-bottom: 2px solid black;
        }
        header h2 {
            text-transform: uppercase;
            color: black;
            transition: color 0.3s;
        }
        header h2:hover {
            color: purple;
        }
        header a.home-link {
            background: none;
            border: none;
            color: black;
            text-decoration: none;
            font-size: 16px;
        }
        header a.home-link:hover {
            color: purple;
        }
        /* Container for the Login Form */
        .container {
            width: 100%;
            max-width: 400px;
            margin: 120px auto 80px auto; /* Margin to allow for fixed header/footer */
            background-color: white;
            padding: 30px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            border-radius: 8px;
        }
        .container h2 {
            text-align: center;
            margin-bottom: 20px;
            color: black;
        }
        /* Form Styles */
        form {
            display: flex;
            flex-direction: column;
        }
        form label {
            margin: 10px 0 5px;
            color: #333;
        }
        form input[type="text"],
        form input[type="password"] {
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .actions {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 15px;
        }
        .actions label {
            font-size: 14px;
            color: #555;
        }
        .actions a {
            font-size: 14px;
            color: #555;
            text-decoration: none;
        }
        .actions a:hover {
            color: purple;
        }
        form input[type="submit"] {
            background-color: purple;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background 0.3s;
        }
        form input[type="submit"]:hover {
            background-color: darkviolet;
        }
        /* Extra Links */
        .extra-links {
            text-align: center;
            margin-top: 15px;
        }
        .extra-links a {
            font-size: 14px;
            color: purple;
            text-decoration: none;
        }
        .extra-links a:hover {
            text-decoration: underline;
        }
        /* Footer Styles */
        footer {
            background-color: black;
            color: white;
            padding: 10px;
            text-align: center;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
        footer marquee {
            color: yellow;
            font-size: 16px;
        }
    </style>
</head>
<body>
    <!-- Header Section -->
    <header>
        <h2>Expenditure Management Tracker</h2>
        <a href="./" class="home-link">Home</a>
    </header>
    
    <!-- Login Form Container -->
    <div class="container">
        <h2>User Login</h2>
        <form action="logint" method="post">
            <label for="username">Username or Email</label>
            <input type="text" name="username" id="username" placeholder="Enter your username" required>
            
            <label for="password">Password</label>
            <input type="password" name="password" id="password" placeholder="Enter your password" required>
            
            <div class="actions">
                <label><input type="checkbox" name="remember"> Remember me</label>
                <a href="forgotPassword.jsp">Forgot Password?</a>
            </div>
            
            <input type="submit" value="Login">
        </form>
        <div class="extra-links">
            <p>Don't have an account? <a href="register.jsp">Register here</a></p>
        </div>
    </div>
    
    <!-- Footer Section -->
    <footer>
        <marquee behavior="scroll" direction="left">Welcome to the Expenditure Management Tracker. Secure, easy, and efficient!</marquee>
    </footer>
</body>
</html>
