 
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import javax.servlet.RequestDispatcher;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@MultipartConfig
@WebServlet("/A_edit_bike")
public class admin_edit_bike extends HttpServlet {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		if (request.getParameter("submit") != null) {

			String a= request.getParameter("bike_id");
			String b = request.getParameter("model");
			String c = request.getParameter("engine_capacity");
			String d = request.getParameter("mileage");
			String e = request.getParameter("max_speed");
			String f = request.getParameter("fuel_type");
			String g = request.getParameter("fuel_capacity");
			String h = request.getParameter("front_brack");
			String i = request.getParameter("back_brack");
			String j = request.getParameter("wheel_type");
			String k = request.getParameter("tyre_type");
			String l = request.getParameter("seat_height");
			String m = request.getParameter("width");
			String n = request.getParameter("height");
			String o = request.getParameter("length");
			String p = request.getParameter("warranty");
			String q = request.getParameter("services");
			String r = request.getParameter("price");
			String s = request.getParameter("discount");
			String t = request.getParameter("emi");
			String u = request.getParameter("payment");
			String v = request.getParameter("about");
			String w = request.getParameter("date");

			Part pic_1 = request.getPart("img1");
			String pic_name_1 = pic_1.getSubmittedFileName();
			Part pic_2 = request.getPart("img2");
			String pic_name_2 = pic_2.getSubmittedFileName();
			Part pic_3 = request.getPart("img3");
			String pic_name_3 = pic_3.getSubmittedFileName();
			Part pic_4 = request.getPart("img4");
			String pic_name_4 = pic_4.getSubmittedFileName();
			Part pic_5 = request.getPart("img5");
			String pic_name_5 = pic_5.getSubmittedFileName();

