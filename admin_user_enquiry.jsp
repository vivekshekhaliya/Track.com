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

<%
if(session!=null)
{
	if(session.getAttribute("s2_a_mobile")!=null)
	{
%>
<%@page import="java.sql.*" %>
<% 
	
	String a_mobile1 = (String)(session.getAttribute("s2_a_mobile"));
	if(a_mobile1!=null)
	{
	
		 try
			{
				
				Class.forName("com.mysql.jdbc.Driver");
				
				String url = "jdbc:mysql://localhost:3306/bike_shop";
				String uname="root";
				String pwd="";
				Connection con = DriverManager.getConnection(url,uname,pwd);
				
				String q="select * from user_enquiry  ";
				Statement st = con.createStatement();		
				ResultSet r2 = st.executeQuery(q);
				
				
				
				
%>


		<%@include file="admin_header.jsp" %>
        <!--**********************************
            Content body start
        ***********************************-->
        <div class="content-body">

            <div class="container-fluid mt-3 ">
               
               
                <div class="row">

                    <div class="col-lg-12 col-sm-6 ">
                     <div style="border-bottom:1px solid #C0C0C0 " class="mb-4"></div>
                        <h3 class="b-goods-f__title mb-4  ">Users Enquiry</h3>

                       

<%
	
		
		
			while(r2.next())
			{
					
		
%>

				<div class="card" style="width:20rm;">
				  <div class="card-body">
				  <div class="row">
				 
				  <div class="col-lg-10">
				    <h5 class="card-text pt-2">Name : <%=r2.getString(2) %></h5>
				 
				    <h5 class="card-text pt-2">Email  : <%=r2.getString(3) %></h5>
				    
				    <h5 class="card-text pt-2">Mobile no. : <%=r2.getString(4) %></h5>
				    
				    <p class="card-text pt-2">Enquiry :  <%=r2.getString(5) %></p>
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
<%@include file="admin_footer.jsp" %>
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
	else
	{
		response.sendRedirect("A_Login");
	}
%>


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