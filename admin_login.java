import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/A_login")
public class admin_login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getParameter("submit") != null) {
		}
		else
		{
			response.sendRedirect("A_Index");		
			}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
		
			String a_mobile = request.getParameter("mobile");
			String a_pwd = request.getParameter("pwd");
			
			if(request.getParameter("submit")!=null)
			{	
				if(a_mobile!=null && a_pwd!=null && a_mobile.equals("")==false && a_pwd.equals("")==false)
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
							
							String q = "select * from admin where mobile_no='"+a_mobile+"' and password='"+a_pwd+"'";
							Statement st = con.createStatement();
							ResultSet r = st.executeQuery(q);
							
							if(r.next())
							{
								HttpSession session = request.getSession(true);
								session.setAttribute("s1_a_name",r.getString(1)); 
								session.setAttribute("s2_a_mobile", a_mobile);
								session.setAttribute("s3_a_pic",r.getString(6));
								response.sendRedirect("A_Index");
							}
							else 
							{
		
								HttpSession session = request.getSession(true);
								session.setAttribute("sms3","Please enter correct mobile no. or password !!");
								response.sendRedirect("A_Login");
								
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
						session.setAttribute("sms3","You are not accept term of condition !!");
						response.sendRedirect("A_Login");
						
					}
				}
				else 
				{
	
					HttpSession session = request.getSession(true);
					session.setAttribute("sms3","Please fill the required field !!");
					response.sendRedirect("A_Login");
					
				}
			}
			else
			{
				response.sendRedirect("A_Index");		
				}
		
	}

}
