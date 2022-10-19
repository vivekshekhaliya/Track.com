<!DOCTYPE html>
<html lang="en">

<head>
<title>Track.com</title>
 	 <link rel="icon" type="image/png" sizes="16x16" href="images/track2.png">
    <meta charset="utf-8">
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
			
			String q="select * from bikes where company='"+company+"' and comapny_removed='no' and  bike_remove='no' ";
			Statement st = con.createStatement();		
			ResultSet r = st.executeQuery(q);
			try
			{
				
				String q2="select * from company where company_name='"+company+"' and company_removed='no'  ";
				Statement st2 = con.createStatement();		
				ResultSet r2 = st2.executeQuery(q2);
				r2.next();
			
					
		
%>


 <%@include file="admin_header.jsp" %>
        <!--**********************************
            Content body start
        ***********************************-->
        <div class="content-body">

            <div class="row page-titles mx-0">
                <div class="col p-md-0">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0)" style="color:blue">Bike Details</a></li>
                        <li class="breadcrumb-item active"><a href="A_Index">Home</a></li>
                    </ol>
                </div>
            </div>
            <!-- row -->

            <div class="container-fluid">


                <div class="row  mr-2 ml-2 " style="border-top:1px solid black ">
                    <div class="col-12 m-b-30 mb-2 mt-1">
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
                        </div></div>
                        <div class="row ">
                    <div class="col-12 m-b-30">
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
                            <div class="col-md-6 col-lg-3">
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
                                        <h5 class="card-title"><%=r.getString(2) %></h5>
                                        <p class="card-text"><%=r.getString(3) %></p>
                                        <p class="card-text"><small class="text-muted">Last updated <%=r.getString(24) %></small>
                                        </p>
                                        <div style="display: flex;flex-direction: column;align-items: left; justify-content: center;
   											align-content: center;flex-wrap: nowrap;">
                                          <% out.println("<a href='A_Edit_bike?bike_id="+r.getString(1)+"'  class='btn mb-1 btn-primary pl-5 pr-5' style='color:white'> Edit <span class='btn-icon-right'><i class='fa fa-edit'></i></span></a>");
                                          	out.println("<a href='A_Delete_bike?bike_id="+r.getString(1)+"'  class='btn mb-1 btn-primary pl-5 pr-5' style='color:white'> Remove <span class='btn-icon-right'><i class='fa fa-edit'></i></span></a>");
                                            %>
                                        </div>
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
                    </div>

                </div>
                <!-- End Row -->
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
            <p>Copyright &copy; Designed & Developed by <b style="color:blue">Ronak Shekhaliya</b>
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
	response.sendRedirect("A_Index");
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