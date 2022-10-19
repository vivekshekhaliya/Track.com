<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
        <link rel="stylesheet" href="node_modules/mdbootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="node_modules/mdbootstrap/css/mdb.min.css">
        <link rel="stylesheet" href="node_modules/mdbootstrap/css/style.css">
        <script type="text/javascript" src="node_modules/mdbootstrap/js/jquery.min.js"></script>
        <script type="text/javascript" src="node_modules/mdbootstrap/js/popper.min.js"></script>
        <script type="text/javascript" src="node_modules/mdbootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="node_modules/mdbootstrap/js/mdb.min.js"></script>

<title>Track.com</title>
 	 <link rel="icon" type="image/png" sizes="16x16" href="images/track2.png">
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
    
    	<%@include file="header.jsp" %>
            <!--**********************************
            Content body start
        ***********************************-->
            <div class="content-body">

                <div class="container-fluid mt-3">
                    <div class="row">
                        <div class="col-lg-8 col-sm-6">

                            <div
                                style="width: 100%; height: 100%; padding:0;margin-top:0;margin-right:0;margin-left:0;margin-bottom:10%">
                                <div id="carouselExampleIndicators" class="carousel slide " data-ride="carousel">
                                    <ol class="carousel-indicators ">
                                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active">
                                        </li>
                                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                                        <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                                        <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
                                    </ol>

                                    <div class="carousel-inner">
                                        <div class="carousel-item active">
                                            <img class="d-block w-100" src="images/bike10.webp" height="620px"
                                                alt="First slide">
                                            <div class="carousel-caption d-none d-md-block"></div>
                                        </div>
                                        <div class="carousel-item">
                                            <img class="d-block w-100" src="images/bike2.jpg" height="620px"
                                                alt="Second slide">

                                        </div>
                                        <div class="carousel-item">
                                            <img class="d-block w-100" src="images/bike7.jpg" height="620px"
                                                alt="Third slide">
                                        </div>
                                        <div class="carousel-item">
                                            <img class="d-block w-100" src="images/bike8.webp" height="620px"
                                                alt="Third slide">
                                        </div>
                                        <div class="carousel-item">
                                            <img class="d-block w-100" src="images/bike12.jpg" height="620px"
                                                alt="Third slide">
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
                                        <span class="sr-only">Next</span>
                                    </a>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-sm-6">

                            <div class="card  mb-4 p-0">
                                <h5 class="card-title  pt-4 px-6 ml-4">Branches</h5>
                                <div class="card-body">
                                    <p class="card-text pb-2">We provide no 1 service in all gujarat.We have something
                                        10 braches in different different citys of gujarat</p>
                                    <a href="Showroom_details" class="btn btn-outline-primary btn-pill">More Details</a>
                                </div>
                                <img class="card-img rounded-0" src="images/bike14.jfif">
                            </div>
                        </div>

                    </div>
                    <div class="row">

                        <div class="col-lg-4">
                            <div class="card card-cascade wider">

                                <!-- Card image -->
                                <div class="view view-cascade overlay">
                                    <img class="card-img-top" src="images/best_services.jpg" alt="Card image 1">
                                    <a href="#!">
                                        <div class="mask rgba-white-slight"></div>
                                    </a>
                                </div>

                                <!-- Card content -->
                                <div class="card-body card-body-cascade text-center pb-0">

                                    <!-- Title -->
                                    <h4 class="card-title"><strong>Best Services</strong></h4>
                                    <!-- Subtitle -->

                                    <!-- Text -->
                                    <p class="card-text">We are provide a best and no 1 service to the customer.</p>


                                    <!-- Linkedin -->
                                    <a href="https://instagram.com/r_nak_shekhaliya?igshid=YmMyMTA2M2Y="
                                        class="px-2 fa-lg in-ic"><i class="fab fa-instagram"></i></a>
                                    <!-- Twitter -->
                                    <a href="https://twitter.com/RonakShekhaliy1?t=DjNV7CU7MHOv4ORC84mcAQ&s=09"
                                        class="px-2 fa-lg tw-ic"><i class="fab fa-twitter"></i></a>
                                    <!-- Dribbble -->
                                    <a href="https://www.facebook.com/ronak.shekhaliya.73" class="px-2 fa-lg fb-ic"><i
                                            class="fab fa-facebook-f"></i></a>

                                    <!-- Card footer -->
                                    <div class="card-footer text-muted text-center mt-4">
                                        Since 2020
                                    </div>

                                </div>

                            </div>
                            <!-- Card Wider -->


                        </div>

                        <div class="col-lg-4">

                            <div class="card card-cascade narrower">

                                <!-- Card image -->
                                <div class="view view-cascade overlay">
                                    <img class="card-img-top" src="images/customer_satisfaction.jpg" alt="Card image 2">
                                    <a>
                                        <div class="mask rgba-white-slight"></div>
                                    </a>
                                </div>

                                <!-- Card content -->
                                <div class="card-body card-body-cascade" style="text-align:center">

                                    <!-- Label -->

                                    <h4 class="font-weight-bold card-title">Customer Satisfaction</h4>
                                    <!-- Text -->
                                    <p class="card-text">Our first priority is satisfy the customer. We are helping
                                        customer problem. Customers are god for our.</p>
                                    <!-- Button -->
                                    <a href="About" class="btn btn-primary">More Information</a>

                                </div>

                                <!-- Card footer -->
                                <div class="card-footer text-muted text-center">
                                    Since 2020
                                </div>

                            </div>
                            <!-- Card Narrower -->

                        </div>

                        <div class="col-lg-4">
                            <div class="card card-cascade">

                                <!-- Card image -->
                                <div class="view view-cascade overlay">
                                    <img class="card-img-top" src="images/payment_method.jpg" alt="Card image 3"
                                        height="215px">
                                    <a>
                                        <div class="mask rgba-white-slight"></div>
                                    </a>
                                </div>

                                <!-- Card content -->
                                <div class="card-body card-body-cascade text-center">

                                    <!-- Title -->
                                    <h4 class="card-title"><strong>Payment Method</strong></h4>
                                    <!-- Subtitle -->

                                    <p class="card-text">We accept only online payment for online order. But In the
                                        offline mode we accept cash, online payment or EMI.
                                    </p>

                                </div>

                                <!-- Card footer -->
                                <div class="card-footer text-muted text-center">
                                    Since 2020
                                </div>

                            </div>
                            <!-- Card Regular -->

                        </div>
                    </div>
                    <div class="row mr-2 ml-2 mt-5" style="border-top:1px solid black">
                        <div class="col-lg-10 mb-3 ">
                            <table border=0 style="width:100%;height:100%;">
                                <tr>
                                   
                                    <td>
                                        <div
                                            style="padding-top:20px;padding-right:30px;padding-left:0px;padding-bottom:0px">
                                            <b style="font-size:20px"> Bikes &nbsp</b>
                                            <br><span style="font-size:10px"></span>
                                            Suggestion for you</span>
                                        </div>

                                    </td>
                                </tr>

                            </table>


                        </div>
                        <div class="col-lg-2 mb-3 mt-3">
                            <button type="button" class="btn btn-dark ml-2">View All</button>
                        </div>
                    </div>
                    <div class="row">
