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
		Name : <input type="text" name="name" value = "${restaurantEntity.name}" /> <span style="color:red;">${result.getFieldError('name').getDefaultMessage()}</span><br><br>
		Address : <input type="text" name="address"  value = "${restaurantEntity.address}" /> <span style="color:red;">${result.getFieldError("address").getDefaultMessage()}</span><br><br>
		Category : <input type="text" name="category"  value = "${restaurantEntity.category}"   /> <span style="color:red;">${result.getFieldError("category").getDefaultMessage()}</span><br><br>
		
		<input type="submit" value="Add Restaurant">
	</form>
</body>
</html>