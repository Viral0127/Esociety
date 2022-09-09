<%@page import="com.house.Housemodel"%>

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
<%@page import="com.house.Housedao"%>
<%@page import="java.util.List"%>
<%
	List list = Housedao.getAll();
	request.setAttribute("v", list);
%>
<div style="text-align: center; margin-top: 100px;">
<h2>House List</h2>
</div>
<div style="margin-left: 35px; margin-right: 35px; margin-top: 5%; margin-bottom: 5%;">
<table border="2" width="100%" style="border-style: solid;">

<tr><th>owner firstname</th>
<th>Owner lastname</th>
<th>Mobile</th>
<th>Email</th>
<th>House name</th>
<th>Society name</th>
<th>address</th>
<th>pincode</th>
<th>City</th>
<th>House status</th>
<th>House type</th>
<th>House area</th>
<th>House age</th>
<th>House prize</th>


<th>Delete</th></tr>

<c:forEach items="${v}" var="m">


<tr>

			<td>${m.getOwner_fname() }</td>
			<td>${m.getOwner_lname() }</td>
			<td>${m.getMobile() }</td>
			<td>${m.getEmail() }</td>
			<td>${m.getHouse_name() }</td>
			<td>${m.getSociety_name() }</td>
			<td>${m.getAddress() }</td>
			<td>${m.getPcode() }</td>
			<td>${m.getHcity() }</td>
			<td>${m.getHstatus() }</td>
			<td>${m.getHtype() }</td>
			<td>${m.getHarea() }</td>
			<td>${m.getHage() }</td>
			<td>${m.getHprize() }</td>
			
			
			<td><a href="deletehouse.jsp?id=${m.getId()}" onclick="return confirm('Are you sure you want to Delete?');">DELETE</a></td>
			
			
		</tr>
</c:forEach>


</table>
</div>
</body>
</html>