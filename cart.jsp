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
                <div class="row mr-2 ml-2" style="border-top:1px solid black">
                    <div class="col-lg-12 mb-3 mt-2">
                        <table border=0 style="width:100%;height:100%;">
                            <tr>
                                

                                <td>
                                    <div class="mb-5"
                                        style="padding-top:10px;padding-right:30px;padding-left:0px;padding-bottom:0px">
                                        <b style="font-size:20px">Your  Cart &nbsp</b>
                                        <br><span style="font-size:10px"></span>
                                        </span>
                                    </div>

                                </td>
                            </tr>

                        </table>


                    </div>

                </div>
                <div class="row">
   <%
   String u_mobile = (String)(session.getAttribute("s2_u_mobile"));


      		
 try
	{
		
		Class.forName("com.mysql.jdbc.Driver");
		
		String url = "jdbc:mysql://localhost:3306/bike_shop";
		String uname="root";
		String pwd="";
		Connection con = DriverManager.getConnection(url,uname,pwd);
		
		String q="select * from cart_bike where user_mobile='"+u_mobile+"'";
		Statement st = con.createStatement();		
		ResultSet r = st.executeQuery(q);
		while(r.next())
		{
 %>
                            <div class="col-lg-3">
                                	<div class="card">
			                             <div style="display: flex; height: 200px; align-items: center; justify-content: center;">
			                                <% out.println("<img src='bike_images/"+r.getString(6)+"' class='card-img-top' style='width:100%;height:100%; justify-item:center' alt='Bike image'>"); %>
			                            </div>
                                           
                                    
                                     <div class="card-body">
		                                <h5 class="card-title"><%=r.getString(4) %></h5>
		                                <p class="card-text"><%=r.getString(5) %></p>
		                                <% out.println("<a href='Remove_cart?bike_id="+r.getString(1) +"' class='btn btn-primary'>Remove</a>");%>
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
		response.sendRedirect("Login");
	}
}
else
{
	response.sendRedirect("Login");
}
%>