<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Track.com</title>
 	 <link rel="icon" type="image/png" sizes="16x16" href="images/track2.png">
    <!-- Custom Stylesheet -->
    <link href="css/style.css" rel="stylesheet">

</head>
<%

if(session!=null)
{
	if(session.getAttribute("s2_u_mobile")!=null)
	{
			
				
%>

<body>
<%@include file="header.jsp" %>
        <!--**********************************
            Content body start
        ***********************************-->
        <div class="content-body">

            <div class="row page-titles mx-0">
                <div class="col p-md-0">
                    <ol class="breadcrumb">
                       </ol>
                </div>
            </div>
            <!-- row -->
 <%@page import="java.sql.*"  %>
<%
	
		try
		{
			String mobile1 = (String)(session.getAttribute("s2_u_mobile"));
			Class.forName("com.mysql.jdbc.Driver");
			
			String url = "jdbc:mysql://localhost:3306/bike_shop";
			String uname="root";
			String pwd="";
			Connection con = DriverManager.getConnection(url,uname,pwd);
			
			String q="select * from user where mobile_no='"+mobile1+"'";
			Statement st = con.createStatement();		
			ResultSet r = st.executeQuery(q);
			r.next();
		 	
			
			
					
		
%>
      
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-6 w-100">
                        <div class="card">
                            <div class="card-body">
                                <div class="media align-items-center mb-4">
                                    <% out.println("<img class='mr-3' src='uplod_images/"+r.getString(6)+"' width='80' height='80' alt='Admin pic'>");
                                    %><div class="media-body">
                                        <h3 class="mb-0"><%= r.getString(1)%></h3>
                                        <p class="text-muted mb-0"><%= r.getString(5)%></p>
                                    </div>
                                </div>

                                <div class="row mb-5">
                                    <div class="col">
                                        <div class="card card-profile text-center">
                                            <span class="mb-1 text-primary">
                                              <svg xmlns="http://www.w3.org/2000/svg"
                                                    width="25" height="25" fill="currentColor" class="bi bi-shop"
                                                    viewBox="0 0 16 16">
                                                    <path
                                                        d="M2.97 1.35A1 1 0 0 1 3.73 1h8.54a1 1 0 0 1 .76.35l2.609 3.044A1.5 1.5 0 0 1 16 5.37v.255a2.375 2.375 0 0 1-4.25 1.458A2.371 2.371 0 0 1 9.875 8 2.37 2.37 0 0 1 8 7.083 2.37 2.37 0 0 1 6.125 8a2.37 2.37 0 0 1-1.875-.917A2.375 2.375 0 0 1 0 5.625V5.37a1.5 1.5 0 0 1 .361-.976l2.61-3.045zm1.78 4.275a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 1 0 2.75 0V5.37a.5.5 0 0 0-.12-.325L12.27 2H3.73L1.12 5.045A.5.5 0 0 0 1 5.37v.255a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0zM1.5 8.5A.5.5 0 0 1 2 9v6h1v-5a1 1 0 0 1 1-1h3a1 1 0 0 1 1 1v5h6V9a.5.5 0 0 1 1 0v6h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1V9a.5.5 0 0 1 .5-.5zM4 15h3v-5H4v5zm5-5a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1h-2a1 1 0 0 1-1-1v-3zm3 0h-2v3h2v-3z" />
                                                </svg>

                                            </span>
                                            <h3 class="mb-0"><%= r.getString(9)%></h3>
                                            <p class="text-muted px-4">Total Order</p>
                                        </div>
                                    </div>


                                </div>

                                <h4>About User</h4>
                                <p class="text-muted"><%=r.getString(10)%></p>
                                <ul class="card-profile__info">
                                    <li class="mb-1"><strong class="text-dark mr-4">Mobile</strong> <span
                                            style="padding:5px"><%= r.getString(3)%></span></li>
                                    <li class="mb-1"><strong class="text-dark mr-4">Email</strong> <span
                                            style="padding:11px"><%= r.getString(2)%></span></li>
                                    <li class="mb-1"><strong class="text-dark mr-4">Gender</strong> <span><%= r.getString(4)%></span>
                                    </li>
                                    <li class="mb-1"><strong class="text-dark mr-2">Password</strong> <span><%= r.getString(7)%></span>
                                    </li>
                                </ul>
                                <div class="col-12 text-center">
                                    <%  out.println("<a href='Edit_profile?mobile_no="+r.getString(3)+"' class='btn btn-danger px-5'>Edit Detils</a>"); %>
                                </div>
                            </div>
                        </div>
                    </div>

<%
		}
catch(Exception e)
{
	out.println(e);
}
%>

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