<%@page import="java.sql.*"  %>
<%
try{
		
			String mobile1 = (String)(session.getAttribute("s2_a_mobile"));
			Class.forName("com.mysql.jdbc.Driver");
			
			String url = "jdbc:mysql://localhost:3306/bike_shop";
			String uname="root";
			String pwd="";
			Connection con = DriverManager.getConnection(url,uname,pwd);
			
			String q="select * from bikes where comapny_removed='no' and bike_remove='no' ";
			Statement st = con.createStatement();		
			ResultSet r = st.executeQuery(q);
			
			while(r.next())
			{
					
		
%>
                        <div class="col-lg-3">
                            <div class="card">
                                <div class="bootstrap-carousel">
                                        <div class="carousel slide" data-ride="carousel">
                                            <div class="carousel-inner">
                                                <div class="carousel-item active">
                                                     <% out.println("<img class='d-block w-100' src='bike_images/"+r.getString(27)+"' alt='First image' height='200px'>");
                                                   %>
                                                </div>
                                                <div class="carousel-item">
                                                   <% out.println("<img class='d-block w-100' src='bike_images/"+r.getString(28)+"' alt='Second image' height='200px'>");
                                                   %> 
                                                </div>
                                                <div class="carousel-item">
                                                    <% out.println("<img class='d-block w-100' src='bike_images/"+r.getString(29)+"' alt='Third image' height='200px'>");
                                                   %>
                                                </div>
                                                 <div class="carousel-item">
                                                     <% out.println("<img class='d-block w-100' src='bike_images/"+r.getString(30)+"' alt='Fourth image' height='200px'>");
                                                   %>
                                                </div>
                                                 <div class="carousel-item">
                                                    <% out.println("<img class='d-block w-100' src='bike_images/"+r.getString(31)+"' alt='Fifth image' height='200px'>");
                                                   %>
                                                </div>
                                                
                                                
                                            </div>
                                        </div>
                                     </div>      
                                <div class="card-body">
                                    <h5 class="card-title"><%= r.getString(2)%></h5>
                                    <p class="card-text"><%= r.getString(3)%></p>
                                    <% out.println("<a href='Bike_details?bike_id="+r.getString(1) +"' class='btn btn-primary'>More Details</a>"); %>
		                            
                                </div>
                            </div>
                        </div>
<%
					
			}			
}		
catch(Exception e1)
{
	
}
		
%>
                        

                    </div>



                    <%@include file="footer.jsp" %>
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