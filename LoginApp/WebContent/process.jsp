<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="user" class="ru.chernobrivenko.loginapp.dto.Reg"
		scope="request">
		<jsp:setProperty property="phone" name="user" />
		<jsp:setProperty property="address" name="user" param="address" />
	</jsp:useBean>

	<p>
		Phone:
		<jsp:getProperty property="phone" name="user" />
		Address:
		<jsp:getProperty property="address" name="user" /></p>
</body>
</html>