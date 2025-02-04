<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Group Members - Expenses Management</title>
  <style>
    /* Reset & Base Styles */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }
    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background: linear-gradient(135deg, #f0f4f8, #d9e2ec);
      color: #333;
      line-height: 1.6;
      min-height: 100vh;
    }
    /* Header with Sticky Navigation */
    header {
      background-color: #fff;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
      padding: 15px 30px;
      position: sticky;
      top: 0;
      z-index: 1000;
    }
    .nav {
      display: flex;
      justify-content: center;
      gap: 20px;
    }
    .nav a {
      text-decoration: none;
      color: #007bff;
      font-weight: 500;
      padding: 8px 12px;
      border-radius: 4px;
      transition: background-color 0.3s ease, color 0.3s ease;
    }
    .nav a:hover {
      background-color: #007bff;
      color: #fff;
    }
    /* Container for Main Content */
    .container {
      max-width: 1200px;
      margin: 40px auto;
      background: #fff;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 4px 16px rgba(0, 0, 0, 0.1);
    }
    /* Profile Section */
    .profile {
      display: flex;
      align-items: center;
      margin-bottom: 20px;
    }
    .profile img {
      width: 80px;
      height: 80px;
      border-radius: 50%;
      border: 3px solid #007bff;
      margin-right: 15px;
      object-fit: cover;
    }
    .profile h2 {
      font-size: 1.8rem;
      color: #333;
    }
    /* Responsive Design */
    @media (max-width: 768px) {
      .nav {
        flex-direction: column;
        align-items: center;
      }
      .container {
        margin: 20px;
        padding: 15px;
      }
    }
  </style>
</head>
<body>
  <header>
    <nav class="nav">
      <a href="mypage">My Page</a>
      <a href="getAllPersons">All Persons</a>
      <a href="#">Total of Expenses</a>
      <a href="#">All Expenses List</a>
      <a href="#">See My Payments</a>
      <a href="#">Add New Payment</a>
    </nav>
  </header>
  
  <div class="container">
    <div class="profile">
      <img alt="Profile" src="${imgPath}">
      <h2>Welcome, Admin</h2>
    </div>
    <p>This is your advanced admin dashboard for the expenses management system. Use the navigation above to manage group members, track expenses, and monitor payments. Enjoy the modern design and responsive layout!</p>
  </div>
</body>
</html>
