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
                        <li class="breadcrumb-item"><a href="javascript:void(0)" style="color:blue">Add Branch</a></li>
                        <li class="breadcrumb-item active"><a href="A_Index">Home</a></li>
                    </ol>
                </div>
            </div>
            <!-- row -->
			
            <div class="container-fluid">

                <div class="container h-100">

                    <div class="col-xl-6 mb-5">
                        <div class="form-input-content">
                            <div class="card login-form mb-0">
                                <div class="card-body pt-5">

                                    <a class="text-center" href="index.html">
                                        <h4>Add Branches</h4>
                                    </a>
<%
if(session.getAttribute("sms10")!=null)
{
	out.println("<h5 style='color:red'><center>"+session.getAttribute("sms10")+"</center></h5>");
}
%>
                                    <form class="mt-5 mb-5 login-input"  method="post" action="A_add_branch">
                                        
                                        <div class="form-group">
                                            <input type="email" name="email"  maxlength="50" class="form-control" placeholder="Branch Email"
                                                required>
                                        </div>
                                         <div class="form-group">
                                            <input style="text-transform: capitalize "type="number" name="contact" placeholder="Branch Contact No."  class="form-control" required>
                                        </div>
                                        <div class="form-group">
                                             <select class="select form-control-lg" name="city">
                                                        <option value="1" disabled>Choose option</option>
                                                        <option value="Amreli">Amreli</option>
                                                        <option value="Ahmedabad">Ahmedabad</option>
                                                        <option value="Anand">Anand</option>
                                                        <option value="Aravalli">Aravalli</option>
                                                        <option value="Bharuch">Bharuch</option>
                                                        <option value="Bhavnagar">Bhavnagar</option>
                                                        <option value="Botad">Botad</option>
                                                        <option value="Chhota Udepur">Chhota Udepur</option>
                                                        <option value="Dahod">Dahod</option>
                                                        <option value="Dang">Dang</option>
                                                        <option value="Dwarka">Dwarka</option>
                                                        <option value="Gandhinagar">Gandhinagar</option>
                                                        <option value="Somnath">Somnath</option>
                                                        <option value="Jamnagar">Jamnagar</option>
                                                        <option value="Junagadh">Junagadh</option>
                                                        <option value="Kheda">Kheda</option>
                                                        <option value="Kutch">Kutch</option>
                                                        <option value="Mahisagar">Mahisagar</option>
                                                        <option value="Mehsana">Mehsana</option>
                                                        <option value="Morbi">Morbi</option>
                                                        <option value="Narmada">Narmada</option>
                                                        <option value="Navsari">Navsari</option>
                                                        <option value="Panchmahal">Panchmahal</option>
                                                        <option value="Patan">Patan</option>
                                                        <option value="Porbandar">Porbandar</option>
                                                        <option value="Rajkot">Rajkot</option>
                                                        <option value="Sabarkantha">Sabarkantha</option>
                                                        <option value="Surat">Surat</option>
                                                        <option value="Surendranagar">Surendranagar</option>
                                                        <option value="Tapi">Tapi</option>
                                                        <option value="Vadodara">Vadodara</option>
                                                        <option value="Valsad">Valsad</option>
                                                        <option value="Other">Other</option>
                                                    </select>
                                        </div>
                                         <div class="form-group">
                                            <textarea maxlength="50" style="text-transform: capitalize " name="address"  class="form-control"   placeholder="Branch Address"   required></textarea>
                                        </div>
                                        
                                        
                                        <button type="submit" name="submit"  class="btn login-form__btn submit w-100">Add Branch</button>
                                    </form>
                            </div>
                            </div>
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