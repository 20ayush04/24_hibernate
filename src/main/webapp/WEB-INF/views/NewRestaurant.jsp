<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Restaurant</title>
</head>
<body>
<h2>Add New Restaurant</h2>
	<form action="saverestaurant" method="post">
		Name : <input type="text" name="name" value = "${restaurant.name}"/> <span style="color:red;">${validname}</span><br><br>
		Address : <input type="text" name="address" value="${restaurant.address}"/> <span style="color:red;">${validadd}</span><br><br>
		Category : <input type="text" name="category"  value="${restaurant.category}"/> <span style="color:red;">${validcat}</span><br><br>
		
		<input type="submit" value="Add Restaurant">
	</form>
</body>
</html>