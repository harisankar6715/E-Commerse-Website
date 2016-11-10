<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category</title>
</head>
<body>

<table>
		<tr>
			<td align="left"><a href="categories"><button>Manage Categories</button></a></td> &nbsp; &nbsp;
			<td align="right"><a href="products"><button>Manage Products</button></a></td> &nbsp; &nbsp;
			<td align="center"><a href="suppliers"><button>Manage Suppliers</button></a></td> &nbsp; &nbsp;
 
		</tr>

	</table>
<h2 align="center"><i><u>ADD CATEGORY</u></i></h2>
	 <c:url var="addCategory" value="to_add_category"></c:url>
	<form:form action="${addCategory }" commandName="category">

		<table align="center">
			<tr>
				<td><form:label path="id">
						<spring:message text="ID"   />
					</form:label></td>
				<c:choose>

					<c:when test="${!empty category.id}">
						<td><form:input path="id" disabled="true" readonly="true" />
						</td>
					</c:when>

					<c:otherwise>
						<td><form:input path="id"  required="true"
								title="Enter a valid id" /></td>
					</c:otherwise>
				</c:choose>
			</tr>

			<tr>
	<!-- this line -->		<form:input path="id" hidden="true" />
				<td><form:label path="name">
						<spring:message text="Name"></spring:message>
					</form:label></td>
				<td><form:input path="name" required="true"></form:input></td>
			</tr>

			<tr>
				<td><form:label path="description">
						<spring:message text="Description"></spring:message>
					</form:label></td>
				<td><form:input path="description" required="true"></form:input></td>
			</tr>

			<tr>
				<!-- if the category is already exist, then edit -->
				<td><c:if test="${!empty category.name }">
						<input type="submit"
							value="<spring:message text="Edit"></spring:message>">
					</c:if> <c:if test="${empty category.name}">
						<input type="submit"
							value="<spring:message text="Add"></spring:message>">
					</c:if></td>
			</tr>
		</table>
	</form:form>

	<br>
	
	<h2 align="center"><i><u>LIST OF CATEGORIES</u></i></h2>
	<c:if test="${!empty categoryList}">
		<table border="1" align="center">
			<tr>
				<th> ID</th>
				<th> NAME</th>
				<th> DESCRIPTION</th>
				<th> EDIT</th>
				<th> DELETE</th>
			</tr>

			<c:forEach items="${categoryList }" var="category">
				<tr>
					<td>${category.id}</td>
					<td>${category.name}</td>
					<td>${category.description}</td>
					<td><a href="<c:url value='category/edit/${category.id}' />">Edit</a></td>
					<td><a href="<c:url value='category/remove/${category.id}' />">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>



</body>
</html>