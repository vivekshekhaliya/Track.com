<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Track.com</title>
 	 <link rel="icon" type="image/png" sizes="16x16" href="images/track2.png">
    <meta charset="utf-8">
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
                        <li class="breadcrumb-item"><a href="javascript:void(0)" style="color:blue">Add Company</a></li>
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
                                        <h4>Add Company</h4>
                                    </a>
<%
if(session.getAttribute("sms9")!=null)
{
	out.println("<h5 style='color:red'><center>"+session.getAttribute("sms9")+"</center></h5>");
}
%>
                                    <form class="mt-5 mb-5 login-input" enctype="multipart/form-data" method="post" action="A_add_company">
                                        <div class="form-group">
                                            <input style="text-transform: capitalize "type="text"  name="name" class="form-control" placeholder="Comany Name" required>
                                        </div>
                                        <div class="form-group">
                                            <input type="email" name="email"  class="form-control" placeholder="Comany Email"
                                                required>
                                        </div>
                                        <div class="form-group">
                                            <input type="number" name="mobile"  class="form-control" placeholder="Comany Contact"
                                                required>
                                        </div>
                                        <div class="form-group">
                                            <input type="number" name="services"  class="form-control" placeholder="Overall Service in Year" required>
                                        </div>
                                        <div class="form-group">
                                            <input type="number" name="warranty" class="form-control" placeholder=" Overall Warranty in Year" required>
                                        </div>
                                        <div class="form-group">
                                            <input type="number" min="0" max="5" name="rate"  class="form-control" placeholder="National Ratting" required>
                                        </div>
                                        <div class="form-group">
                                            <input type="file" name="pic"  class="form-control" required>
                                        </div>
                                         <div class="form-group">
                                            <input style="text-transform: capitalize "type="text" name="country" placeholder="Company Country"  class="form-control" required>
                                        </div>
                                         <div class="form-group">
                                            <textarea  style="text-transform: capitalize " name="about"  class="form-control"   placeholder="About Company"   required></textarea>
                                        </div>
                                         <div class="form-group">
                                            <input type="number" name="user"   placeholder="Total international users in milion"   class="form-control" required>
                                        </div>
                                        <button type="submit" name="submit"  class="btn login-form__btn submit w-100">Add Company</button>
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