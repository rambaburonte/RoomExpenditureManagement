<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Add Person</title>
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
      padding: 20px;
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: 100vh;
    }
    .container {
      background: var(--white);
      padding: 30px;
      border-radius: 8px;
      box-shadow: 0 4px 16px rgba(0, 0, 0, 0.1);
      max-width: 600px;
      width: 100%;
    }
    h1 {
      text-align: center;
      margin-bottom: 20px;
      color: var(--primary-color);
    }
    form {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 15px;
    }
    .form-group {
      display: flex;
      flex-direction: column;
    }
    .form-group.full-width {
      grid-column: span 2;
    }
    label {
      margin-bottom: 5px;
      font-weight: bold;
    }
    input, select {
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 4px;
      transition: border-color 0.3s;
    }
    input:focus, select:focus {
      border-color: var(--primary-color);
      outline: none;
    }
    button {
      grid-column: span 2;
      padding: 12px;
      background: var(--primary-color);
      color: var(--white);
      border: none;
      border-radius: 4px;
      font-size: 1rem;
      cursor: pointer;
      transition: background 0.3s ease;
    }
    button:hover {
      background: var(--secondary-color);
    }
    @media (max-width: 600px) {
      form {
        grid-template-columns: 1fr;
      }
      button {
        grid-column: span 1;
      }
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Add Person</h1>
    <form action="savePerson" method="post">
      <!-- Hidden field for ID (optional; used for editing existing records) -->
      <input type="hidden" name="id" value="${person.id}" />
      
      <!-- Person Name -->
      <div class="form-group">
        <label for="name">Name</label>
        <input type="text" id="name" name="name" value="${person.name}" required />
      </div>
      
      <!-- Contact Number -->
      <div class="form-group">
        <label for="phone">Contact Number</label>
        <input type="text" id="phone" name="phone" value="${person.phone}" required />
      </div>
      
      <!-- Email -->
      <div class="form-group">
        <label for="email">Email</label>
        <input type="email" id="email" name="email" value="${person.email}" required />
      </div>
      
      <!-- Current Month -->
      <div class="form-group">
        <label for="currentMonth">Current Month</label>
        <input type="number" id="currentMonth" name="currentMonth" value="${person.currentMonth}" required />
      </div>
      
      <!-- Total Money Invested -->
      <div class="form-group">
        <label for="totalMoney">Total Money Invested</label>
        <input type="number" step="0.01" id="totalMoney" name="totalMoney" value="${person.totalMoney}" required />
      </div>
      
      <!-- Role -->
      <div class="form-group">
        <label for="role">Role</label>
        <select id="role" name="role" required>
          <option value="">Select Role</option>
          <option value="Admin" ${person.role == 'Admin' ? 'selected' : ''}>Admin</option>
          <option value="User" ${person.role == 'User' ? 'selected' : ''}>User</option>
          <!-- Add more roles as needed -->
        </select>
      </div>
      
      <!-- Profile Picture URL -->
      <div class="form-group full-width">
        <label for="profilePic">Profile Picture URL</label>
        <input type="text" id="profilePic" name="profilePic" value="${person.profilePic}" />
      </div>
      
      <!-- Password -->
      <div class="form-group full-width">
        <label for="password">Password</label>
        <input type="password" id="password" name="password" value="${person.password}" required />
      </div>
      
      <!-- Submit Button -->
      <button type="submit">Submit</button>
    </form>
  </div>
</body>
</html>
