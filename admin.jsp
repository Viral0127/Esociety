<%@page import="com.User.Model"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:include page="adminheader.jsp"></jsp:include>


			
	<div class="row" >
		<div class="col pay-4"  >
		<div style="text-align: center; padding: 200px;">
						<a href="addhouse2.jsp"><button
						style="background-color: black; height: 120px; color: white; width: 150px; font-size: medium; border-radius: 15px;">Add
						House</button></a> 
						<a href="housetable.jsp"><button
						style="background-color: black; height: 120px; color: white; width: 150px;; font-size: medium; border-radius: 15px; margin-right: 50px; margin-left: 50px;">
						Registered house</button></a> 
						<a href="registrationview.jsp"><button
						style="background-color: black; height: 120px; color: white; width: 150px; font-size: medium; border-radius: 15px;">
						Register details</button></a>
			</div>
		</div>
	</div>

	<jsp:include page="adminfooter.jsp"></jsp:include>
	

</body>
</html>