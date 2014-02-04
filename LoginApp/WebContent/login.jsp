<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
</head>
<body>
	<form action="login" method="post">
		<table>
			<tr>
				<td>User ID:</td>
				<%
				String defaultUser="";
				defaultUser = (String) session.getAttribute("userId");
				if(defaultUser == null || defaultUser.trim() == "")
					defaultUser = getServletConfig().getInitParameter("defaultUser");				
				%>
				<td><input type="text" name="userId" value="<%=defaultUser%>"></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password"></td>
			</tr>
		</table>
		<input type="submit" value="Enter">
	</form>
</body>
</html>