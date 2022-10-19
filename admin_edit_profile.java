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
@WebServlet("/A_editprofile")
public class admin_edit_profile  extends HttpServlet {
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
			String mobile = request.getParameter("mobile_no");
			String a_mobile = request.getParameter("mobile");
			String a_name = request.getParameter("name");
			String a_email = request.getParameter("email");
		
			String a_gender = request.getParameter("gender");
			String a_city = request.getParameter("city");
			String a_pwd = request.getParameter("pwd");
			String a_c_pwd = request.getParameter("c_pwd");
			String a_about= request.getParameter("about");
			Part a_pic = request.getPart("pic"); 
	    	String pic_name = a_pic.getSubmittedFileName();  
	    	
	    	
			if(a_mobile !=null && a_name!=null && a_email!=null &&  a_city!=null && a_pwd!=null && a_c_pwd!=null && a_gender!=null && a_about!=null )
			{
				if(a_mobile.equals("")==false && a_name.equals("")==false && a_email.equals("")==false &&  a_pwd.equals("")==false && a_c_pwd.equals("")==false )
				{
					String mobileregex = "^\\d{10}$";
					Pattern p = Pattern.compile(mobileregex);
					if(p.matcher(a_mobile).matches()==true)
					{
						String emailRegex ="^([0-9a-zA-Z]([-\\.\\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\\w]*[0-9a-zA-Z]\\.)+[a-zA-Z]{2,9})$";           
						Pattern pat = Pattern.compile(emailRegex);
						if(pat.matcher(a_email).matches()==true)
						{
							String pwdRegex ="(?=^.{10,}$)((?=.*\\d)|(?=.*\\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$";
							Pattern pattern = Pattern.compile(pwdRegex);
							if(pattern.matcher(a_pwd).matches()==true)
							{
								if(a_c_pwd.equals(a_pwd))
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
												
												String q2 = "update admin set name=? , email=? , gender=? , city=? , image=? , password=? , about=? , mobile_no=? where mobile_no='"+mobile+"' ";
												PreparedStatement st = con.prepareStatement(q2);
												st.setString(1,a_name);
												st.setString(2,a_email);
												
												st.setString(3,a_gender);
												st.setString(4,a_city);
												st.setString(5, pic_name_change);
												st.setString(6,a_c_pwd);
												st.setString(7,a_about);
												st.setString(8,a_mobile);
												
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
													session.setAttribute("s1_a_name",a_name);
							
													session.setAttribute("s2_a_mobile",a_mobile);
													
													session.setAttribute("s3_a_pic",pic_name);
													
										    		
										    		response.sendRedirect("A_Profile");
												
													
													
												}
												else
												{
													HttpSession session = request.getSession(true);
													session.setAttribute("sms6","Something went wrong - try again !!");
													response.sendRedirect("A_Edit_profile_2");
												}
												
											}
											catch(Exception e)
											{
												System.out.println(e);
												
												HttpSession session = request.getSession(true);
												session.setAttribute("sms6","Please enter different mobile no. !!");
												response.sendRedirect("A_Edit_profile_2");
											}
										}
										else
										{
											HttpSession session = request.getSession(true);
											session.setAttribute("sms6","You are not accept term of conditions !!"); 
											response.sendRedirect("A_Edit_profile_2");
										}
						    		}
									else
									{
										HttpSession session = request.getSession(true);
										session.setAttribute("sms6","Please select the valid image -jpg , png , jpeg !!"); 
										response.sendRedirect("A_Edit_profile_2");
									}
								}
								else
								{
									HttpSession session = request.getSession(true);
									session.setAttribute("sms6","Password do not matched !!"); 
									response.sendRedirect("A_Edit_profile_2");
								}
							}
							else
							{
								HttpSession session = request.getSession(true);
								session.setAttribute("sms6","Please enter strong password (min 10digit ,one uppercase ,one lower case , one special char , one number) !!");
								response.sendRedirect("A_Edit_profile_2");
							}
						}
						else
						{
							HttpSession session = request.getSession(true);
							session.setAttribute("sms6"," Please enter valid email !!");
							response.sendRedirect("A_Edit_profile_2");
						}
					}
					else
					{
						HttpSession session = request.getSession(true);
						session.setAttribute("sms6"," Please enter valid mobile no. !!");
						response.sendRedirect("A_Edit_profile_2");
					}
					
				}
				else
				{
					HttpSession session = request.getSession(true);
					session.setAttribute("sms6","Please fill the required field !!");
					out.println("<script> alert('<h6><center><b style='color:red'>Please fill the required field!!!</b></h6></center>')</script>");
					response.sendRedirect("A_Edit_profile_2");
				}
			}
			else
			{
				
					HttpSession session = request.getSession(true);
					session.setAttribute("sms6","Please fill the required field !!");
					out.println("<script> alert('<h6><center><b style='color:red'>Please fill the required field!!!</b></h6></center>')</script>");	
					response.sendRedirect("A_Edit_profile_2");
			}
		}
		else
		{
			response.sendRedirect("A_Index");		
			}
		
	}

}
