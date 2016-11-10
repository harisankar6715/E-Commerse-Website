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
<title>Supplier</title>
</head>
<body>
<table>
		<tr>
			<td align="left"><a href="categories"><button>Manage Categories</button></a></td> &nbsp; &nbsp;
			<td align="right"><a href="products"><button>Manage Products</button></a></td> &nbsp; &nbsp;
			<td align="center"><a href="suppliers"><button>Manage Suppliers</button></a></td> &nbsp; &nbsp;
 
		</tr>

	</table>
	<h2 align="center"><i><u>ADD SUPPLIER</u></i></h2>
	<c:url var="addSupplier" value="to_add_supplier"></c:url>
	<form:form action="${addSupplier }" commandName="supplier">

		<table align="center">
			<tr>
				<td><form:label
						path="id">
						<spring:message text="SupplierID" />
					</form:label></td>
				<c:choose>

					<c:when test="${!empty supplier.id}">
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
			<form:input path="id" hidden="true" />
				<td><form:label
						path="name">
						<spring:message text="SupplierName"></spring:message>
					</form:label></td>
				<td><form:input path="name" required="true"></form:input></td>
			</tr>

			<tr>
				<td><form:label
						path="address">
						<spring:message text="SupplierAddress"></spring:message>
					</form:label></td>
				<td><form:input path="address" required="true"></form:input></td>
			</tr>

			<tr>
				<!-- if the category is already exist, then edit -->
				<td colspan="2" align="center"><c:if test="${!empty supplier.name }">
						<input type="submit"
							value="<spring:message text="Edit"></spring:message>">
					</c:if> <c:if test="${empty supplier.name}">
						<input type="submit"
							value="<spring:message text="Add"></spring:message>">
					</c:if></td>
			</tr>
		</table>
	</form:form>

	<h2 align="center"><i><u>LIST OF SUPPLIERS</u></i></h2>
	<c:if test="${!empty supplierList}">
		<table border="1" align="center">
			<tr>
				<th>ID</th>
				<th>NAME</th>
				<th>ADDRESS</th>
				<th>EDIT</th>
				<th>DELETE</th>
			</tr>

			<c:forEach items="${supplierList }" var="supplier">
				<tr>
					<td>${supplier.id}</td>
					<td>${supplier.name}</td>
					<td>${supplier.address}</td>
					<td><a href="<c:url value='supplier/edit/${supplier.id}' />">Edit</a></td>
					<td><a href="<c:url value='supplier/remove/${supplier.id}' />">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>

</body>
</html>