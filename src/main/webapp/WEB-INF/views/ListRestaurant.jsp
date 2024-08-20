<%@page import="com.entity.RestaurantEntity"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List of all Restaurants</title>
</head>
<body>

		
	<%
	
	List<RestaurantEntity> restaurants = (List<RestaurantEntity>) request.getAttribute("restaurants");
	%>

	<table border="1">
		<tr>
			<th>RestaurantId</th>
			<th>Name</th>
			<th>Category</th>
			<th>Action</th>
		</tr>
		<%
		for (RestaurantEntity r : restaurants) {
			out.print("<tr>");
			out.print("<td>" + r.getRestaurantId() + "</td>");
			out.print("<td>" + r.getName() + "</td>");
			out.print("<td>" + r.getCategory() + "</td>");
			out.print("<td><a href='deleterestaurant?restaurantId="+r.getRestaurantId()+"'>Delete</a></td>");
			out.print("</tr>");
		}
		%>
	</table>
</body>
</html>