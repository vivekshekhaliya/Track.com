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
import javax.servlet.http.Part;

@MultipartConfig
@WebServlet("/A_add_company")
public class admin_add_company extends HttpServlet {
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
			
			String c_name = request.getParameter("name");
			String c_email = request.getParameter("email");
			String c_mobile = request.getParameter("mobile");
			String c_services = request.getParameter("services");
			String c_warranty = request.getParameter("warranty");
			String c_rate = request.getParameter("rate");
			String c_country = request.getParameter("country");
			String c_about = request.getParameter("about");
			String c_user = request.getParameter("user");
			
			Part c_pic = request.getPart("pic"); 
	    	String pic_name = c_pic.getSubmittedFileName();  
	    	
	    	
			
				
			if(pic_name.contains(".jpg") || pic_name.contains(".jpeg") || pic_name.contains(".png") || pic_name.contains(".JPG") || pic_name.contains(".JPEJ") || pic_name.contains(".PNG") || pic_name.contains(".jfif") || pic_name.contains(".JFIF"))
	    	{
				
				try
				{
				
		    		String pic_uplod_path = "D:/J2EE/Track/src/main/webapp/uplod_images/"+pic_name;
		    		String pic_name_change;
		    		String pic_upload_path_change;
		    		
		    		
		            File file=new File(pic_uplod_path);
		            boolean exists = file.exists();
		            if (exists==true)
			        {
		            	Random rand = new Random(); 
		         		int rand_int = rand.nextInt();
		            	pic_name_change = rand_int+c_pic.getSubmittedFileName(); // For change image name with random number for database entry
		            	pic_upload_path_change ="D:/J2EE/Track/src/main/webapp/uplod_images/"+rand_int+pic_name; 
		            	
			        }
		            else 
		            {
		            	pic_name_change = c_pic.getSubmittedFileName(); // For change image name without random number for database entry
		            	pic_upload_path_change ="D:/J2EE/Track/src/main/webapp/uplod_images/"+pic_name;
		            	
		            }
					Class.forName("com.mysql.jdbc.Driver");
					
					String url = "jdbc:mysql://localhost:3306/bike_shop";
					String username = "root";
					String password = "";
					Connection con = DriverManager.getConnection(url,username ,password);
					
					String q = "insert into company(company_name,company_email,company_mobile,company_services,company_warranty,company_rate,company_logo,company_removed,company_country,about_company,company_users) values(?,?,?,?,?,?,?,?,?,?,?) ";
					PreparedStatement st = con.prepareStatement(q);
					st.setString(1,c_name);
					st.setString(2,c_email);
					st.setString(3,c_mobile);
					st.setString(4,c_services);
					st.setString(5,c_warranty);
					st.setString(6,c_rate);
					st.setString(7,pic_name_change);
					st.setString(8,"no");
					st.setString(9,c_country);
					st.setString(10,c_about);
					st.setString(11,c_user);
					
					int result = st.executeUpdate();
					if(result>0)
					{
						FileOutputStream os = new FileOutputStream(pic_upload_path_change); 
			    		InputStream is = c_pic.getInputStream(); 
			    		byte[] data = new byte[is.available()];
			    		is.read(data);
			    		os.write(data);
			    		os.close();
						
						
						HttpSession session2 = request.getSession(false);
						session2.setAttribute("sms9","Company added successfully !!");
						response.sendRedirect("A_Add_company");
						
						
					}
					else
					{

						HttpSession session2 = request.getSession(false);
						session2.setAttribute("sms9","Something went wrong !!");
						response.sendRedirect("A_Add_company");
						
					}
					
				}
				catch(Exception e)
				{
					out.println(e);
					HttpSession session2 = request.getSession(false);
					session2.setAttribute("sms9","Something went wrong !!");
					response.sendRedirect("A_Add_company");
					
					
				}
				
    		}
			else
			{
				HttpSession session2 = request.getSession(false);
				session2.setAttribute("sms9","Please select only jpg or png or jfif file !!");
				response.sendRedirect("A_Add_company");
				
			}
		}
		else
		{
			response.sendRedirect("A_Index");		
			}
								
	}

}
