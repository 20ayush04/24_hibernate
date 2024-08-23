<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>hello you can edit all the data........</h2>
<form action="updaterestaurant" method="post">
	Name : <input type="text" name="name" value="${restaurant.name}"/><br><br> 
	Address :  <input type="text" name="address" value="${restaurant.address}/"><br><br> 
	Category : <input type="text" name="category" value="${restaurant.category}"/><br><br> 
	<input type="hidden" name="restaurantId" value="${restaurant.restaurantId}"/>
	<input type="submit" value="Update Restaurant"/>
</body>
</html>