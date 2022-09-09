<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- Icons font CSS-->
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/main.css" rel="stylesheet" media="all">
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>
<%
    
    response.setHeader("cache-control", "no-cache");
    response.setHeader("cache-control", "no-store");
    response.setHeader("pragma", "no-cache");
    response.setDateHeader("Expires", 0);
    
    %>
    <%
    		if(session.getAttribute("viral")==null)
    		{
    	%>


<div class="page-wrapper bg-blue p-t-100 p-b-100 font-robo" style="background: #DCDCDC;">
        <div class="wrapper wrapper--w680">
            <div class="card card-1">
                <div class="card-heading" style="background-image: url('images/nature.jpg');"></div>
                <div class="card-body">
                    <h2 class="title" style="font-size: 30px;">Login</h2>
                    <form action="LoginController" method="POST">
                         <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <input class="input--style-1" type="text" placeholder="USERNAME" name="name">
                                </div>
                            </div>
                        </div>
                       
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <input class="input--style-1" type="password" placeholder="PASSWORD" name="pass">
                                </div>
                            </div>
                        </div>
                        <div class="p-t-20">
                            <button class="btn btn--radius btn--green" type="submit">Login</button>
                        </div><br>
                       
                    </form>
                     <div class="form-group form-button">
                               don't have accoount?<a href="register.jsp" class="signup-image-link">Register</a>
                            </div>
                </div>
            </div>
        </div>
    </div>
 <%
    	}
    	else{
    		response.sendRedirect("profile.jsp");
    	}
%>  
<jsp:include page="footer.jsp"></jsp:include>
 

</body>

</html>