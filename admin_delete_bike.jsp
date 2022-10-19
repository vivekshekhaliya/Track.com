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
%>
	<%@page import="java.sql.*" %>
	<%
		String id=request.getParameter("bike_id");
		if(id!=null){
	 	if(id!=null)
	 	{
	 		try
			{
				Class.forName("com.mysql.jdbc.Driver");
				
				String url = "jdbc:mysql://localhost:3306/bike_shop";
				String username = "root";
				String password = "";
				Connection con = DriverManager.getConnection(url,username ,password);
				
				String q = "update bikes set  bike_remove=? where bike_id='"+id+"'";
				
				PreparedStatement st = con.prepareStatement(q);
				st.setString(1,"yes");
				int result = st.executeUpdate();
				if(result>0)
				{
					out.println("<script>alert('Bike removed')</script>");
					response.sendRedirect("A_Index");

				
				}
				else
				{
					out.println("<script>alert('Something went wrong')</script>");

				}
				con.close();
			}
			catch(Exception e)
			{
				
				out.println("<h2><center><b style='color:red'>Something went wrong - "+e+"</b></h2></center>");
				
			}
	 	}
	%>
</body>
</html>

<%
		
		}
		else
		{
			response.sendRedirect("A_Index");
		}
	}
	else
	{
		response.sendRedirect("A_Login");
	}
}
else
{
	response.sendRedirect("A_Login");
}
%>