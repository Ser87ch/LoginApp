<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Success</title>
</head>
<body>
	<%
		//String user = (String) session.getAttribute("userId");
		String user = (String) request.getAttribute("userName");
		if (user == null || user.trim() == "")
			response.sendError(403);
	%>
	<h3>Login Successful!</h3>
	<p>
		Hello,
		<%=user%>.
	</p>
</body>
</html>