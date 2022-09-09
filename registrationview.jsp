<%@page import="com.User.Userdao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



<div style="text-align: center; margin-top: 100px;">
<h2>User data</h2>
</div>
<%

List list=Userdao.getalldata();
request.setAttribute("list", list);

%>
	
<div style="margin-left: 35px; margin-right: 35px;">
<table border="5" width="100%" style="border-style: solid;">

<tr><th>Id</th><th>Name</th><th>Mobile</th><th>Gender</th><th>Email</th><th>Pincode</th></tr>

<c:forEach items="${list}" var="m">

<tr><td>${m.getId()}</td><td>${m.getName()}</td><td>${m.getMobile()}</td><td>${m.getGender()}</td><td>${m.getEmail()}</td><td>${m.getPincode()}</td></tr>

</c:forEach>


</table>
</div>
</body>
</html>