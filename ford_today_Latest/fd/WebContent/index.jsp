<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Card</title>
</head>
<body>
<form action="http://localhost:9090/ford/welcome.jsp" method="post">
Name: <input type="text" name="cardHolder"><br>
Card Number: <input type="text" name="cardNo"><br>
CVV No : <input type="text" name="cvv"><br>
Expiration Date : <input type="text" name="expirationDate"><br><br><br><br>
<input type="submit" value="Review Order">
</form>
</body>
</html>