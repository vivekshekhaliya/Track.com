import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getParameter("submit") != null) {
		}
		else
		{
			response.sendRedirect("index");		
			}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
		
			String u_mobile = request.getParameter("mobile");
			String u_pwd = request.getParameter("pwd");
			
			if(request.getParameter("submit")!=null)
			{	
				if(u_mobile!=null && u_pwd!=null && u_mobile.equals("")==false && u_pwd.equals("")==false )
				{
					if(request.getParameter("agree")!=null)
					{
						try
						{
							Class.forName("com.mysql.jdbc.Driver");
							
							String url = "jdbc:mysql://localhost:3306/bike_shop";
							String uname = "root";
							String pwd = "";
							Connection con = DriverManager.getConnection(url,uname,pwd);
							
							String q = "select * from user where mobile_no='"+u_mobile+"' and password='"+u_pwd+"' and user_removed='no'";
							Statement st = con.createStatement();
							ResultSet r = st.executeQuery(q);
							
							if(r.next())
							{
								HttpSession session = request.getSession(true);
								session.setAttribute("s1_u_name",r.getString(1)); 
								session.setAttribute("s2_u_mobile", u_mobile);
								session.setAttribute("s3_u_pic",r.getString(6));
								response.sendRedirect("index");
							}
							else 
							{
		
								HttpSession session = request.getSession(true);
								session.setAttribute("sms2","Please enter correct mobile no. or password !!");
								response.sendRedirect("Login");
								
							}
							
						}
						catch(Exception e)
						{
							out.println(e);
						}
					}
					else 
					{
	
						HttpSession session = request.getSession(true);
						session.setAttribute("sms2","You are not accept term of condition !!");
						response.sendRedirect("Login");
						
					}
				}
				else 
				{

					HttpSession session = request.getSession(true);
					session.setAttribute("sms2","Please fill the required field !!");
					response.sendRedirect("Login");
					
				}
			}
			else
			{
				response.sendRedirect("index");		
				}
		
	}

}
