<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>All Payments - Team Members</title>
  <style>
    :root {
      --primary-color: #007bff;
      --secondary-color: #0056b3;
      --light-bg: #f0f4f8;
      --white: #ffffff;
      --dark: #333333;
    }
    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background: linear-gradient(135deg, var(--light-bg), #d9e2ec);
      color: var(--dark);
      margin: 0;
      padding: 20px;
    }
    .container {
      max-width: 900px;
      margin: 0 auto;
      background: var(--white);
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 4px 8px rgba(0,0,0,0.2);
    }
    h2 {
      text-align: center;
      margin-bottom: 20px;
      color: var(--primary-color);
    }
    .summary {
      background: var(--primary-color);
      color: var(--white);
      padding: 15px;
      border-radius: 5px;
      margin-bottom: 20px;
      text-align: center;
      font-size: 1.2em;
    }
    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 10px;
    }
    th, td {
      padding: 12px;
      border: 1px solid #ddd;
      text-align: center;
    }
    th {
      background: var(--primary-color);
      color: var(--white);
    }
    tr:nth-child(even) {
      background: #f9f9f9;
    }
    .balance-positive {
      color: green;
    }
    .balance-negative {
      color: red;
    }
    .balance-settled {
      color: blue;
    }
  </style>
</head>
<body>
  <div class="container">
    <h2>All Team Member Payments</h2>
    <div class="summary">
      Total Expenses This Month: ₹${total}
    </div>
    <table>
      <thead>
        <tr>
          <th>Name</th>
          <th>Email</th>
          <th>Total Paid</th>
          <th>Balance (To Pay/Get)</th>
        </tr>
      </thead>
      <tbody>
        <!-- Calculate average payment per member -->
        <c:set var="avgPayment" value="${total / pList.size()}" scope="page" />
        <c:forEach var="person" items="${pList}">
          <tr>
            <td>${person.name}</td>
            <td>${person.email}</td>
            <td>₹${person.totalMoney}</td>
            <td>
              <!-- Calculate balance: positive indicates amount to receive, negative indicates amount to pay -->
              <c:set var="balance" value="${person.totalMoney - avgPayment}" scope="page" />
              <c:choose>
                <c:when test="${balance > 0}">
                  <span class="balance-positive">+₹${balance} (To Receive)</span>
                </c:when>
                <c:when test="${balance < 0}">
                  <span class="balance-negative">₹${-balance} (To Pay)</span>
                </c:when>
                <c:otherwise>
                  <span class="balance-settled">Settled</span>
                </c:otherwise>
              </c:choose>
            </td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
  </div>
</body>
</html>
