<!DOCTYPE html>
<html lang="en">

<head>
    <style>
        .card-horizontal {
            display: flex;
            flex: 1 1 auto;
        }
      
        .map-container-2 {
            overflow: hidden;
            padding-bottom: 56.25%;
            position: relative;
            height: 0;
        }

        .map-container-2 iframe {
            left: 0;
            top: 0;
            height: 100%;
            width: 100%;
            position: absolute;
        }
    </style>
    <title>Track.com</title>
 	 <link rel="icon" type="image/png" sizes="16x16" href="images/track2.png">
    <link rel="stylesheet" href="css/master.css">
    <link rel="stylesheet" href="assets/css/master.css">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
   
    <!-- Pignose Calender -->
    <link href="./plugins/pg-calendar/css/pignose.calendar.min.css" rel="stylesheet">
    <!-- Chartist -->
    <link rel="stylesheet" href="./plugins/chartist/css/chartist.min.css">
    <link rel="stylesheet" href="./plugins/chartist-plugin-tooltips/css/chartist-plugin-tooltip.css">
    <!-- Custom Stylesheet -->
    <link href="css/style.css" rel="stylesheet">

</head>

<body>
<%@page import="java.sql.*" %>
<% 
	String bike_id = request.getParameter("bike_id");
	if(bike_id!=null)
	{
		 try
			{
				
				Class.forName("com.mysql.jdbc.Driver");
				
				String url = "jdbc:mysql://localhost:3306/bike_shop";
				String uname="root";
				String pwd="";
				Connection con = DriverManager.getConnection(url,uname,pwd);
				
				String q="select * from bikes where bike_id='"+bike_id+"' ";
				Statement st = con.createStatement();		
				ResultSet r = st.executeQuery(q);
				r.next();
				
				
				
%>



     <%@include file="header.jsp" %>
        <!--**********************************
            Content body start
        ***********************************-->
        <div class="content-body">

            <div class="container-fluid mt-3 ">
                <div class="row ml-0">
                    <div class="col-lg-8 col-sm-6">

                        <h1 class="ui-title text-uppercase w-100"><%=r.getString(3) %></h1>

                    </div>
                    <div class="col-lg-4 col-sm-6">

                    </div>

                </div>

                <div class="row ml-0 mr-2">

                    <div class="col-lg-6 col-sm-6">
                        <div class="b-goods-f__slider">
                            <div class="ui-slider-main js-slider-for">


                                <div
                                    style="width: 100%; height: 80%; padding:0;margin-top:0;margin-right:0;margin-left:0;margin-bottom:10%">
                                    <div id="carouselExampleIndicators" class="carousel slide " data-ride="carousel">
                                        <ol class="carousel-indicators ">
                                            <li data-target="#carouselExampleIndicators" data-slide-to="0"
                                                class="active"></li>
                                            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                                             <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                                              <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
                                        </ol>

                                        <div class="carousel-inner  w-100 ">
                                            <div class="carousel-item active  w-100 h-80">
                                                <%  out.println("<img class='d-block w-100' src='bike_images/"+r.getString(27)+"' alt='First slide' height='400px'>"); %>
                                                <div class="carousel-caption d-none d-md-block">
                                                    
                                                </div>
                                            </div>
                                            <div class="carousel-item">
                                                 <%  out.println("<img class='d-block w-100' src='bike_images/"+r.getString(28)+"' alt='Second slide' height='400px'>"); %>

                                            </div>
                                            <div class="carousel-item">
                                                 <%  out.println("<img class='d-block w-100' src='bike_images/"+r.getString(29)+"' alt='Third slide' height='400px'>"); %>
                                            </div>
                                             <div class="carousel-item">
                                                 <%  out.println("<img class='d-block w-100' src='bike_images/"+r.getString(30)+"' alt='Third slide' height='400px'>"); %>
                                            </div>
                                             <div class="carousel-item">
                                                 <%  out.println("<img class='d-block w-100' src='bike_images/"+r.getString(31)+"' alt='Third slide' height='400px'>"); %>
                                            </div>
                                        </div>
                                        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button"
                                            data-slide="prev">
                                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                            <span class="sr-only">Previous</span>
                                        </a>
                                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button"
                                            data-slide="next">
                                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                        </a>
                                    </div>
                                    <div class="mt-2" style="text-align:center">
                                    		<% if(session.getAttribute("s2_u_mobile")!=null){out.println("<a href='https://www.sbiepay.sbi/secure/home'  class='btn btn-primary m-3 w-50'>Order Now</a>");}
                                    		else{out.println("<a href='Login'  class='btn btn-primary m-3 w-50'>Order Now</a>");}
                                             
                                            %>
                                       <%  out.println("<a href='cart?company="+r.getString(2)+"&model="+r.getString(3)+"&image="+r.getString(27)+"'   name='s' class='btn btn-primary w-50'>Add to favourite</a>");%>
                                    </div>

                                </div>

                            </div>
                             </div>
                               </div>
								
                    <div class="col-lg-5 col-sm-6 mt-0">
                        <div>
                            <div class="card login-form mb-0">
                                <div class="card-body pt-5">

                                            <h4 class="text-center">Enquiry</h4>
                                   

                                    <form class="mt-0 mb-5 login-input" method="post">
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="name" placeholder="Name" required>
                                        </div>
                                        <div class="form-group">
                                            <input type="email" class="form-control" name="email" placeholder="Email" required>
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" name="mobile" placeholder="Mobile" required>
                                        </div>
                                        <div class="form-group">
                                            <textarea class="form-control" placeholder="Message" name="message" required></textarea>
                                        </div>

                                        <button type="submit" name="send"class="btn login-form__btn submit w-100">Send Now</button>
                                    </form>
<%

if(request.getParameter("send")!=null)
{
	String u_name2= request.getParameter("name"); 
	String u_email2= request.getParameter("email");  
	String u_mobile2= request.getParameter("mobile");  
	String u_message2= request.getParameter("message");  
	
	
				try
				{
				
		    		
					
					String q3 = "insert into user_enquiry(user_name,user_email,user_mobile,user_enquiry	) values(?,?,?,?) ";
					PreparedStatement st3 = con.prepareStatement(q3);
					st3.setString(1,u_name2);
					st3.setString(2,u_email2);
					st3.setString(3,u_mobile2);
					st3.setString(4,u_message2);
					
					int result3 = st3.executeUpdate();
					if(result3>0)
					{
						out.println("<script>alert('Message sended !!')</script>");
						
						
					}
					else
					{
						
						out.println("<script>alert('Something went wrong !!')</script>");
						
					}
					
				}
				catch(Exception e)
				{
					out.println("<script>alert('Something went wrong !!')</script>");
					
				}
				
    		
		
}
%>
                                </div>
                            </div>
                        </div>
                    </div>
								<%
							 int p = Integer.parseInt(r.getString(19));
							 int d_pr = Integer.parseInt(r.getString(20));
							 int d_rs =(p*d_pr)/100;
							 int main = p - d_rs;
							 %>
							</div>
							<div class="row">
							<div class="col-md-12">
							 <h3 class="b-goods-f__title mb-4 mt-5 " >Price List</h3>
							 <div style="border-bottom:1px solid #C0C0C0 " class="mb-4"></div>
								<b><big  style="font-size:32px" class="mb-1"> Rs.<%=main %></b></big>
								<span  style="font-size:20px" class="ml-3"> <del style="color:lightblack" >Rs.<%=r.getString(19) %></span></small></del>
								 <span class="ml-1" style="font-size:20px;color:green"> <%=r.getString(20) %>% off</span><br>
								
                            
							</div>
							</div>
							<div class="row">
							<div class="col-md-12">
                            <h3 class="b-goods-f__title mb-4 mt-5 " >Bike Specifications</h3>
                            <div style="border-bottom:1px solid #C0C0C0 " class="mb-4"></div>
                            <div class="row ">
                                <div class="col-md-6">
                                    <dl class="b-goods-f__descr row pl-3">
                                        <dt class="b-goods-f__descr-title col-lg-5 col-md-12">Company</dt>
                                        <dd class="b-goods-f__descr-info col-lg-7 col-md-12"><%=r.getString(2) %></dd>
                                        <dt class="b-goods-f__descr-title col-lg-5 col-md-12">Model</dt>
                                        <dd class="b-goods-f__descr-info col-lg-7 col-md-12"><%=r.getString(3) %></dd>
                                        <dt class="b-goods-f__descr-title col-lg-5 col-md-12">Engine Capacity</dt>
                                        <dd class="b-goods-f__descr-info col-lg-7 col-md-12"><%=r.getString(4) %>  cc</dd>
                                        <dt class="b-goods-f__descr-title col-lg-5 col-md-12">Mileage</dt>
                                        <dd class="b-goods-f__descr-info col-lg-7 col-md-12"><%=r.getString(5) %> kmpl</dd>
                                        <dt class="b-goods-f__descr-title col-lg-5 col-md-12">Max Speed</dt>
                                        <dd class="b-goods-f__descr-info col-lg-7 col-md-12"><%=r.getString(6) %> Kmph</dd>
                                       
                                        <dt class="b-goods-f__descr-title col-lg-5 col-md-12">Front Brack Type</dt>
                                        <dd class="b-goods-f__descr-info col-lg-7 col-md-12" style="text-transform:capitalize"><%=r.getString(9) %></dd>
                                        <dt class="b-goods-f__descr-title col-lg-5 col-md-12">Back Brack Type</dt>
                                        <dd class="b-goods-f__descr-info col-lg-7 col-md-12" style="text-transform:capitalize"><%=r.getString(10) %></dd>
                                        <dt class="b-goods-f__descr-title col-lg-5 col-md-12">Wheel Type</dt>
                                        <dd class="b-goods-f__descr-info col-lg-7 col-md-12" style="text-transform:capitalize"><%=r.getString(11) %></dd>
                                	</dl>
                                </div>
                                <div class="col-md-6">
                                	  <dl class="b-goods-f__descr row  pl-3" >
                                	   <dt class="b-goods-f__descr-title col-lg-5 col-md-12" >	Fuel Type</dt>
                                        <dd class="b-goods-f__descr-info col-lg-7 col-md-12" style="text-transform:capitalize"><%=r.getString(7) %></dd>	
                                        <dt class="b-goods-f__descr-title col-lg-5 col-md-12">Fuel Tank Capacity	</dt>
                                        <dd class="b-goods-f__descr-info col-lg-7 col-md-12"><%=r.getString(8) %> Litres</dd>
                                        <dt class="b-goods-f__descr-title col-lg-5 col-md-12">Tyre Type</dt>
                                        <dd class="b-goods-f__descr-info col-lg-7 col-md-12" style="text-transform:capitalize"><%=r.getString(12) %></dd>
                                        <dt class="b-goods-f__descr-title col-lg-5 col-md-12">Seat Height</dt>
                                        <dd class="b-goods-f__descr-info col-lg-7 col-md-12"><%=r.getString(13) %>  mm</dd>
                                        <dt class="b-goods-f__descr-title col-lg-5 col-md-12">Overall Width</dt>
                                        <dd class="b-goods-f__descr-info col-lg-7 col-md-12"><%=r.getString(14) %> mm</dd>
                                        <dt class="b-goods-f__descr-title col-lg-5 col-md-12">Overall Height</dt>
                                        <dd class="b-goods-f__descr-info col-lg-7 col-md-12"><%=r.getString(15) %> mm</dd>
                                        <dt class="b-goods-f__descr-title col-lg-5 col-md-12">Overall Length</dt>
                                        <dd class="b-goods-f__descr-info col-lg-7 col-md-12"><%=r.getString(16) %> mm</dd>
                                       
                                       
                                    </dl>
                                </div>
                            </div>
                            <ul class="nav nav-tabs nav-vehicle-detail-tabs" id="myTab" role="tablist" style="border:0">
                                <li class="nav-item">
                                    <h3 class="b-goods-f__title mb-2 mt-5 ">Overview</h3>
                                </li>

								

                            </ul>
                            <hr />
                            </div>
								</div>
                            <div class="row">
							<div class="col-md-6">
                            <div class="tab-content" id="myTabContent">
                                <div class="tab-pane fade show active" id="overview" role="tabpanel"
                                    aria-labelledby="overview-tab">
                                    <p class=" pl-3" style="font-size:20px;text-transform:capitalize "><%=r.getString(23) %></p>
                                    <h3 class="b-goods-f__title mb-4 mt-5 ">General Information</h3>
                                    <div style="border-bottom:1px solid #C0C0C0;" class="mb-4  "></div>
                                    <dl class="b-goods-f__descr row pl-3">
                                        <dt class="b-goods-f__descr-title col-lg-5 col-md-12" >EMI Available</dt>
                                        <dd class="b-goods-f__descr-info col-lg-7 col-md-12" style="text-transform:capitalize"><%=r.getString(21) %></dd>
                                        <dt class="b-goods-f__descr-title col-lg-5 col-md-12">Payment Method</dt>
                                        <dd class="b-goods-f__descr-info col-lg-7 col-md-12" style="text-transform:capitalize"><%=r.getString(22) %></dd>
                                        <dt class="b-goods-f__descr-title col-lg-5 col-md-12">Body Style</dt>
                                        <dd class="b-goods-f__descr-info col-lg-7 col-md-12" style="text-transform:capitalize">Metal</dd>
                                        <dt class="b-goods-f__descr-title col-lg-5 col-md-12">Standard Warranty</dt>
                                        <dd class="b-goods-f__descr-info col-lg-7 col-md-12"><%=r.getString(17) %> Year</dd>
                                        <dt class="b-goods-f__descr-title col-lg-5 col-md-12">Free Services</dt>
                                        <dd class="b-goods-f__descr-info col-lg-7 col-md-12"><%=r.getString(18) %> Year</dd>
                                        
                                    </dl>
                                </div>



                            </div>
                        </div>
                       
                        <div class="col-md-6">
                        	<h4 class="card-title mb-2 mt-3 pl-3">Main Branch Location</h4>
                                <!--Google map-->
                                <div id="map-container-google-2" class="z-depth-1-half map-container h-100 w-100   pl-3">
                                    <iframe
                                        src="https://maps.google.com/maps?q=motavarachasurat&t=&z=13&ie=UTF8&iwloc=&output=embed "
                                        class="w-100" style="height:350px" frameborder="0" style="border:0"
                                        allowfullscreen></iframe>
                                </div>
                        	
                        	
                        
                        </div>
                    </div>

					
                <div class="row">
                 <div class="col-lg-12 col-sm-6 mt-5">
                 <%@include file="footer.jsp" %></div>
                </div>
                <div class="row">

                    <div class="col-lg-12 col-sm-6 mt-5">
                        <h3 class="b-goods-f__title mb-4 mt-5 ">Users Review & Ratting</h3>

                        <div style="border-bottom:1px solid #C0C0C0 " class="mb-4"></div>
<%@page import="java.sql.*"  %>
<%
	
		try
		{
			
			Class.forName("com.mysql.jdbc.Driver");
			
			String url2 = "jdbc:mysql://localhost:3306/bike_shop";
			String uname2="root";
			String pwd2="";
			Connection con2 = DriverManager.getConnection(url2,uname2,pwd2);
			
			String q2="select * from review";
			Statement st2 = con2.createStatement();		
			ResultSet r2 = st2.executeQuery(q2);
			
			while(r2.next())
			{
					
		
%>

				<div class="card" style="width:20rm;">
				  <div class="card-body">
				  <div class="row">
				  <div class="col-lg-2">
				  <div class="img-square-wrapper " style="width:200px">
                                    <% out.println("<img  src='uplod_images/"+r2.getString(4)+"' width='150px' height='150px' alt='Review image '>");%>
                       </div>
                       </div>
                       
				  <div class="col-lg-10">
				    <h5 class="card-title pt-2"><%=r2.getString(2) %></h5>
				 
				    <p class="card-text pt-2"><%=r2.getString(3) %></p>
				    
				    </div>
				  </div>
				</div>
				</div>
  <%
			}
		}
		catch(Exception e)
		{
			out.println(e);
		}
%>



                        </div>
                    </div>

                </div>
            </div>
            <!-- #/ container -->
        </div>
        <!--**********************************
            Content body end
        ***********************************-->


        <!--**********************************
            Footer start
        ***********************************-->
        <div class="footer">
            <div class="copyright">
                <p>Copyright &copy; Designed & Developed by <b style="color:blue"> Ronak Shekhaliya</b>
                    2022</p>
            </div>
        </div>
        <!--**********************************
            Footer end
        ***********************************-->
    </div>
    <!--**********************************
        Main wrapper end
    ***********************************-->

    <!--**********************************
        Scripts
    ***********************************-->
    <script src="plugins/common/common.min.js"></script>
    <script src="js/custom.min.js"></script>
    <script src="js/settings.js"></script>
    <script src="js/gleek.js"></script>
    <script src="js/styleSwitcher.js"></script>

    <!-- Chartjs -->
    <script src="./plugins/chart.js/Chart.bundle.min.js"></script>
    <!-- Circle progress -->
    <script src="./plugins/circle-progress/circle-progress.min.js"></script>
    <!-- Datamap -->
    <script src="./plugins/d3v3/index.js"></script>
    <script src="./plugins/topojson/topojson.min.js"></script>
    <script src="./plugins/datamaps/datamaps.world.min.js"></script>
    <!-- Morrisjs -->
    <script src="./plugins/raphael/raphael.min.js"></script>
    <script src="./plugins/morris/morris.min.js"></script>
    <!-- Pignose Calender -->
    <script src="./plugins/moment/moment.min.js"></script>
    <script src="./plugins/pg-calendar/js/pignose.calendar.min.js"></script>
    <!-- ChartistJS -->
    <script src="./plugins/chartist/js/chartist.min.js"></script>
    <script src="./plugins/chartist-plugin-tooltips/js/chartist-plugin-tooltip.min.js"></script>



    <script src="./js/dashboard/dashboard-1.js"></script>

</body>

</html>


<%
			}
		 	catch(Exception e)
			 {
			 		out.println(e);
			 }
	}
	else
	{
		response.sendRedirect("index");
	}
%>