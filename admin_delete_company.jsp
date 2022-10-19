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
		
		String id=request.getParameter("company_id");
	String comp=request.getParameter("company");
		
	 	if(id!=null)
	 	{
	 		try
			{
				Class.forName("com.mysql.jdbc.Driver");
				
				String url = "jdbc:mysql://localhost:3306/bike_shop";
				String username = "root";
				String password = "";
				Connection con = DriverManager.getConnection(url,username ,password);
				
				String q = "update company set  company_removed=? where company_id='"+id+"'";
				
				PreparedStatement st = con.prepareStatement(q);
				st.setString(1,"yes");
				int result = st.executeUpdate();
				
				String q2 = "update bikes set comapny_removed=? where company='"+comp+"'";
				
				PreparedStatement st2 = con.prepareStatement(q2);
				st2.setString(1,"yes");
				int result2 = st2.executeUpdate();
				if(result2>0)
				{
					out.println("<script>alert('Comapny removed')</script>");
					response.sendRedirect("A_Comapny_details");

				
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
	 	else
		{
			response.sendRedirect("A_Index");
		}
	%>
</body>
</html>
<%
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