			if(pic_name_1.contains(".jpg") || pic_name_1.contains(".jpeg") || pic_name_1.contains(".png") || pic_name_1.contains(".JPG") || pic_name_1.contains(".JPEJ") || pic_name_1.contains(".PNG") || pic_name_1.contains(".JFIF") || pic_name_1.contains(".jfif"))
	    	{
			if(pic_name_2.contains(".jpg") || pic_name_2.contains(".jpeg") || pic_name_2.contains(".png") || pic_name_2.contains(".JPG") || pic_name_2.contains(".JPEJ") || pic_name_2.contains(".PNG") || pic_name_2.contains(".JFIF") || pic_name_2.contains(".jfif"))
	    	{
			if(pic_name_3.contains(".jpg") || pic_name_3.contains(".jpeg") || pic_name_3.contains(".png") || pic_name_3.contains(".JPG") || pic_name_3.contains(".JPEJ") || pic_name_3.contains(".PNG") || pic_name_3.contains(".JFIF") || pic_name_3.contains(".jfif"))
	    	{
    		if(pic_name_4.contains(".jpg") || pic_name_4.contains(".jpeg") || pic_name_4.contains(".png") || pic_name_4.contains(".JPG") || pic_name_4.contains(".JPEJ") || pic_name_4.contains(".PNG") || pic_name_4.contains(".JFIF") || pic_name_4.contains(".jfif"))
	    	{
    		if(pic_name_5.contains(".jpg") || pic_name_5.contains(".jpeg") || pic_name_5.contains(".png") || pic_name_5.contains(".JPG") || pic_name_5.contains(".JPEJ") || pic_name_5.contains(".PNG") || pic_name_5.contains(".JFIF") || pic_name_5.contains(".jfif"))
	    	{
			    try {

					Random rand = new Random();
					int rand_int = rand.nextInt();
					Random rand2 = new Random();
					int rand_int2 = rand2.nextInt();
	
					String pic_name_change_1 = "" + rand_int + rand_int2 + pic_name_1; // For change image name with random
																						// number for database entry
					String pic_upload_path_change_1 = "D:/J2EE/Track/src/main/webapp/bike_images/"
							+ pic_name_change_1;
	
					Random rand3 = new Random();
					int rand_int3 = rand3.nextInt();
					Random rand4 = new Random();
					int rand_int4 = rand4.nextInt();
	
					String pic_name_change_2 = "" + rand_int3 + rand_int4 + pic_name_2; // For change image name with random
																						// number for database entry
					String pic_upload_path_change_2 = "D:/J2EE/Track/src/main/webapp/bike_images/"
							+ pic_name_change_2;
	
					Random rand5 = new Random();
					int rand_int5 = rand5.nextInt();
					Random rand6 = new Random();
					int rand_int6 = rand6.nextInt();
	
					String pic_name_change_3 = "" + rand_int5 + rand_int6 + pic_name_3; // For change image name with random
																						// number for database entry
					String pic_upload_path_change_3 = "D:/J2EE/Track/src/main/webapp/bike_images/"
							+ pic_name_change_3;
	
					Random rand7 = new Random();
					int rand_int7 = rand7.nextInt();
					Random rand8 = new Random();
					int rand_int8 = rand8.nextInt();
	
					String pic_name_change_4 = "" + rand_int7 + rand_int8 + pic_name_4; // For change image name with random
																						// number for database entry
					String pic_upload_path_change_4 = "D:/J2EE/Track/src/main/webapp/bike_images/"
							+ pic_name_change_4;
	
					Random rand9 = new Random();
					int rand_int9 = rand9.nextInt();
					Random rand10 = new Random();
					int rand_int10 = rand10.nextInt();
	
					String pic_name_change_5 = "" + rand_int9 + rand_int10 + pic_name_5; // For change image name with
																							// random number for database
																							// entry
					String pic_upload_path_change_5 = "D:/J2EE/Track/src/main/webapp/bike_images/"
							+ pic_name_change_5;
	
					Class.forName("com.mysql.jdbc.Driver");
	
					String url = "jdbc:mysql://localhost:3306/bike_shop";
					String username = "root";
					String password = "";
					Connection con = DriverManager.getConnection(url, username, password);
	
					String query = "update bikes set model_name=? , engine_capacity=? , mileage=? , max_speed=?, fuel_type=?, fuel_tank_capacity=? , front_brack_type=? , back_brack_type=? , wheel_type=? , tyre_type=? , seat_height=? , width=? , height=? , length=? , standard_warranty=?, services=? , price=? , discount=? , emi=? ,  payment_method=? ,about_bike=?, date=? , comapny_removed=? , bike_remove=?, image1=? , image2=?, image3=?, image4=?, image5=? where bike_id='"+a+"'";
					PreparedStatement st = con.prepareStatement(query);
					st.setString(1, b);
					st.setString(2, c);
					st.setString(3, d);
					st.setString(4, e);
					st.setString(5, f);
					st.setString(6, g);
					st.setString(7, h);
					st.setString(8, i);
					st.setString(9, j);
					st.setString(10, k);
					st.setString(11, l);
					st.setString(12, m);
					st.setString(13, n);
					st.setString(14, o);
					st.setString(15, p);
					st.setString(16, q);
					st.setString(17, r);
					st.setString(18, s);
					st.setString(19, t);
					st.setString(20, u);
					st.setString(21, v);
					st.setString(22, w);
					st.setString(23, "no");
					st.setString(24, "no");
					st.setString(25, pic_name_change_1);
					st.setString(26, pic_name_change_2);
					st.setString(27, pic_name_change_3);
					st.setString(28, pic_name_change_4);
					st.setString(29, pic_name_change_5);
					int result = st.executeUpdate();
					if (result > 0) {
						FileOutputStream os = new FileOutputStream(pic_upload_path_change_1);
						InputStream is = pic_1.getInputStream();
						byte[] data = new byte[is.available()];
						is.read(data);
						os.write(data);
						os.close();
	
						
						  FileOutputStream os2 = new FileOutputStream(pic_upload_path_change_2);
						  InputStream is2 = pic_2.getInputStream(); byte[] data2 = new
						  byte[is2.available()]; is2.read(data2); os2.write(data2); os2.close();
						  
						  
						  FileOutputStream os3 = new FileOutputStream(pic_upload_path_change_3);
						  InputStream is3 = pic_3.getInputStream(); byte[] data3 = new
						  byte[is3.available()]; is3.read(data3); os3.write(data3); os3.close();
						 
						  
						  
						  FileOutputStream os4 = new FileOutputStream(pic_upload_path_change_4);
						 InputStream is4 = pic_4.getInputStream(); byte[] data4 = new
						  byte[is4.available()]; is4.read(data4); os4.write(data4); os4.close();
						  
						  
						  FileOutputStream os5 = new FileOutputStream(pic_upload_path_change_5);
						  InputStream is5 = pic_5.getInputStream(); byte[] data5 = new
						  byte[is5.available()]; is5.read(data5); os5.write(data5); os5.close();
						 
	
						  HttpSession session = request.getSession(true);
						  session.setAttribute("sms5","Bike updated successfully !!");
						  RequestDispatcher rd = request.getRequestDispatcher("A_Edit_bike");
						  rd.forward(request, response);
	
					} 
					else 
					{
						out.println("<script>alert('Something went wrong - try again !!');</script>");
						out.println("<h1><a href='A_Bike_details'>Go Back</a></h1>");
					}
	
				} 
				catch (Exception e1) {
					System.out.println(e1);
					out.println("<script>alert('Something went wrong - try again !!');</script>");
					out.println("<h1><a href='A_Bike_details'>Go Back</a></h1>");
				}
			    
	    	} 
			else 
			{
				out.println("<script>alert('Please select only jpg or png or jfif file !!');</script>");
				out.println("<h1><a href='A_Bike_details'>Go Back</a></h1>");
			}
	    	} 
			else 
			{
				out.println("<script>alert('Please select only jpg or png or jfif file !!');</script>");
				out.println("<h1><a href='A_Bike_details'>Go Back</a></h1>");
			}
	    	} 
			else 
			{
				out.println("<script>alert('Please select only jpg or png or jfif file !!');</script>");
				out.println("<h1><a href='A_Bike_details'>Go Back</a></h1>");
				
			}
	    	} 
			else 
			{
				out.println("<script>alert('Please select only jpg or png or jfif file !!');</script>");
				out.println("<h1><a href='A_Bike_details'>Go Back</a></h1>");
				
			}
	    	} 
			else 
			{
				out.println("<script>alert('Please select only jpg or png or jfif file !!');</script>");
				out.println("<h1><a href='A_Bike_details'>Go Back</a></h1>");
				
			}

		}
		else
		{
			response.sendRedirect("A_Index");		
			}
	}

	}
