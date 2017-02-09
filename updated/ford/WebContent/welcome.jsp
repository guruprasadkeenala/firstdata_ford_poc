<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Vaulted Card</title>
</head>
<body>

Card Information :-

Name: <%= request.getParameter("cardHolder") %><br>
Card Number: <%= request.getParameter("cardNo") %><br>
CVV No : <%= request.getParameter("cvv") %><br>
Expiration Date : <%= request.getParameter("expirationDate") %><br>

</body>
</html>