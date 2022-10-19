  
  
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
	if(session.getAttribute("s2_a_mobile")!=null) 
	{
		String img30= (String)session.getAttribute("s3_a_pic");
		String img230="upload_images/"+img30;
%>
                        <li class="icons dropdown">
                            <div class="user-img c-pointer position-relative" data-toggle="dropdown">
                                <span class="activity active"></span>
                                <% out.println("<img src='uplod_images/"+img30+"' height='40' width='40' style='border-radius:50%'>");%>
                            </div>
                            <div class="drop-down dropdown-profile animated fadeIn dropdown-menu">
                                <div class="dropdown-content-body">
                                    <ul>
                                        <li>
                                            <a href="A_Profile"><i class="icon-user"></i> <span>Profile</span></a>
                                        </li>



                                        <li><a href="A_Logout"><i class="icon-key"></i> <span>Logout</span></a>
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
                            <a href="A_Login" style="color:blue" class="mb-2" >
                                <span>Sign in</span> 
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
                    <li><a href="A_Index"  class="icon-home menu-icon "><b class="nav-text ml-3">Home </b></a></li>

                    </li>


                    <li class="nav-label">Products</li>
                    <li>
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-grid menu-icon mb-1"></i> <span class="nav-text">Bike Companys</span>
                        </a>
                        <ul aria-expanded="false">

                            <li><a href="A_Comapny_details">Current All Companys</a></li>
                            <li><a href="A_Add_company">Add Companys</a></li>
                            <li><a href="A_Company_removed">Removed Companys</a></li>
                        </ul>
                    </li>
                    <li>
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="fa fa-bicycle mb-1"></i> <span class="nav-text">Bikes</span>
                        </a>
                        <ul aria-expanded="false">

									<ul aria-expanded="false">
									<li>
			                       <a class="has-arrow" href="javascript:void()" aria-expanded="false">
			                          <span class="nav-text">View All Bikes</span>
			                       </a>
			                    
			                       
					                       <ul aria-expanded="false">
<%@page import="java.sql.*"  %>
<%
	
		try
		{
			
			Class.forName("com.mysql.jdbc.Driver");
			String url30 = "jdbc:mysql://localhost:3306/bike_shop";
			String uname30="root";
			String pwd30="";
			Connection con30 = DriverManager.getConnection(url30,uname30,pwd30);
			
			String q30="select * from company where company_removed='no' ";
			Statement st30 = con30.createStatement();		
			ResultSet r30 = st30.executeQuery(q30);
			while(r30.next())
		 	{
			
			
					
		
										
					                          out.println(" <li><a href='A_Bike_details?company="+r30.getString(2)+"'>"+r30.getString(2)+"</a></li>");
		 	}
		}
		catch(Exception e30)
		{
			out.println(e30);
		}
	%>
					                       </ul>
			                          </li>
			                          </ul>
			                       
                            <li><a href="A_Add_bike">Add Bikes</a></li>
                            <li><a href="A_Bike_removed">Removed Bikes</a></li>
                        </ul>
                    </li>






                    <li class="nav-label">Users</li>
                    <li>
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-people menu-icon"></i><span class="nav-text">User</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="A_User_profile">Current Users</a></li>
                            <li><a href="A_User_removed">Removed Users</a></li>
                        </ul>
                    </li>
                    <li class="nav-label">Showrrom Information</li>
                    <li>
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-screen-tablet menu-icon mb-1"></i> <span class="nav-text">Showroom</span>
                        </a>
                        <ul aria-expanded="false">

                            <li><a href="A_Showroom_details">Shoroom Details</a></li>
                            <li><a href="A_Add_branches">Add Branches</a></li>
                            
                        </ul>
                    </li>
                    <li class="nav-label">Enquiry</li>
                    <li>
                        <a href="A_user_enquiry" aria-expanded="false">
                            <i class="icon-envelope menu-icon mb-1"></i><span class="nav-text">Users Enquiry</span>
                        </a>
                    </li>
					
                    <li class="nav-label">Users Review</li>
                    <li>
                        <a href="User_review" aria-expanded="false">
                            <i class="icon-star menu-icon mb-1"></i><span class="nav-text">Users Review</span>
                        </a>
                    </li>

                    <li class="nav-label">About Us</li>
                    <li>
                        <a href="A_About" aria-expanded="false">
                            <i class="icon-badge menu-icon mb-1"></i><span class="nav-text">About Us</span>
                        </a>
                    </li>

                    <li class="nav-label">Sells</li>
                    <li>
                        <a href="A_About_sell" aria-expanded="false">
                            <i class="icon-badge menu-icon mb-1"></i><span class="nav-text">About Sells</span>
                        </a>
                    </li>

                   
                    
                    
                  
                </ul>
            </div>
        </div>
        <!--**********************************
            Sidebar end
        ***********************************-->
