<!DOCTYPE html>
<html lang="en">

<head>
	 	<title>Track.com</title>
 	 <link rel="icon" type="image/png" sizes="16x16" href="images/track2.png">
	    <%@include file="head.jsp" %>
        <!-- Font Awesome -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />
        <!-- MDB -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/5.0.0/mdb.min.css" rel="stylesheet" />

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
<%
	if(session.getAttribute("s2_u_mobile")==null)
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
                        <div class="card text-black" style="border-radius: 25px;">
                            <div class="card-body p-md-5">
                                <div class="row justify-content-center">
                                    <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                                        <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign up</p>

                                        <form enctype="multipart/form-data" class="mx-1 mx-md-4" method="post" action="signup">

                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <input type="text" id="form3Example1c" name="name"
                                                        class="form-control" required />
                                                    <label class="form-label" for="form3Example1c">Your Name</label>
                                                </div>
                                            </div>

                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <input type="text" required name="email" id="form3Example3c"
                                                        class="form-control" />
                                                    <label class="form-label" for="form3Example3c">Your Email</label>
                                                </div>
                                            </div>

                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-phone fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <input type="tel" required name="mobile" id="form3Example3c"
                                                        class="form-control" />
                                                    <label class="form-label" for="form3Example3c">Mobile No</label>
                                                </div>
                                            </div>

                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-male fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">


                                                    <div class="form-group  mt-4">
                                                        <label class="radio-inline mr-3">
                                                            <input type="radio" value="Male" checked name="gender"> Male</label>
                                                        <label class="radio-inline mr-3">
                                                            <input type="radio" value="Female" name="gender">Female</label>

                                                    </div>
                                                </div>
                                            </div>

                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-city fa-lg me-3 fa-fw"></i>
                                                <div class="w-100">
                                                    <select class="select form-control-lg" name="city">
                                                        <option value="1" disabled>Choose option</option>
                                                        <option value="Amreli">Amreli</option>
                                                        <option value="Ahmedabad">Ahmedabad</option>
                                                        <option value="Anand">Anand</option>
                                                        <option value="Aravalli">Aravalli</option>
                                                        <option value="Bharuch">Bharuch</option>
                                                        <option value="Bhavnagar">Bhavnagar</option>
                                                        <option value="Botad">Botad</option>
                                                        <option value="Chhota Udepur">Chhota Udepur</option>
                                                        <option value="Dahod">Dahod</option>
                                                        <option value="Dang">Dang</option>
                                                        <option value="Dwarka">Dwarka</option>
                                                        <option value="Gandhinagar">Gandhinagar</option>
                                                        <option value="Somnath">Somnath</option>
                                                        <option value="Jamnagar">Jamnagar</option>
                                                        <option value="Junagadh">Junagadh</option>
                                                        <option value="Kheda">Kheda</option>
                                                        <option value="Kutch">Kutch</option>
                                                        <option value="Mahisagar">Mahisagar</option>
                                                        <option value="Mehsana">Mehsana</option>
                                                        <option value="Morbi">Morbi</option>
                                                        <option value="Narmada">Narmada</option>
                                                        <option value="Navsari">Navsari</option>
                                                        <option value="Panchmahal">Panchmahal</option>
                                                        <option value="Patan">Patan</option>
                                                        <option value="Porbandar">Porbandar</option>
                                                        <option value="Rajkot">Rajkot</option>
                                                        <option value="Sabarkantha">Sabarkantha</option>
                                                        <option value="Surat">Surat</option>
                                                        <option value="Surendranagar">Surendranagar</option>
                                                        <option value="Tapi">Tapi</option>
                                                        <option value="Vadodara">Vadodara</option>
                                                        <option value="Valsad">Valsad</option>
                                                        <option value="Other">Other</option>
                                                    </select>
                                                </div>
                                            </div>
												
												
												<div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-file fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <input type="file" required name="pic" id="form3Example4c"
                                                        class="form-control" />
                                                         
                                                </div>
                                            </div>
											
											 <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <textarea name="about" id="form3Example4cd"
                                                        class="form-control" required></textarea>
                                                    <label class="form-label" for="form3Example4cd">About your self</label>
                                                </div>
                                            </div>

                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <input type="password" name="pwd" id="form3Example4c"
                                                        class="form-control"  required/>
                                                    <label class="form-label" for="form3Example4c">Password</label>
                                                </div>
                                            </div>

                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <input type="password" name="c_pwd" id="form3Example4cd"
                                                        class="form-control" required/>
                                                    <label class="form-label" for="form3Example4cd">Repeat your
                                                        password</label>
                                                </div>
                                            </div>

                                             <div style="float:left">
                                                                <b><input type="checkbox" class="mr-3" name="agree" value="agree"/></b>
															</div>
															<div>
                                                                <span > I agree all statements in <a
                                                                        class="" style="color:lightblue"
                                                                        href="#!">Terms of service</a>
                                                                </span>
                                                                </div>
                                                           
                                            <div class="d-flex justify-content-center ">
                                                <input type="submit" name="submit" value="REGISTER"
                                                    class="mt-5 mb-3" style="border:0;background-color:rgb(65,105,225);padding:8px;color:white;font-size:15px;width:50%;border-radius:10px">
                                           </div>
									</form>

<%
	if(session.getAttribute("sms")!=null) 
	{
		out.println("<h6><center><b style='color:red'>"+session.getAttribute("sms")+"</b></h6></center>");
	}
	
%>


                                        

                                    </div>
                                    <div
                                        class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

                                        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp"
                                            class="img-fluid" alt="Sample image">

                                    </div>
                                </div>
                            </div>
                        </div>
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
		session.invalidate(); 
		response.sendRedirect("Signup");
	}
%>
