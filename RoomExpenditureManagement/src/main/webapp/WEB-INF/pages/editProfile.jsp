<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Profile</title>
    <style>
        :root {
            --primary-color: #007bff;
            --secondary-color: #0056b3;
            --light-bg: #f0f4f8;
            --white: #ffffff;
            --dark: #333333;
        }
        body {
            font-family: Arial, sans-serif;
            background: var(--light-bg);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background: var(--white);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 400px;
        }
        h2 {
            text-align: center;
            color: var(--primary-color);
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            font-weight: bold;
        }
        input, select {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        button {
            width: 100%;
            padding: 10px;
            background: var(--primary-color);
            color: var(--white);
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        button:hover {
            background: var(--secondary-color);
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Edit Profile</h2>
        <form action="updateProfile" method="post">
            <input type="hidden" name="id" value="${person.id}" />
            
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" id="name" name="name" value="${person.name}" required>
            </div>
            
            <div class="form-group">
                <label for="phone">Contact Number</label>
                <input type="text" id="phone" name="phone" value="${person.phone}" required>
            </div>
            
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" value="${person.email}" required>
            </div>
            
           
            
            <div class="form-group">
                <label for="profilePic">Profile Picture URL</label>
                <input type="text" id="profilePic" name="profilePic" value="${person.profilePic}" />
            </div>
            
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" value="${person.password}" required>
            </div>
            
            <button type="submit">Update Profile</button>
        </form>
    </div>
</body>
</html>
