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
@WebServlet("/edit_profile")
public class user_edit_profile  extends HttpServlet {
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
			String mobile = request.getParameter("mobile_no");
			String u_mobile = request.getParameter("mobile");
			String u_name = request.getParameter("name");
			String u_email = request.getParameter("email");
		
			String u_gender = request.getParameter("gender");
			String u_city = request.getParameter("city");
			String u_pwd = request.getParameter("pwd");
			String u_c_pwd = request.getParameter("c_pwd");
			String u_about= request.getParameter("about");
			Part a_pic = request.getPart("pic"); 
	    	String pic_name = a_pic.getSubmittedFileName();  
	    	
	    	
			if(u_mobile !=null && u_name!=null && u_email!=null &&  u_city!=null && u_pwd!=null && u_c_pwd!=null && u_gender!=null && u_about!=null )
			{
				if(u_mobile.equals("")==false && u_name.equals("")==false && u_email.equals("")==false &&  u_pwd.equals("")==false && u_c_pwd.equals("")==false )
				{
					String mobileregex = "^\\d{10}$";
					Pattern p = Pattern.compile(mobileregex);
					if(p.matcher(u_mobile).matches()==true)
					{
						String emailRegex ="^([0-9a-zA-Z]([-\\.\\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\\w]*[0-9a-zA-Z]\\.)+[a-zA-Z]{2,9})$";           
						Pattern pat = Pattern.compile(emailRegex);
						if(pat.matcher(u_email).matches()==true)
						{
							String pwdRegex ="(?=^.{10,}$)((?=.*\\d)|(?=.*\\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$";
							Pattern pattern = Pattern.compile(pwdRegex);
							if(pattern.matcher(u_pwd).matches()==true)
							{
								if(u_c_pwd.equals(u_pwd))
								{
									if(pic_name.contains(".JFIF") || pic_name.contains(".jfif") || pic_name.contains(".jpg") || pic_name.contains(".jpeg") || pic_name.contains(".png") || pic_name.contains(".JPG") || pic_name.contains(".JPEJ") || pic_name.contains(".PNG"))
							    	{
										if(request.getParameter("agree")!=null)
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
									            	pic_name_change = rand_int+a_pic.getSubmittedFileName(); // For change image name with random number for database entry
									            	pic_upload_path_change ="D:/J2EE/Track/src/main/webapp/uplod_images/"+rand_int+pic_name; 
									            	
										        }
									            else 
									            {
									            	pic_name_change = a_pic.getSubmittedFileName(); // For change image name without random number for database entry
									            	pic_upload_path_change ="D:/J2EE/Track/src/main/webapp/uplod_images/"+pic_name;
									            	
									            }
												Class.forName("com.mysql.jdbc.Driver");
												
												String url = "jdbc:mysql://localhost:3306/bike_shop";
												String username = "root";
												String password = "";
												Connection con = DriverManager.getConnection(url,username ,password);
												
												String q2 = "update user set name=? , email=? , gender=? , city=? , image=? , password=? , about_user=? , mobile_no=? where mobile_no='"+mobile+"' ";
												PreparedStatement st = con.prepareStatement(q2);
												st.setString(1,u_name);
												st.setString(2,u_email);
										
												st.setString(3,u_gender);
												st.setString(4,u_city);
												st.setString(5, pic_name_change);
												st.setString(6,u_c_pwd);
												st.setString(7,u_about);
												st.setString(8,u_mobile);
												
												int result = st.executeUpdate();
												if(result>0)
												{
													FileOutputStream os = new FileOutputStream(pic_upload_path_change); 
										    		InputStream is = a_pic.getInputStream(); 
										    		byte[] data = new byte[is.available()];
										    		is.read(data);
										    		os.write(data);
										    		os.close();
										    		HttpSession session = request.getSession(true);
													session.setAttribute("s1_u_name",u_name);
							
													session.setAttribute("s2_u_mobile",u_mobile);
													
													session.setAttribute("s3_u_pic",pic_name);
													
										    		response.sendRedirect("Profile");
												
													
													
												}
												else
												{
													HttpSession session = request.getSession(true);
													session.setAttribute("sms7","Something went wrong - try again !!");
													response.sendRedirect("Edit_profile");
												}
												
											}
											catch(Exception e)
											{
												System.out.println(e);
												
												HttpSession session = request.getSession(true);
												session.setAttribute("sms7","Please enter different mobile no. !!");
												response.sendRedirect("Edit_profile");;
											}
										}
										else
										{
											HttpSession session = request.getSession(true);
											session.setAttribute("sms7","You are not accept term of conditions !!"); 
											response.sendRedirect("Edit_profile");
										}
						    		}
									else
									{
										HttpSession session = request.getSession(true);
										session.setAttribute("sms7","Please select the valid image -jpg , png , jpeg !!"); 
										response.sendRedirect("Edit_profile");
									}
								}
								else
								{
									HttpSession session = request.getSession(true);
									session.setAttribute("sms7","Password do not matched !!"); 
									response.sendRedirect("Edit_profile");
								}
							}
							else
							{
								HttpSession session = request.getSession(true);
								session.setAttribute("sms7","Please enter strong password (min 10digit ,one uppercase ,one lower case , one special char , one number) !!");
								response.sendRedirect("Edit_profile");
							}
						}
						else
						{
							HttpSession session = request.getSession(true);
							session.setAttribute("sms7"," Please enter valid email !!");
							response.sendRedirect("Edit_profile");
						}
					}
					else
					{
						HttpSession session = request.getSession(true);
						session.setAttribute("sms7"," Please enter valid mobile no. !!");
						response.sendRedirect("Edit_profile");
					}
					
				}
				else
				{
					HttpSession session = request.getSession(true);
					session.setAttribute("sms7","Please fill the required field !!");
					out.println("<script> alert('<h6><center><b style='color:red'>Please fill the required field!!!</b></h6></center>')</script>");
					response.sendRedirect("Edit_profile");
				}
			}
			else
			{
				
					HttpSession session = request.getSession(true);
					session.setAttribute("sms6","Please fill the required field !!");
					out.println("<script> alert('<h6><center><b style='color:red'>Please fill the required field!!!</b></h6></center>')</script>");	
					response.sendRedirect("Edit_profile");
			}
		}
		else
		{
			response.sendRedirect("index");		
			}
		
	}

}
