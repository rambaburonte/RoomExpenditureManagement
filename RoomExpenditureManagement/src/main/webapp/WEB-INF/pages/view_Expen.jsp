<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Monthly Expenses Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        /* General Styles */
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }
        
        /* Header */
        header {
            background: linear-gradient(90deg, #007bff, #004494);
            color: white;
            padding: 20px;
            text-align: center;
            font-size: 26px;
            font-weight: bold;
            text-transform: uppercase;
        }
        
        /* Navigation */
        nav {
            display: flex;
            justify-content: center;
            background: #0056b3;
            padding: 12px 0;
        }
        nav a {
            color: white;
            text-decoration: none;
            padding: 12px 20px;
            margin: 0 10px;
            font-size: 18px;
            transition: 0.3s;
        }
        nav a:hover {
            background: #004494;
            border-radius: 5px;
        }
        
        /* Container */
        .container {
            max-width: 1000px;
            margin: 50px auto;
            background: white;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.1);
        }
        
        /* Table Styling */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
        }
        th, td {
            padding: 15px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }
        th {
            background: #007bff;
            color: white;
            text-transform: uppercase;
        }
        tr:nth-child(even) {
            background: #f9f9f9;
        }
        tr:hover {
            background: #eef2ff;
            transition: 0.3s;
        }
        .icon {
            margin-right: 5px;
        }
        
        /* Footer */
        footer {
            background: linear-gradient(90deg, #007bff, #004494);
            color: white;
            text-align: center;
            padding: 15px;
            margin-top: 50px;
        }
    </style>
</head>
<body>

<header>Monthly Expenses Dashboard</header>

<nav>
    <a href="#"><i class="fa-solid fa-home icon"></i>Home</a>
    <a href="#"><i class="fa-solid fa-plus icon"></i>Add Expense</a>
    <a href="#"><i class="fa-solid fa-list icon"></i>View Expenses</a>
    <a href="#"><i class="fa-solid fa-chart-line icon"></i>Reports</a>
</nav>

<div class="container">
    <c:choose>
        <c:when test="${!empty rs_list}">
            <h1 style="text-align:center; color:#333;">Expense Records</h1>
            <table>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Invoice</th>
                    <th>Store</th>
                    <th>Total</th>
                    <th>PID</th>
                    <c:if test="${userRole == 'user'}">
                        <th>Actions</th>
                    </c:if>
                </tr>
                <c:forEach var="rs" items="${rs_list}">
                    <tr>
                        <td>${ rs.id }</td>
                        <td>${ rs.name }</td>
                        <td>${ rs.price }</td>
                        <td>${ rs.quantity }</td>
                        <td>${ rs.invoice }</td>
                        <td>${ rs.store }</td>
                        <td>${ rs.total }</td>
                        <td>${ rs.pid }</td>
                        <c:if test="${userRole == 'user'}">
                            <td>
                                <a href="edit?id=${rs.id}">Edit</a> |
                                <a href="delete?id=${rs.id}" onclick="return confirm('Are you sure?');">Delete</a>
                            </td>
                        </c:if>
                    </tr>
                </c:forEach>
            </table>
        </c:when>
        <c:otherwise>
            <h1 style="text-align:center; color:red;">No Data Found!</h1>
        </c:otherwise>
    </c:choose>
</div>
<br><br><br><br><br><br><br>
<footer>
    &copy; 2025 Expense Manager | Designed by CrickecoderAnil
</footer>

</body>
</html>
