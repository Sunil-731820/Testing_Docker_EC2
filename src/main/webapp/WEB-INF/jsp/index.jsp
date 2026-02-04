<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User List</title>
    
</head>
<body>
    <h2>List of Users</h2>
    <div style="font-weight:bold;">
    Styling is Done for Bolding The Text
</div>

    
    <table border="1" cellpadding="5" cellspacing="0">
        <tr>
            <th>ID</th>
            <th>First Name</th>
            <th>Last Name</th>
        </tr>
        <c:forEach var="user" items="${users}">
            <tr>
                <td>${user.id}</td>
                <td>${user.firstName}</td>
                <td>${user.lastName}</td>
            </tr>
        </c:forEach>

	<h3>if you want to see the data of the mongoDb You just click on below button </h3>
	<h2>Welcome to Employee Management</h2>

    <!-- Button that navigates to employees list -->
    <form action="employees" method="get">
        <button type="submit">View Employees</button>
    </form>
	        
    </table>
</body>
</html>
