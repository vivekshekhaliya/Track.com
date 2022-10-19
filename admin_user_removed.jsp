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
                        <li class="breadcrumb-item"><a href="javascript:void(0)" style="color:blue">Removed Users</a></li>
                        <li class="breadcrumb-item active"><a href="A_Index">Home</a></li>
                    </ol>
                </div>
            </div>
            <!-- row -->

            <div class="container-fluid">
                <div class="row">
 <%@page import="java.sql.*"  %>
<%
	
		try
		{
			
			Class.forName("com.mysql.jdbc.Driver");
			
			String url = "jdbc:mysql://localhost:3306/bike_shop";
			String uname="root";
			String pwd="";
			Connection con = DriverManager.getConnection(url,uname,pwd);
			
			String q="select * from user where user_removed='yes' ";
			Statement st = con.createStatement();		
			ResultSet rs = st.executeQuery(q);
			while(rs.next())
		 	{
			
			
					
		
%>
                    <div class="col-lg-4 col-xl-3 w-100">
                        <div class="card">
                            <div class="card-body">
                                <div class="media align-items-center mb-4">
                                    <%   out.println("<img class='mr-3' src='uplod_images/"+rs.getString(6)+"' width='80' height='80' alt='User image'>");%> 
                                <div class="media-body">
                                        <h3 class="mb-0"><%=rs.getString(1) %></h3>
                                        <p class="text-muted mb-0"><%=rs.getString(5) %></p>
                                    </div>
                                </div>

                                <div class="row mb-5">
                                    <div class="col">
                                        <div class="card card-profile text-center">
                                            <span class="mb-1 text-primary"><svg xmlns="http://www.w3.org/2000/svg"
                                                    width="25" height="25" fill="currentColor" class="bi bi-shop"
                                                    viewBox="0 0 16 16">
                                                    <path
                                                        d="M2.97 1.35A1 1 0 0 1 3.73 1h8.54a1 1 0 0 1 .76.35l2.609 3.044A1.5 1.5 0 0 1 16 5.37v.255a2.375 2.375 0 0 1-4.25 1.458A2.371 2.371 0 0 1 9.875 8 2.37 2.37 0 0 1 8 7.083 2.37 2.37 0 0 1 6.125 8a2.37 2.37 0 0 1-1.875-.917A2.375 2.375 0 0 1 0 5.625V5.37a1.5 1.5 0 0 1 .361-.976l2.61-3.045zm1.78 4.275a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 1 0 2.75 0V5.37a.5.5 0 0 0-.12-.325L12.27 2H3.73L1.12 5.045A.5.5 0 0 0 1 5.37v.255a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0zM1.5 8.5A.5.5 0 0 1 2 9v6h1v-5a1 1 0 0 1 1-1h3a1 1 0 0 1 1 1v5h6V9a.5.5 0 0 1 1 0v6h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1V9a.5.5 0 0 1 .5-.5zM4 15h3v-5H4v5zm5-5a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1h-2a1 1 0 0 1-1-1v-3zm3 0h-2v3h2v-3z" />
                                                </svg></span>
                                            <h3 class="mb-0"><%=rs.getString(9) %></h3>
                                            <p class="text-muted px-4">Total Ordered</p>
                                        </div>
                                    </div>


                                </div>

                                <h4>About User</h4>
                                <p class="text-muted"><%=rs.getString(10) %></p>
                                <ul class="card-profile__info">
                                    <li class="mb-1"><strong class="text-dark mr-4">Mobile</strong> <span
                                            style="padding:5px"><%=rs.getString(3) %></span></li>
                                    <li class="mb-1"><strong class="text-dark mr-4">Email</strong> <span
                                            style="padding:11px"><%=rs.getString(2) %></span></li>
                                    <li class="mb-1"><strong class="text-dark mr-4">Gender</strong> <span><%=rs.getString(4) %></span>
                                    </li>
                                </ul>
                                <div class="col-12 text-center">
                                  <%out.println("<a href='A_Restore_user?mobile_no="+rs.getString(3)+"' class='btn btn-danger px-5'>Restore</a>"); %>
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
<%@include file="admin_footer.jsp" %>
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