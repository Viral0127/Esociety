<%@page import="com.house.Housedao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:useBean id="a" class="com.house.Housemodel"></jsp:useBean>
    <jsp:setProperty property="*" name="a"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
		int status=Housedao.Savedata(a);
		
		if(status>0)
		{
			response.sendRedirect("index.jsp");
			
		}
		else
		{
			//out.print("Error");
			out.print("Error");
		}	
	
	%>
</body>
</html>