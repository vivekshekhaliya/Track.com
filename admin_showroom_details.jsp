<!DOCTYPE html>
<html lang="en">

<head>
 	<title>Track.com</title>
 	 <link rel="icon" type="image/png" sizes="16x16" href="images/track2.png">
 	
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
   
    <!-- Favicon icon -->
   
    <!-- Pignose Calender -->
    <link href="./plugins/pg-calendar/css/pignose.calendar.min.css" rel="stylesheet">
    <!-- Chartist -->
    <link rel="stylesheet" href="./plugins/chartist/css/chartist.min.css">
    <link rel="stylesheet" href="./plugins/chartist-plugin-tooltips/css/chartist-plugin-tooltip.css">
    <!-- Custom Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
    <style>
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
</head>

<body>

<%
if(session!=null)
{
	if(session.getAttribute("s2_a_mobile")!=null)
	{
%>
     <%@include file="admin_header.jsp" %>
        <!--**********************************
            Content body start
        ***********************************-->
        <div class="content-body">

            <div class="container-fluid mt-3">
                <div class="row">
                    <div class="col-lg-3 col-sm-6">
                        <div class="card gradient-2">
                            <div class="card-body">
                                <h3 class="card-title text-white">Perday Bikes Online Order</h3>
                                <div class="d-inline-block">
                                    <h2 class="text-white">Above 400</h2>
                                    <p class="text-white mb-0"> 2021</p>
                                </div>
                                <span class="float-right display-5 opacity-5"><i class="fa fa-shopping-cart"></i></span>
                            </div>
                        </div>
                    </div>

                      <div class="col-lg-3 col-sm-6">
                        <div class="card gradient-3">
                            <div class="card-body">
                                <h3 class="card-title text-white">Positive Feedback</h3>
                                <div class="d-inline-block">
                                    <h2 class="text-white">72%</h2>
                                    <p class="text-white mb-0">Jan - March 2021</p>
                                </div>
                                <span class="float-right display-5 opacity-5"><i class="fa  fa-comments-o"></i></span>
                            </div>
                        </div>
                    </div>
                      <div class="col-lg-3 col-sm-6">
                        <div class="card gradient-1">
                            <div class="card-body">
                                <h3 class="card-title text-white">New Customer</h3>
                                <div class="d-inline-block">
                                    <h2 class="text-white">45678</h2>
                                    <p class="text-white mb-0">Jan - March 2021</p>
                                </div>
                                <span class="float-right display-5 opacity-5"><i class="fa fa-users"></i></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="card gradient-7">
                            <div class="card-body">
                                <h3 class="card-title text-white">Customer Satisfaction</h3>
                                <div class="d-inline-block">
                                    <h2 class="text-white">78%</h2>
                                    <p class="text-white mb-0">Jan - March 2021</p>
                                </div>
                                <span class="float-right display-5 opacity-5"><i class="fa fa-heart"></i></span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12">
                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body pb-0 d-flex justify-content-between">
                                        <canvas class="w-100 h-100" id="lineChart"></canvas>
                                    </div>

                                    <div class="card-body">
                                        <div class="d-flex justify-content-between">
                                            <div class="w-100 mr-2">
                                                <h6>Average Selling</h6>
                                                <div class="progress" style="height: 6px">
                                                    <div class="progress-bar bg-danger" style="width: 36%"></div>
                                                </div>
                                            </div>
                                            <div class="ml-2 w-100">
                                                <h6> Customer Satisfaction</h6>
                                                <div class="progress" style="height: 6px">
                                                    <div class="progress-bar bg-primary" style="width: 48%"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>



                <div class="row">
                    <div class="col-lg-6 col-md-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Payment</h4>
                                <canvas id="pieChart"></canvas>
                            </div>
                        </div>

                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="card card-widget">
                            <div class="card-body">
                                <h5 class="text-muted">Order Overview </h5>
                                <h2 class="mt-4">20987</h2>
                                <span>Total Revenue</span>
                                <div class="mt-4">
                                    <h4>5050</h4>
                                    <h6>Online Order <span class="pull-right">25%</span></h6>
                                    <div class="progress mb-3" style="height: 7px">
                                        <div class="progress-bar bg-primary" style="width:  25%;" role="progressbar">
                                            <span class="sr-only">30% Order</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="mt-4">
                                    <h4>15937</h4>
                                    <h6 class="m-t-10 text-muted">Offline Order <span class="pull-right">75%</span></h6>
                                    <div class="progress mb-3" style="height: 7px">
                                        <div class="progress-bar bg-success" style="width: 75%;" role="progressbar">
                                            <span class="sr-only">50% Order</span>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="card">
                            <div class="card-body px-0">
                                <h4 class="card-title px-4 mb-3">Todo</h4>
                                <div class="todo-list">
                                    <div class="tdl-holder">
                                        <div class="tdl-content">
                                            <ul id="todo_list">
                                                <li><label><input type="checkbox"><i></i><span>Get up</span><a href='#'
                                                            class="ti-trash"></a></label></li>
                                                <li><label><input type="checkbox" checked><i></i><span>Stand up</span><a
                                                            href='#' class="ti-trash"></a></label></li>
                                                <li><label><input type="checkbox"><i></i><span>Don't give up the
                                                            fight.</span><a href='#' class="ti-trash"></a></label></li>
                                                <li><label><input type="checkbox" checked><i></i><span>Do something
                                                            else</span><a href='#' class="ti-trash"></a></label></li>
                                            </ul>
                                        </div>
                                        <div class="px-4">
                                            <input type="text" class="tdl-new form-control"
                                                placeholder="Write new item and hit 'Enter'...">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>



                <div class="row">
                    <div class="col-xl-4 col-lg-8 col-sm-8 col-xxl-8">

                        <div class="card">
                            <div class="chart-wrapper mb-4">
                                <div class="px-4 pt-4 d-flex justify-content-between">
                                    <div>
                                        <h4>Sales Activities</h4>
                                        <p>Last 1 Year</p>
                                    </div>
                                    <div>
                                        <span><i class="fa fa-caret-up text-success"></i></span>
                                        <h4 class="d-inline-block text-success">720</h4>
                                        <p class=" text-danger">+120.5(5.0%)</p>
                                    </div>
                                </div>
                                <div>
                                    <canvas id="pieChart2"></canvas>
                                </div>
                            </div>
                            <div class="card-body border-top pt-4">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <ul>
                                            <li>25% Negative Feedback</li>
                                            <li>75% Positive Feedback</li>
                                        </ul>
                                        <div>
                                            <h5>Customer Feedback</h5>
                                            <h3>385749</h3>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div id="chart_widget_3_1"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-xl-8 col-lg-16 col-sm-16 col-xxl-16 h-100">
                        <div class="card h-100">
                            <div class="card-body h-100">
                                <h4 class="card-title mb-5">Main Branch Location</h4>
                                <!--Google map-->
                                <div id="map-container-google-2" class="z-depth-1-half map-container h-100 w-100">
                                    <iframe
                                        src="https://maps.google.com/maps?q=motavarahasurat&t=&z=13&ie=UTF8&iwloc=&output=embed "
                                        class="w-100" style="height:350px" frameborder="0" style="border:0"
                                        allowfullscreen></iframe>
                                </div>

                                <!--Google Maps-->
                            </div>
                        </div>
                    </div>
                    </div>
  
  <%@page import="java.sql.*"  %>
  <%
  	
  		try
  		{
  			
  			Class.forName("com.mysql.jdbc.Driver");
  			
  			String url = "jdbc:mysql://localhost:3306/bike_shop";
  			String uname="root";
  			String pwd="";
  			Connection con = DriverManager.getConnection(url,uname,pwd);
  			
  			String q="select * from shop_branches ";
  			Statement st = con.createStatement();		
  			ResultSet r = st.executeQuery(q);
  			while(r.next())
  			{
  		 	
  			
  			
  					
  		
  %>
        
  				<div class="row">
                  <div class="col-xl-5 col-lg-16 col-sm-16 col-xxl-16 h-100">
                        <div class="card">
                            <div class="chart-wrapper mb-4 border-bottom">
                                <div class="pl-4 pt-4 d-flex justify-content-between">
                                    <div>
                                        <h4>Other Branch </h4>
                                         <b style="font-size:20px"> Contact</b>
                                    </div>
                                    
                                </div>
                                
                               
                            </div>
                            <div class="card-body  pt-4 mt-0">
                            
                                <div class="row">
                              
                                    <div class="col-sm-12">
                                     <h6>Email : <%=r.getString(2) %><br>
                                      Contact :  <%=r.getString(3) %><br>
                                       Address : <%=r.getString(4) %></h6>
                                      <br><% out.println("<a href='A_Delete_branch?id="+r.getString(1) +"' class='btn login-form__btn submit '>Remove Branch</a>");%>
                                 
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="col-xl-7 col-lg-16 col-sm-16 col-xxl-16 h-100">
                        <div class="card h-100">
                            <div class="card-body h-100">
                                <h4 class="card-title mb-2">Branch Location</h4>
                                <!--Google map-->
                                <div id="map-container-google-2" class="z-depth-1-half map-container h-100 w-100">
                                   <%  out.println("<iframe src='https://maps.google.com/maps?q="+r.getString(4)+"&t=&z=13&ie=UTF8&iwloc=&output=embed ' class='w-100' style='height:200px' frameborder='0' border='0' allowfullscreen></iframe>");
                                   %>
                                   </div>

                                <!--Google Maps-->
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
  
	
                <%@include file="admin_footer.jsp" %>
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


    <script>//line
        var ctxL = document.getElementById("lineChart").getContext('2d');
        var myLineChart = new Chart(ctxL, {
            type: 'line',
            data: {
                labels: ["January", "February", "March", "April", "May", "June", "July"],
                datasets: [{
                    label: "Selling",
                    data: [10, 30, 15, 50, 40, 70, 80],
                    backgroundColor: [
                        'rgba(105, 0, 132, .2)',
                    ],
                    borderColor: [
                        'rgba(200, 99, 132, .7)',
                    ],
                    borderWidth: 2
                },
                {
                    label: "Customer Satisfaction",
                    data: [28, 48, 40, 19, 86, 27, 90],
                    backgroundColor: [
                        'rgba(0, 137, 132, .2)',
                    ],
                    borderColor: [
                        'rgba(0, 10, 130, .7)',
                    ],
                    borderWidth: 2
                }
                ]
            },
            options: {
                responsive: true
            }
        });
    </script>
    <script>//pie
        var ctxP = document.getElementById("pieChart").getContext('2d');
        var myPieChart = new Chart(ctxP, {
            type: 'pie',
            data: {
                labels: ["EMI", "Online Payment", "Cash"],
                datasets: [{
                    data: [45, 35, 20],
                    backgroundColor: ["#F7464A", "#46BFBD", "#FDB45C"],
                    hoverBackgroundColor: ["#FF5A5E", "#5AD3D1", "#FFC870"]
                }]
            },
            options: {
                responsive: true
            }
        });
    </script>


    <script>//pie
        var ctxP = document.getElementById("pieChart2").getContext('2d');
        var myPieChart = new Chart(ctxP, {
            type: 'pie',
            data: {
                labels: ["Negetive Feedback", "Positive Feedback"],
                datasets: [{
                    data: [75, 25,],
                    backgroundColor: ["#949FB1", "#4D5360"],
                    hoverBackgroundColor: ["#A8B3C5", "#616774"]
                }]
            },
            options: {
                responsive: true
            }
        });
    </script>

    <script src="./js/dashboard/dashboard-1.js"></script>

</body>

</html>

<%
	}
	else
	{
		response.sendRedirect("A_Login");
	}
}
else
{
	response.sendRedirect("A_Login");
}
%>