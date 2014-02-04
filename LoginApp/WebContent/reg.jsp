<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reg Page</title>
</head>
<body>
	<form action="process.jsp" method="post">
		<table>
			<tr>
				<td>Phone:</td>				
				<td><input type="text" name="phone"></td>
			</tr>
			<tr>
				<td>Address:</td>
				<td><input type="text" name="address"></td>
			</tr>
		</table>
		<input type="submit" value="Enter">
	</form>
</body>
</html>