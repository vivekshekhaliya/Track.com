<!DOCTYPE html>
<html lang="en">

<head>
<title>Track.com</title>
 	 <link rel="icon" type="image/png" sizes="16x16" href="images/track2.png">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
   
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
     <%@include file="admin_header.jsp" %>

        <!--**********************************
            Content body start
        ***********************************-->
        <div class="content-body">

            <div class="row page-titles mx-0">
                <div class="col p-md-0">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0)" style="color:blue">Login</a></li>
                        <li class="breadcrumb-item active"><a href="A_Index">Home</a></li>
                    </ol>
                </div>
            </div>
            <!-- row -->
 <%@page import="java.sql.*"  %>
<%
	
		try
		{
			String mobile1 = (String)(session.getAttribute("s2_a_mobile"));
			Class.forName("com.mysql.jdbc.Driver");
			
			String url = "jdbc:mysql://localhost:3306/bike_shop";
			String uname="root";
			String pwd="";
			Connection con = DriverManager.getConnection(url,uname,pwd);
			
			String q="select * from admin where mobile_no='"+mobile1+"'";
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
                                                <li class="icon-people"></li>
                                            </span>
                                            <h3 class="mb-0">4048</h3>
                                            <p class="text-muted px-4">Total Customer</p>
                                        </div>
                                    </div>


                                </div>

                                <h4>About User</h4>
                                <p class="text-muted"><%=r.getString(8)%></p>
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
                                    <%  out.println("<a href='A_Edit_profile_2?mobile_no="+r.getString(3)+"' class='btn btn-danger px-5'>Edit Detils</a>"); %>
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
