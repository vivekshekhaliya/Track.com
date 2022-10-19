
import java.io.IOException;
import java.io.PrintWriter;

import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@MultipartConfig
@WebServlet("/A_add_branch")
public class admin_add_branch extends HttpServlet {
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
		if(request.getParameter("submit")!=null)
		{
			
			
			String c_email = request.getParameter("email");
			String c_mobile = request.getParameter("contact");
			String c_city = request.getParameter("city");
			String c_address = request.getParameter("address");
			
			
				try
				{
				
		    		
		    		
		          
					Class.forName("com.mysql.jdbc.Driver");
					
					String url = "jdbc:mysql://localhost:3306/bike_shop";
					String username = "root";
					String password = "";
					Connection con = DriverManager.getConnection(url,username ,password);
					
					String q = "insert into shop_branches(branch_email,branch_contact,branch_city,branch_address) values(?,?,?,?) ";
					PreparedStatement st = con.prepareStatement(q);
					st.setString(1,c_email);
					st.setString(2,c_mobile);
					st.setString(3,c_city);
					st.setString(4,c_address);
					
					int result = st.executeUpdate();
					if(result>0)
					{
						
						
						HttpSession session2 = request.getSession(false);
						session2.setAttribute("sms10","Branch added successfully !!");
						response.sendRedirect("A_Add_branches");
						
						
					}
					else
					{

						HttpSession session2 = request.getSession(false);
						session2.setAttribute("sms10","Something went wrong !!");
						response.sendRedirect("A_Add_branches");
						
					}
					
				}
				catch(Exception e)
				{
					out.println(e);
					HttpSession session2 = request.getSession(false);
					session2.setAttribute("sms10","Something went wrong !!");
					response.sendRedirect("A_Add_branches");
					
					
				}
				
    	
		}
		else
		{
			response.sendRedirect("A_Index");		
			}
								
	}

}
