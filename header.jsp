
        <!--*******************
        Preloader start
    ********************-->
        <div id="preloader">
            <div class="loader">
                <svg class="circular" viewBox="25 25 50 50">
                    <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="3" stroke-miterlimit="10" />
                </svg>
            </div>
        </div>
        <!--*******************
        Preloader end
    ********************-->


        <!--**********************************
        Main wrapper start
    ***********************************-->
        <div id="main-wrapper">

            <!--**********************************
            Nav header start
        ***********************************-->
            <div class="nav-header">
                <div class="brand-logo">
                    <a href="index.jsp">

                        <span class="brand-title">
                            <h2 style="color:white">Track.<small>com</small></h2>
                        </span>
                    </a>
                </div>
            </div>
            <!--**********************************
            Nav header end
        ***********************************-->

            <!--**********************************
            Header start
        ***********************************-->
            <div class="header">
                <div class="header-content clearfix">

                    <div class="nav-control">
                        <div class="hamburger">
                            <span class="toggle-icon"><i class="icon-menu"></i></span>
                        </div>
                    </div>
                    <div class="header-left">
                        <div class="input-group icons">
                            <div class="input-group-prepend">
                                <span class="input-group-text bg-transparent d-none d-md-flex border-0 pr-2 pr-sm-3" id="basic-addon1"><i
                                        class="mdi mdi-magnify"></i></span>
                            </div>
                            <input type="search" class="form-control" placeholder="Search Dashboard"
                                aria-label="Search Dashboard">
                            <div class="drop-down animated flipInX d-md-none">
                                <form action="#">
                                    <input type="text" class="form-control" placeholder="Search">
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="header-right">



                        <li class="icons dropdown d-none d-md-flex">
                            <a href="javascript:void(0)" class="log-user " data-toggle="dropdown">
                                <span >English</span> <i class="fa fa-angle-down f-s-14" aria-hidden="true"></i>
                            </a>
                            <div class="drop-down dropdown-language animated fadeIn  dropdown-menu">
                                <div class="dropdown-content-body ">
                                    <ul>
                                        <li><a href="javascript:void()">English</a></li>

                                    </ul>
                                </div>
                            </div>
                        </li>
                        
<%
	if(session.getAttribute("s2_u_mobile")!=null) 
	{
		String img= (String)session.getAttribute("s3_u_pic");
		String img2="upload_images/"+img;
%>
                        <li class="icons dropdown">
                            <div class="user-img c-pointer position-relative" data-toggle="dropdown">
                                <span class="activity active"></span>
                                <% out.println("<img src='uplod_images/"+img+"' height='40' width='40' style='border-radius:50%'>");%>
                            </div>
                            <div class="drop-down dropdown-profile animated fadeIn dropdown-menu">
                                <div class="dropdown-content-body">
                                    <ul>
                                        <li>
                                            <a href="Profile"><i class="icon-user"></i> <span>Profile</span></a>
                                        </li>



                                        <li><a href="Logout"><i class="icon-key"></i> <span>Logout</span></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>
<%
	}
	else
	{
%>
						 <li class="icons dropdown d-md-flex animated fadeIn">
                            <a href="Login" style="color:blue" class="mb-2" >
                                <span>Sign in</span>   
                            </a>
                            <b class="icons dropdown d-md-flex animated fadeIn mb-2">or</b>
                              <a href="Signup" style="color:blue" class="mb-2" >
                                <span>Sign up</span>   
                            </a>
                            
                        </li>
<%
	}
%>    
                        </ul>
                    </div>
                </div>
            </div>
            <!--**********************************
            Header end ti-comment-alt
        ***********************************-->

            <!--**********************************
            Sidebar start
        ***********************************-->
            <div class="nk-sidebar">
                <div class="nk-nav-scroll">
                    <ul class="metismenu" id="menu">
                        <li aria-expanded="false">
                       	 	<li ><a  class="icon-home   "href="index.jsp"> <span class="nav-text"><b>Home</b></span> </a></li>

                        </li>


                        <li class="nav-label">Products</li>

                        
                        <li>
                            <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                                <i class="fa fa-bicycle mb-1"></i> <span class="nav-text">Bikes</span>
                            </a>
                            <ul aria-expanded="false">

<%@page import="java.sql.*"  %>
<%
	
		try
		{
			
			Class.forName("com.mysql.jdbc.Driver");
			String url20 = "jdbc:mysql://localhost:3306/bike_shop";
			String uname20="root";
			String pwd20="";
			Connection con20 = DriverManager.getConnection(url20,uname20,pwd20);
			
			String q20="select * from company where company_removed='no' ";
			Statement st20 = con20.createStatement();		
			ResultSet r220 = st20.executeQuery(q20);
			while(r220.next())
		 	{
			
			
					
		
										
					                          out.println(" <li><a href='Company_bike?company="+r220.getString(2)+"'>"+r220.getString(2)+"</a></li>");
		 	}
		}
		catch(Exception e20)
		{
			out.println(e20);
		}
	%>

                            </ul>
                        </li>

                        <li class="nav-label">Favourite</li>
                        <li>
                            <a href="Cart" aria-expanded="false">
                                <i class="icon-heart menu-icon mb-1"></i><span class="nav-text">Favourite Bikes</span>
                            </a>
                        </li>



					 <li>
                            <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                                <i class="fa fa-star mb-1"></i> <span class="nav-text">Review</span>
                            </a>
                            <ul aria-expanded="false">
                            	<li><a href="Review">Give Review</a></li>
                            	<li><a href="U_Review">Given Review</a></li>
		 	
                            </ul>
                    </li>

                       

                        <li class="nav-label">About Us</li>
                        <li>
                            <a href="About" aria-expanded="false">
                                <i class="icon-badge menu-icon mb-1"></i><span class="nav-text">About Us</span>
                            </a>
                        </li>


                        <li class="nav-label">Showrrom Details</li>
                        <li>
                            <a href="Showroom_details" aria-expanded="false">
                                <i class="icon-screen-tablet menu-icon mb-1"></i><span class="nav-text">Showroom
                                    Details</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <!--**********************************
            Sidebar end
        ***********************************-->

