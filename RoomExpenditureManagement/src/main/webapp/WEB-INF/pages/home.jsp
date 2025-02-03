<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Expenditure Management Tracker</title>
<style>
/* Reset styles */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Arial, sans-serif;
}

/* Header styles */
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

/* Title Styling */
header h2 {
    text-transform: uppercase;
    color: black;
    transition: color 0.3s;
}

header h2:hover {
    color: purple;
}

/* Login Button */
header .login-btn {
    background-color: purple;
    color: white;
    padding: 8px 15px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
    text-decoration: none;
}

header .login-btn:hover {
    background-color: darkviolet;
}

/* Navigation Bar */
nav {
    margin-top: 80px;
    background-color: black;
    text-align: center;
    padding: 15px 0;
}

nav a {
    color: white;
    text-decoration: none;
    font-size: 18px;
    margin: 0 20px;
    padding: 10px 15px;
    border-radius: 5px;
    transition: background 0.3s;
}

nav a:hover {
    background-color: gray;
}

/* Content Section */
.main-content {
    text-align: center;
    padding: 50px;
}

.main-content h1 {
    margin-bottom: 20px;
    color: black;
}

/* Footer Section */
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
    <a href="login" class="login-btn">Login</a>
</header>

<!-- Navigation Bar -->
<nav>
    <a href="index.jsp">Home</a>
    <a href="about.jsp">About</a>
    <a href="services.jsp">Services</a>
    <a href="reports.jsp">Reports</a>
    <a href="contact.jsp">Contact</a>
</nav>

<!-- Main Content -->
<div class="main-content">
    <h1>Welcome to Expenditure Management Tracker</h1>
    <p>Manage your expenses efficiently with our easy-to-use tracking system.</p>
</div>

<!-- Footer with Announcements -->
<footer>
    <marquee behavior="scroll" direction="left">🚀 New features coming soon! | 📊 Track your expenses easily! | 🔒 Secure and user-friendly interface!</marquee>
</footer>

</body>
</html>












































<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style >
header{
width: 100%;
height: 80px;
border: 2px solid black;
background-color: silver;
top: 0px;
left: 0px;
right: 0px;
justify-content: center;
position: absolute;
}
header h2{
display: flex;
margin-left: 37%;
position: relative;
text-transform: uppercase;
}
header h2:hover {
	color: purple;
	
}
</style>
</head>
<body>
<header>
<h2>Expenditure Management Tracker</h2>
</header>
<nav>

</nav>
<footer>
<marquee>

</marquee>
</footer>
</body>
</html> --%>