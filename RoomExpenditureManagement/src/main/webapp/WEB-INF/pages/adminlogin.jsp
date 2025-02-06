<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin Dashboard - Manage All Persons</title>
  <style>
    :root {
      --primary-color: #007bff;
      --secondary-color: #0056b3;
      --light-bg: #f0f4f8;
      --white: #ffffff;
      --dark: #333333;
    }
    /* Reset & Base Styles */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }
    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background: linear-gradient(135deg, var(--light-bg), #d9e2ec);
      color: var(--dark);
      display: flex;
      min-height: 100vh;
    }
    /* Sidebar Navigation */
    .sidebar {
      width: 250px;
      background: var(--primary-color);
      color: var(--white);
      padding: 20px;
      display: flex;
      flex-direction: column;
      position: sticky;
      top: 0;
      height: 100vh;
    }
    .sidebar h2 {
      text-align: center;
      margin-bottom: 20px;
    }
    .sidebar a {
      color: var(--white);
      text-decoration: none;
      margin: 10px 0;
      padding: 10px;
      border-radius: 4px;
      transition: background 0.3s;
    }
    .sidebar a:hover {
      background: var(--secondary-color);
    }
    /* Main Content Area */
    .main-content {
      flex: 1;
      padding: 20px;
      overflow-y: auto;
    }
    header {
      background: var(--white);
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
      padding: 15px 30px;
      position: sticky;
      top: 0;
      z-index: 100;
      display: flex;
      justify-content: space-between;
      align-items: center;
    }
    header h1 {
      font-size: 1.8rem;
      color: var(--dark);
    }
    .profile {
      display: flex;
      align-items: center;
    }
    .profile img {
      width: 50px;
      height: 50px;
      border-radius: 50%;
      margin-right: 10px;
      object-fit: cover;
      border: 2px solid var(--primary-color);
    }
    /* Persons Table */
    .persons-table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 20px;
    }
    .persons-table th,
    .persons-table td {
      padding: 12px 15px;
      border: 1px solid #ddd;
      text-align: left;
    }
    p{
    	color: rgb(135, 64, 194);
    }
    .persons-table th {
      background: var(--primary-color);
      color: var(--white);
    }
    .persons-table tr:nth-child(even) {
      background: #f9f9f9;
    }
    /* Responsive Design */
    @media (max-width: 768px) {
      .sidebar {
        width: 200px;
      }
      header h1 {
        font-size: 1.5rem;
      }
    }
    @media (max-width: 480px) {
      .sidebar {
        display: none;
      }
      .main-content {
        padding: 10px;
      }
      header {
        padding: 10px 15px;
      }
    }
  </style>
</head>
<body>
  <!-- Sidebar Navigation -->
  <div class="sidebar">
    <h2>Admin Dashboard</h2>
    <a href="getAll">Manage Persons</a>
    <a href="viewExpenses">View Expenses</a>
    <a href="addExpense">Add Expense</a>
    <a href="addPerson">Payments</a>
    <a href="reports">Reports</a>
  </div>
  
  <!-- Main Content -->
  <div class="main-content">
    <header>
      <h1>Manage All Persons</h1>
      <div class="profile"><p><a href="editPerson?no=${sessionScope.person.id}">


        <img src="${imgPath}" alt="Admin Profile"></a></p>
        <span>Welcome, ${sessionScope.person.name}!</span>
      </div>
    </header>
    
    <!-- Content Section -->
    <div class="content">
      <p>Below is the list of all persons in the system:</p>
      <table class="persons-table">
        <thead>
          <tr>
            <th>Profile</th>
            <th>Name</th>
            <th>Email</th>
            <th>Contact</th>
            <th>Role</th>
            <th>Edit Person</th>
            <th>delete</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach var="person" items="${persons}">
            <tr>
              <td>
                <img src="${person.profilePic != null ? person.profilePic : 'images/placeholder.png'}" alt="${person.name}" style="width:40px; height:40px; border-radius:50%;">
              </td>
             <td>${person.name}</td>
              <td>${person.email}</td>
              <td>${person.phone}</td>
              <td>${person.role}</td>
              <td><a href="editPerson?no=${person.id }">Edit Person</a></td>
            <td><a href="deletePerson?no=${person.id }" onclick="return confirm('Are You what to delete this record')">delete</a></td>
            </tr>
          </c:forEach>
          <tr>
          <td><a href="addPerson">Add Person</a></td>
          
          
          </tr>
          
        </tbody>
      </table>
      <c:if test="${not empty msg}">
      <p> ${msg } </p>
      
      </c:if>
      
    </div>
  </div>
</body>
</html>
