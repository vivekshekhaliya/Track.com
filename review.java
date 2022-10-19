

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Random;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;


@WebServlet("/review")
@MultipartConfig
public class review extends HttpServlet {
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
		if(request.getParameter("submit")!=null)
		{
			HttpSession session = request.getSession(false);
			String u_sms = request.getParameter("sms");
			String u_name= (String)(session.getAttribute("s1_u_name"));
			String u_mobile= (String)(session.getAttribute("s2_u_mobile"));
			Part u_pic = request.getPart("img"); 
	    	String pic_name = u_pic.getSubmittedFileName();  
	    	
	    	
	    		if(u_sms!=null && u_sms.equals("")==false)
	    		{
					if(pic_name.contains(".jfif") || pic_name.contains(".JFIF") || pic_name.contains(".jpg") || pic_name.contains(".jpeg") || pic_name.contains(".png") || pic_name.contains(".JPG") || pic_name.contains(".JPEJ") || pic_name.contains(".PNG"))
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
				            	pic_name_change = rand_int+u_pic.getSubmittedFileName(); // For change image name with random number for database entry
				            	pic_upload_path_change ="D:/J2EE/Track/src/main/webapp/uplod_images/"+rand_int+pic_name; 
				            	
					        }
				            else 
				            {
				            	pic_name_change = u_pic.getSubmittedFileName(); // For change image name without random number for database entry
				            	pic_upload_path_change ="D:/J2EE/Track/src/main/webapp/uplod_images/"+pic_name;
				            	
				            }
							Class.forName("com.mysql.jdbc.Driver");
							
							String url = "jdbc:mysql://localhost:3306/bike_shop";
							String username = "root";
							String password = "";
							Connection con = DriverManager.getConnection(url,username ,password);
							
							String q = "insert into review(user_name,review,image,user_mobile) values(?,?,?,?) ";
							PreparedStatement st = con.prepareStatement(q);
							st.setString(1,u_name);
							st.setString(2,u_sms);
							st.setString(3,pic_name_change);
							st.setString(4,u_mobile);
							
							int result = st.executeUpdate();
							if(result>0)
							{
								FileOutputStream os = new FileOutputStream(pic_upload_path_change); 
					    		InputStream is = u_pic.getInputStream(); 
					    		byte[] data = new byte[is.available()];
					    		is.read(data);
					    		os.write(data);
					    		os.close();
								
					    		HttpSession session2 = request.getSession(true);
								session2.setAttribute("sms8","Your review will submited !!");
								response.sendRedirect("Review");
								
							}
							else
							{
								HttpSession session2 = request.getSession(true);
								session2.setAttribute("sms8","Something went wrong - try again !!");
								response.sendRedirect("Review");
								
							}
							
						}
						catch(Exception e)
						{
							System.out.println(e);
							HttpSession session2 = request.getSession(true);
							session2.setAttribute("sms8","Something went wrong - try again !!");
							response.sendRedirect("Review");
							
						}
						
		    		}
					else
					{
						HttpSession session2 = request.getSession(true);
						session2.setAttribute("sms8","Please select the valid image -jpg , png , jpeg ,jfif !!");
						response.sendRedirect("Review");
						
					}
	    		}
	    		else
				{
					HttpSession session2 = request.getSession(true);
					session2.setAttribute("sms8","Please fill the message box !!");
					response.sendRedirect("Review");
					
				}
		}
		else
		{
			response.sendRedirect("index");		
			}
		
	}

}
