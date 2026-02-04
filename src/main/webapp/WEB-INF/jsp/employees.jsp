<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Employee List</title>
    <style>
        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
        }
        th, td {
            border: 1px solid #333;
            padding: 8px 12px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        h2 {
            text-align: center;
        }
    </style>
</head>
<body>
<h2>List of Employees</h2>
<table>
    <tr>
        <th>ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Email</th>
        <th>Department</th>
        <th>Salary</th>
    </tr>
    <c:forEach var="emp" items="${employees}">
        <tr>
            <td>${emp.id}</td>
            <td>${emp.firstName}</td>
            <td>${emp.lastName}</td>
            <td>${emp.email}</td>
            <td>${emp.department}</td>
            <td>${emp.salary}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
