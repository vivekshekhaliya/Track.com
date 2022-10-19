<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
if(session!=null)
{
		if(session.getAttribute("s2_a_mobile")!=null) 
		{
			session.invalidate(); // For destroy or expire the session
			response.sendRedirect("A_Index");
		}
		else
		{
			response.sendRedirect("A_Index");
		}
}
else
{
	response.sendRedirect("A_Index");
}
	%>
</body>
</html>