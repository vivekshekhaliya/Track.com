<!DOCTYPE html>
<html lang="en">

<head>
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

<%@page import="java.sql.*"  %>
<%
	String company = request.getParameter("company");
	if(company!=null)
	{
		 try
			{
				
				Class.forName("com.mysql.jdbc.Driver");
				
				String url = "jdbc:mysql://localhost:3306/bike_shop";
				String uname="root";
				String pwd="";
				Connection con = DriverManager.getConnection(url,uname,pwd);
				
				String q="select * from bikes where company='"+company+"' and comapny_removed='no' and bike_remove='no' ";
				Statement st = con.createStatement();		
				ResultSet r = st.executeQuery(q);
				try
				{
					
					String q2="select * from company where company_name='"+company+"' and company_removed='no'  ";
					Statement st2 = con.createStatement();		
					ResultSet r2 = st2.executeQuery(q2);
					r2.next();
				
				
%>


 <%@include file="header.jsp" %>

        <!--**********************************
            Content body start
        ***********************************-->
        <div class="content-body">

            <div class="container-fluid mt-3">
                <div class="row mr-2 ml-2" style="border-top:1px solid black">
                    <div class="col-lg-12 mb-3 mt-2">
                        <table border=0 style="width:100%;height:100%;">
                            <tr>
                                <td style="width:5%;">
                                    <div class="mb-5">
                                       <%  out.println("<img src='uplod_images/"+r2.getString(8)+"' width='100%' height='100%' alt='Company Logo' />");%>
                                    </div>

                                </td>

                                <td>
                                    <div class="mb-5"
                                        style="padding-top:20px;padding-right:30px;padding-left:20px;padding-bottom:0px">
                                        <b style="font-size:20px"> <%=r2.getString(2) %> &nbsp</b>
                                        <br><span style="font-size:10px"></span>
                                        Suggestion for you</span>
                                    </div>

                                </td>
                            </tr>

                        </table>


                    </div>

                </div>
                <div class="row">
   <%
				}
				catch(Exception e1)
				{
					out.println(e1);
				}
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
		                                <h5 class="card-title"><%=r.getString(3) %></h5>
		                                <p class="card-text"><%=r.getString(19) %></p>
		                                <% out.println("<a href='Bike_details?bike_id="+r.getString(1) +"' class='btn btn-primary'>More Details</a>");%>
		                            </div>
		                            </div>
                                   </div>
                              
<%
 		} 
	}
	catch(Exception e)
	{
		out.println("Somethong wrong");
		out.println(e);
	}
	
%>
                   
                    </div>
                
                 <%@include file="footer.jsp" %>
                 </div>
            </div>
            <!-- #/ container -->
       
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
	else
	{
		response.sendRedirect("index");
	}
%>