<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Card Request</title>

<script type="text/javascript">
function addAccount()
{
	//alert("Hi");
	document.getElementById("addAccount").style.display="block";
}
</script>
</head>
<body>
<div id="addAccount" style="display:none">
<iframe height="400" width="500" src="http://localhost:8080/fd/"></iframe>
</div>


<form method="post">
<input type="button" value="Add Card" onClick="addAccount();">
</form>

</body>
</html>