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
	  <%@include file="admin_header.jsp" %>
   

        <!--**********************************
            Content body start
        ***********************************-->
        <div class="content-body">

            <div class="row page-titles mx-0">
                <div class="col p-md-0">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0)" style="color:blue">Add Bike</a></li>
                        <li class="breadcrumb-item active"><a href="A_Index">Home</a></li>
                    </ol>
                </div>
            </div>
            <!-- row -->

            <div class="container-fluid">
                <div class="row justify-content-center">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="form-validation">
                                    <form action="A_add_bike" method="post" enctype="multipart/form-data">
  <%@page import="java.sql.*" %>                                  	
 <%
 
 	if(session.getAttribute("sms4")!=null)
 	{
 		out.println("<h6><center><b style='color:green'>"+session.getAttribute("sms4")+"</b></h6></center>");
 		
 	}
 Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/bike_shop";
	String uname="root";
	String pwd="";
	Connection con = DriverManager.getConnection(url,uname,pwd);
	
	String q="select * from company where company_removed='no' ";
	Statement st = con.createStatement();		
	ResultSet r = st.executeQuery(q);
	
 %>
                                    	
                                    	<div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-username">Company <span
                                                    class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <select  class="form-control" id="val-username"
                                                    name="company" >
  <%
  while(r.next())
	{
 
                                                    out.println("<option value='"+r.getString(2)+"'>"+r.getString(2)+"</option>");
                                                    
 
	}
  %>
                                                 </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" >Model name <span
                                                   class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="text" maxlength="150" class="form-control" 
                                                    required name="model">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" >Engine Capacity-cc<span
                                                    class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input required type="number" class="form-control" 
                                                    name="engine_capacity">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-email">Mileage in kmpl<span
                                                    class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input required type="number" class="form-control" id="val-email" name="mileage"
                                                   >
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-email">Max Speed in kmph<span
                                                    class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input  required type="number" class="form-control" id="val-email" name="max_speed"
                                                   >
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-username">Fuel Type <span
                                                    class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <select  class="form-control" id="val-username"
                                                    name="fuel_type" >
                                                    <option value="Petrol">Petrol</option>
                                                     <option value="Diesel">Diesel</option>
                                                   
                                                 </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-email">Fuel Tank Capacity in Liters <span
                                                    class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input required type="number" class="form-control" id="val-email" name="fuel_capacity"
                                                   >
                                            </div>
                                        </div>
                                        
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-email">Front Brack Type <span
                                                    class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                
                                                   <select  class="form-control" id="val-username"
                                                    name="front_brack" >
                                                    <option value="Drum brakes">Drum brakes</option>
                                                     <option value="Rim brakes">Rim brakes</option>
                                                     <option value="Disc brakes">Disc brakes</option>
                                                   
                                                 </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-email">Back Brack Type <span
                                                    class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                               
                                                    <select  class="form-control" id="val-username"
                                                    name="back_brack" >
                                                    <option value="Drum brakes">Drum brakes</option>
                                                     <option value="Rim brakes">Rim brakes</option>
                                                     <option value="Disc brakes">Disc brakes</option>
                                                   
                                                 </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-email">Wheel Type <span
                                                    class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                
                                                   <select  class="form-control" id="val-username"
                                                    name="wheel_type" >
                                                    <option value="Simple Still Wheels">Simple Still Wheels </option>
                                                     <option value="Aloy Wheels">Aloy Wheels</option>
                                                    
                                                 </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-email">Tyre Type <span
                                                    class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                
                                                  <select  class="form-control" id="val-username"
                                                    name="tyre_type" >
                                                    <option value="Tube">Tube</option>
                                                     <option value="Tubeless">Tubeless</option>
                                                     <option value="Bias-ply">Bias-ply</option>
                                                    <option value="Radial"> Radial</option>
                                                 </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-email">Seat Height in mm<span
                                                    class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="number" required class="form-control" id="val-email" name="seat_height"
                                                   >
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-email">Overall Width  in mm<span
                                                    class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="number"  required class="form-control" id="val-email" name="width"
                                                   >
                                            </div>
                                        </div>
                                         <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-email">Overall Height  in mm<span
                                                    class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="number" required class="form-control" id="val-email" name="height"
                                                   >
                                            </div>
                                        </div>
                                         <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-email">Overall Length  in mm<span
                                                    class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="number" required class="form-control" id="val-email" name="length"
                                                   >
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-password">Standard Warranty Years <span
                                                    class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="number" required class="form-control" id="val-password"
                                                    name="warranty" >
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-password">Services Years  <span
                                                    class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="number" required class="form-control" id="val-password"
                                                    name="services">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-password">Price in Rupees<span
                                                    class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="number" required class="form-control" id="val-password"
                                                    name="price" >
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-password">Discount in %  <span
                                                    class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="number" required class="form-control" id="val-password"
                                                    name="discount" >
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-password">EMI Payment<span
                                                    class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                               <select  class="form-control" id="val-username"
                                                    name="emi" >
                                                    <option value="Yes">Yes</option>
                                                     <option value="No">No</option>
                                                   
                                                 </select>
                                            </div>
                                        </div>
                                         <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-password">Payment Method<span
                                                    class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="text" maxlength="50" required class="form-control" id="val-password"
                                                    name="payment">
                                            </div>
                                        </div>
                                        
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-suggestions">About Bike
                                                <span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <textarea maxlength="250" class="form-control" required id="val-suggestions"
                                                    name="about" rows="5"
                                                   ></textarea>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-password">Date & Time<span
                                                    class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="date" required class="form-control" id="val-password"
                                                    name="date" >
                                            </div>
                                        </div>
                                        
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-password">Image 1<span
                                                    class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="file" required class="form-control" id="val-password"
                                                    name="img1" >
                                            </div>
                                        </div>
                                        
                                         <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-password">Image 2<span
                                                    class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="file" required class="form-control" id="val-password"
                                                    name="img2" >
                                            </div>
                                        </div>
                                        
                                         <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-password">Image 3<span
                                                    class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="file" required class="form-control" id="val-password"
                                                    name="img3" >
                                            </div>
                                        </div>
                                        
                                         <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-password">Image 4<span
                                                    class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="file" class="form-control" id="val-password"
                                                    name="img4" required >
                                            </div>
                                        </div>
                                        
                                         <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-password">Image 5<span
                                                    class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="file" class="form-control" id="val-password"
                                                    name="img5" required >
                                            </div>
                                        </div>
                                        
                                        
                                        <div class="form-group row">
                                            <div class="col-lg-8 ml-auto ">
                                                <input style="width:30%" type="submit" name="submit" value="Add" class="btn btn-primary my-5">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
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

    <script src="./plugins/validation/jquery.validate.min.js"></script>
    <script src="./plugins/validation/jquery.validate-init.js"></script>

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