<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Person</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #f0f4f8, #d9e2ec);
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 400px;
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            font-weight: bold;
        }
        input[type="text"], input[type="email"], input[type="tel"] {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .btn-container {
            display: flex;
            justify-content: space-between;
        }
        button {
            background: #007bff;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button:hover {
            background: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Edit Person</h2>
        <form:form action="updatePerson" modelAttribute="person" method="post">
            <input type="hidden" name="id" value="${person.id}" />
            
            <div class="form-group">
                <label for="name">Name:</label>
                <form:input path="name" id="name" required="true" />
            </div>
            
            <div class="form-group">
                <label for="email">Email:</label>
                <form:input path="email" id="email" type="email" required="true" />
            </div>
            
            <div class="form-group">
                <label for="phone">Phone:</label>
                <form:input path="phone" id="phone" type="tel" required="true" />
            </div>
            
            <div class="form-group">
                <label for="role">Role:</label>
                <form:input path="role" id="role" required="true" />
            </div>
            
            <div class="btn-container">
                <button type="submit">Save Changes</button>
                <button type="button" onclick="window.location.href='getAll'">Cancel</button>
            </div>
        </form:form>
    </div>
</body>
</html>
