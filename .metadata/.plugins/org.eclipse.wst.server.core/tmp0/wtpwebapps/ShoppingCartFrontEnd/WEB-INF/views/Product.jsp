<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product</title>
</head>
<body>

<table>
		<tr>
			<td align="left"><a href="categories"><button>Manage Categories</button></a></td> &nbsp; &nbsp;
			<td align="right"><a href="products"><button>Manage Products</button></a></td> &nbsp; &nbsp;
			<td align="center"><a href="suppliers"><button>Manage Suppliers</button></a></td> &nbsp; &nbsp;
 
		</tr>

	</table>
	
	<h2 align="center"><i><u>ADD PRODUCT</u> </i></h2>

	<c:url var="addProduct" value="to_add_product"></c:url>
	<form:form action="${addProduct}" commandName="product"
 	enctype="multipart/form-data" method="post">
	
    
	<table align="center">
		<tr>
			<td><form:label path="id">
					<spring:message text="ProductID" />
				</form:label></td>
			<c:choose>

				<c:when test="${!empty product.id}">
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
			    <form:input path="id" hidden ="true"/>
			<td><form:label path="name">
					<spring:message text="ProductName"></spring:message>
				</form:label></td>
			<td><form:input path="name" required="true"></form:input></td>
		</tr>
		
		
		<tr>
			<td><form:label path="description">
					<spring:message text="ProductDescription"></spring:message>
				</form:label></td>
			<td><form:input path="description" required="true"></form:input></td>
		</tr>

		<tr>
			<td><form:label path="price">
					<spring:message text="ProductPrice"></spring:message>
				</form:label></td>
			<td><form:input path="price" required="true"></form:input></td>
		</tr>
		<tr>
				<td><form:label path="supplier">
						<spring:message text="Supplier" />
					</form:label></td>
				<td><form:select path="supplier.name" items="${supplierList}"
						itemValue="name" itemLabel="name" /></td>
			</tr>
			<tr>
				<td><form:label path="category">
						<spring:message text="Category" />
					</form:label></td>
				<td><form:select path="category.name" items="${categoryList}"
						itemValue="name" itemLabel="name" /></td>
			</tr>
		
		<tr>
			    <td align="left"><form:label path="image">
			             <spring:message text="Image"/>
			             </form:label></td>
			    <td align="left"><form:input type="file" path="image"/></td>
			 </tr> 
		<tr>
				<!-- if the category is already exist, then edit -->
				<td colspan="2"><c:if test="${!empty product.name }">
						<input type="submit"
							value="<spring:message text="Edit"></spring:message>">
					</c:if> <c:if test="${empty product.name}">
						<input type="submit"
							value="<spring:message text="Add"></spring:message>">
					</c:if></td>
			</tr>
	</table>
	
	</form:form>
	
	
	<h2 align="center"><i><u>LIST OF PRODUCTS</u></i></h2>
	<c:if test="${!empty productList}">
	<table border="1" align="center">
	<tr>
				<th>ID</th>
				<th>NAME</th>
				<th>DESCRIPTION</th>
				<th>PRICE</th>
				<th>PRODUCT CATEGORY</th>
				<th>PRODUCT SUPPLIER</th>
				<th>EDIT</th>
				<th>DELETE</th>
			</tr>
			<c:forEach items="${productList}" var="product">
				<tr>
					<td>${product.id}</td>
					<td>${product.name}</td>
					<td>${product.description}</td>
					<td>${product.price}</td>
				    <td>${product.category.name}</td>
					<td>${product.supplier.name}</td>
					<td><a href="<c:url value='product/edit/${product.id}' />">Edit</a></td>
					<td><a href="<c:url value='product/remove/${product.id}' />">Delete</a></td>
				</tr>
			</c:forEach>
	
	</table>
	</c:if>
	
</body>
</html>