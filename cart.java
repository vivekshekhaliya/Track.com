import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.Random;
import java.util.regex.Pattern;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/cart")
public class cart extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		HttpSession session = request.getSession(false);
		if(session!=null) 
		{
			String mobile = (String)(session.getAttribute("s2_u_mobile"));
			if(mobile!=null)
			{
			String name = (String)(session.getAttribute("s1_u_name"));
			
	    	String pic_name = request.getParameter("image"); 
	    	
			String model = request.getParameter("model");
			String company = request.getParameter("company");
		
			
			
			
				
				try
				{
				
		    	
					Class.forName("com.mysql.jdbc.Driver");
					
					String url = "jdbc:mysql://localhost:3306/bike_shop";
					String username = "root";
					String password = "";
					Connection con = DriverManager.getConnection(url,username ,password);
					
					String q = "insert into cart_bike (user_name,user_mobile,company,model,image) values(?,?,?,?,?) ";
					PreparedStatement st = con.prepareStatement(q);
					st.setString(1,name);
					st.setString(2,mobile);
					st.setString(3,company);
					st.setString(4,model);
					st.setString(5,pic_name);
					
					
					
					int result = st.executeUpdate();
					if(result>0)
					{
						
			    		response.sendRedirect("Cart");
						
					}
					else
					{
						out.println("<script>alert('Something went wrong!!')</script>");
					
					}
					
				}
				catch(Exception e)
				{
					out.println(e);
					
					out.println("<script>alert('Something went wrong!!')</script>");
					
					
				}
				
		
		
		}
		else
		{
			response.sendRedirect("Login");
		}
		}
		else
		{
			response.sendRedirect("Login");
		}
	}
}
		
