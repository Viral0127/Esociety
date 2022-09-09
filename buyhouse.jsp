<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<div style="text-align: center; margin-top: 20px; font-size: 40px;">

<h2>Select City</h2>

</div>

<div class="row" >
		<div class="col pay-4"  >
		<div style="text-align: center; padding: 100px;">
						<a href="viewbycity.jsp?hcity=Rajkot"><button
						style="background-color: black; height: 120px; color: white; width: 150px; font-size: medium; border-radius: 15px;">Rajkot</button></a> 
						<a href="viewbycity.jsp?hcity=Jamnagar"><button
						style="background-color: black; height: 120px; color: white; width: 150px;; font-size: medium; border-radius: 15px; margin-right: 50px; margin-left: 50px;">
						Jamnagar</button></a> 
						<a href="viewbycity.jsp?hcity=Morbi"><button
						style="background-color: black; height: 120px; color: white; width: 150px; font-size: medium; border-radius: 15px;">
						Morbi</button></a>
			</div>
		</div>
	</div>
	
	

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>