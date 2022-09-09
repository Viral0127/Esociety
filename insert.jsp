<%@page import="com.User.Userdao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:useBean id="u" class="com.User.Model"></jsp:useBean>
     <jsp:setProperty property="*" name="u"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

int status=Userdao.savedata(u);

if(status>0){
	
	response.sendRedirect("login.jsp");
}
else{
	
	out.print("error");
}
%>
</body>
</html>