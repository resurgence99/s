<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Shopping Mall</title>
	<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<style>
	.navbar-dark .navbar-nav .nav-link {
    color: rgba(255,255,255,1);
	}
</style>
</head>
<body style="background: #f6f8e8;">
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			<div style="font-weight:bold; margin-right:50px;">
				 <h2 class="navbar-brand">SHOPPING MALL</h2>
			</div>
			<ul class="navbar-nav">
				<li><a href="home.jsp"
					class="nav-link">Home</a></li>
			</ul>
			<ul class="navbar-nav">
				<li><a href="customerIndex.jsp"
					class="nav-link">Customer</a></li>
			</ul>
			<ul class="navbar-nav">
				<li><a href="employeeIndex.jsp"
					class="nav-link">Employee</a></li>
			</ul>
			<ul class="navbar-nav">
				<li><a href="itemIndex.jsp"
					class="nav-link">Item</a></li>
			</ul>
			<ul class="navbar-nav">
				<li><a href="mallIndex.jsp"
					class="nav-link">Mall</a></li>
			</ul>
			<ul class="navbar-nav">
				<li><a href="shopIndex.jsp"
					class="nav-link">Shop</a></li>
			</ul>
			<ul class="navbar-nav">
				<li><a href="ownerIndex.jsp"
					class="nav-link">Owner</a></li>
			</ul>
			<ul class="navbar-nav navbar-collapse justify-content-end">
				<li><a href="index.jsp"
					class="nav-link">Logout</a></li>
			</ul>
		</nav>
	</header>
	<center>
        <h4 style="font-family: Arial, Helvetica, sans-serif; margin-top: 2%;">
		<div class="container">
			<a href="employee?action=list" class="btn btn-info">Display All Employees</a>
		</div>       	
        </h4>
        <hr>
	</center>
    <div align="center">
		<c:if test="${employee != null}">
			<form action="employee?action=update" method="post">
        </c:if>
        <c:if test="${employee == null}">
			<form action="employee?action=insert" method="post">
        </c:if>
        <table border="1" cellpadding="5">
            	<h2>
            		<c:if test="${employee != null}">
            			Edit Employee
            		</c:if>
            		<c:if test="${employee == null}">
            			Add New Employee
            		</c:if>
            	</h2>
				<br>
        		<c:if test="${employee != null}">
        			<input type="hidden" name="id" value="<c:out value='${employee.id}' />" />
        		</c:if>            
            <tr>
                <th>Employee Name </th>
                <td>
                	<input type="text" name="name" size="45"
                			value="<c:out value='${employee.name}' />"
                		/>
                </td>
            </tr>
            <tr>
                <th>Date of Birth </th>
                <td>
                	<input type="date" name="college" size="45"
                			value="<c:out value='${employee.college}' />"
                	/>
                </td>
            </tr>
            <tr>
                <th>Salary (₹)</th>
                <td>
                	<input type="text" name="roll" size="45"
                			value="<c:out value='${employee.roll}' />"
                	/>
                </td>
            </tr>
            <tr>
                <th>Address </th>
                <td>
                	<input type="text" name="qualification" size="45"
                			value="<c:out value='${employee.qualification}' />"
                	/>
                </td>
            </tr>
            <tr>
                <th>Designation </th>
                <td>
                	<input type="text" name="course" size="45"
                			value="<c:out value='${employee.course}' />"
                	/>
                </td>
            </tr>
            <tr>
                <th>Shop Name </th>
                <td>
                	<input type="text" name="year" size="45"
                			value="<c:out value='${employee.year}' />"
                	/>
                </td>
            </tr>
            
            <tr>
            	<td colspan="2" align="center">
            		<button type="submit" class="btn btn-success">Save</button>
            	</td>
            </tr>
        </table>
        </form>
    </div>	
    <jsp:include page="common/footer.jsp"></jsp:include>
</body>
</html>
