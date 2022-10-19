<!DOCTYPE html>
<html lang="en">

<head>

	<title>Track.com</title>
 	 <link rel="icon" type="image/png" sizes="16x16" href="images/track2.png">
    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />
    <!-- MDB -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/5.0.0/mdb.min.css" rel="stylesheet" />
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/5.0.0/mdb.min.js"></script>
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

<body><%

if(session!=null)
{
	if(session.getAttribute("s2_u_mobile")!=null)
	{
			
				
%>
    <%@include file="header.jsp" %>

        <!--**********************************
            Content body start
        ***********************************-->
        <div class="content-body">

            <div class="container-fluid mt-3">
                <div class="row">
                    <div class="col-lg-12 col-sm-6">



                        <section class="vh-100" style="background-color:whitesmoke;font-size:22px">
                            <div class="container h-100">
                                <div class="row d-flex justify-content-center align-items-center h-auto">
                                    <div class="col-lg-12 col-xl-11">
                                        <div class="card text-black" style="border-radius: 25px;">
                                            <div class="card-body p-md-5">
                                                <div class="row justify-content-center">
                                                    <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                                                        <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Review 
                                                        </p>

                                                        <form class="mx-1 mx-md-4" enctype="multipart/form-data" method="post" action="review">
<%
	if(session.getAttribute("sms8")!=null) 
	{
		out.println("<h6><center><b style='color:red'>"+session.getAttribute("sms8")+"</b></h6></center>");
	}
	
%>

                                                            <div class="d-flex flex-row align-items-center mb-4">
                                                                <i class="fas fa-message fa-lg me-3 fa-fw"></i>
                                                                <div class="form-outline flex-fill mb-0"
                                                                    style="font-size:20px">
                                                                    <input type="text" required maxlength="150" name="sms" id="form3Example3c"
                                                                        class="form-control" > 
                                                                    <label class="form-label"
                                                                        for="form3Example3c">Message</label>
                                                                </div>
                                                            </div>




                                                            <div class="d-flex flex-row align-items-center mb-4">
                                                                <i class="fas fa-image fa-lg me-3 fa-fw"></i>
                                                                <div class="form-outline flex-fill mb-0"
                                                                    style="font-size:20px">
                                                                    <input type="file" name="img" id="form3Example4c"
                                                                        class="form-control" required/>
                                                                   
                                                                </div>
                                                            </div>



                                                            <div
                                                                class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                                                           		 <input type="submit" name="submit" value="Submit"
                                                  			  class="mt-5 mb-3" style="border:0;background-color:rgb(65,105,225);padding:8px;color:white;font-size:15px;width:50%;border-radius:10px">
                                                
                                                           </div>

                                                        </form>

	
                                                    </div>
                                                    <div
                                                        class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

                                                        <img src="images/review.jpg"
                                                            class="img-fluid" alt="Sample image">

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
                
                <%@include file="footer.jsp" %>
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

    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/5.0.0/mdb.min.js"></script>


    <script src="./js/dashboard/dashboard-1.js"></script>

</body>

</html>


<%
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
%>

