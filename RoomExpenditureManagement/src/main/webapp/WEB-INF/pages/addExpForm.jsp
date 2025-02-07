<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Expense Tracker</title>
    <style>
        /* General Reset */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background: rgb(113, 163, 193);
            color: #333;
        }

        /* Navigation Bar */
        nav {
            background: rgb(109, 191, 184);
            color: white;
            padding: 20px 40px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        nav h1 {
            margin: 0;
            font-size: 2.5rem;
            font-weight: bold;
        }

        nav ul {
            list-style: none;
            margin: 0;
            padding: 0;
            display: flex;
        }

        nav ul li {
            margin: 0 20px;
        }

        nav ul li a {
            color: white;
            text-decoration: none;
            font-size: 1.2rem;
            padding: 8px 16px;
            border-radius: 8px;
            transition: background-color 0.3s, transform 0.2s;
        }

        nav ul li a:hover {
            background-color: rgba(255, 255, 255, 0.2);
            transform: scale(1.1);
        }

        /* Form Container */
        .container {
            max-width: 520px;
            margin: 90px auto;
            backdrop-filter: blur(15px) saturate(180%);
            background: rgba(255, 255, 255, 0.6);
            padding: 30px;
            border-radius: 20px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
            border: 1px solid rgba(255, 255, 255, 0.2);
        }

        /* Form Heading */
        h1 {
            text-align: center;
            font-size: 2.5rem;
            color: #6200ea;
            margin-bottom: 20px;
            text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.2);
        }

        /* Labels */
        label {
            font-weight: bold;
            margin-bottom: 8px;
            display: block;
            color: #555;
        }

        /* Inputs */
        input, select {
            width: 500px;;
            padding: 10px;
            margin: 10px 0 20px 0;
            border: 1px solid rgba(0, 0, 0, 0.2);
            border-radius: 8px;
            font-size: 1rem;
            background-color: rgba(255, 255, 255, 0.8);
            transition: all 0.3s ease;
        }

        input:hover, select:hover {
            background-color: rgba(255, 255, 255, 1);
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        input:focus, select:focus {
            border-color: #6200ea;
            outline: none;
            box-shadow: 0 0 10px rgba(98, 0, 234, 0.7);
        }

        /* File Input */
        input[type="file"] {
            padding: 8px;
        }

        /* Buttons */
        button {
            width: 100%;
            padding: 15px;
            font-size: 1.2rem;
            color: white;
            background: linear-gradient(90deg, #6200ea, #3700b3);
            border: none;
            border-radius: 12px;
            cursor: pointer;
            transition: transform 0.2s, box-shadow 0.2s;
        }

        button:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 20px rgba(98, 0, 234, 0.3);
        }

        /* Footer */
        footer {
            background: rgb(109, 191, 184);
            color: white;
            text-align: center;
            padding: 15px 0;
            position: fixed;
            bottom: 0;
            width: 100%;
            font-size: 0.9rem;
            box-shadow: 0 -2px 10px rgba(0, 0, 0, 0.2);
        }

        footer p {
            margin: 0;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            nav {
                flex-direction: column;
                align-items: flex-start;
            }

            nav ul {
                flex-direction: column;
                width: 100%;
            }

            nav ul li {
                margin: 10px 0;
            }

            .container {
                padding: 20px;
            }

            button {
                font-size: 1rem;
            }
        }
    </style>
</head>
<body>
    <nav>
        <h1>Expense Tracker</h1>
        <ul>
            <li><a href="#">Home</a></li>
            <li><a href="#">Add Expense</a></li>
            <li><a href="#">View Expenses</a></li>
            <li><a href="#">Profile</a></li>
        </ul>
    </nav>

    <div class="container">
        <h1>Expense Form</h1>
        <form:form  modelAttribute="exp">
            <div>
                <label for="name">Name:</label>
                <form:input path="name" id="name" />
            </div>

            <div>
                <label for="price">Price:</label>
                <form:input path="price" id="price" type="number" step="0.01" />
            </div>

            <div>
                <label for="quantity">Quantity:</label>
                <form:input path="quantity" id="quantity" type="number" />
            </div>

            <div>
                <label for="invoice">Invoice:</label>
                <form:input path="invoice" id="invoice" type="file" />
            </div>

            <div>
                <label for="store">Store:</label>
                <form:input path="store" id="store" />
            </div>

            <div>
                <label for="total">Total:</label>
                <form:input path="total" id="total" type="number" step="0.01" />
            </div>

            <div>
                <label for="pid">Person:</label>
                <form:select path="pid.id" id="pid">
                    <form:options items="${persons}" itemValue="id" itemLabel="name" />
                </form:select>
            </div>
<br><br>
            <div>
                <button type="submit">Save Expense</button>
            </div>
        </form:form>
    </div>

    <footer>
        <p>&copy; 2025 Expense Tracker. Designed with care.</p>
    </footer>
</body>
</html>
