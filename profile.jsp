<%@page import="com.User.Model"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Au Register Forms by Colorlib</title>

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
<%try
 {
 %> 
 
 <%!Model m; %>
 <%
 
 m=(Model)session.getAttribute("viral");
 
 %>
 
 <%
    
    response.setHeader("cache-control", "no-cache");
    response.setHeader("cache-control", "no-store");
    response.setHeader("pragma", "no-cache");
    response.setDateHeader("Expires", 0);
    
    %> 
    
    <%!String name; %>      
<%
 
 if(session!=null)
 {
     if(session.getAttribute("viral")!=null)
	 {
		 name = session.getAttribute("viral").toString();
	
 %>                 
<div class="page-wrapper bg-blue p-t-100 p-b-100 font-robo" style="background: #DCDCDC; font-size: 20px;">
        <div class="wrapper wrapper--w680">
            <div class="card card-1">
                
                <div class="card-body">
                    <h2 class="title" style="font-size: 30px;">Your Profile</h2>
                    <form action="insert.jsp" method="POST">
						<div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <%=m.getName()%>
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <%=m.getGender()%>
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                   <%=m.getEmail()%>
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                  <%=m.getPincode()%>
                                </div>
                            </div>
                        </div>
                        
                </form>
                    <a href="Logout.jsp"><button class="btn btn--radius btn--green" type="submit">Logout</button></a>
                    
                   
                    </a>
                </div>
            </div>
        </div>
    </div>
 <%
	 }
	 else
	 {
		 response.sendRedirect("index.jsp");
	 }
 }
 else
 {
	 response.sendRedirect("index.jsp");
 }
%>
                        
                    
<%
 }
 catch(Exception e)
 {
	 e.printStackTrace();
 }
 %>  

    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>
<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>