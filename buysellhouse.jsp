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
 
 
    <%!String fname; %>      
<%
 
 if(session!=null)
 {
     if(session.getAttribute("viral")!=null)
	 {
		 fname = session.getAttribute("viral").toString();
	
 %>                    
                       
<%
	 }
	 else
	 {
		 response.sendRedirect("login.jsp");
	 }
 }
		 else
		 {
			 response.sendRedirect("login.jsp");
		 }
%>
                        
                    
<%
 }
 catch(Exception e)
 {
	 e.printStackTrace();
 }
 %>
<div class="row" >
		<div class="col pay-4"  >
		<div style="text-align: center; padding: 200px;">
						<a href="addhouse.jsp"><button
						style="background-color: black; height: 120px; color: white; width: 150px; font-size: medium; border-radius: 15px;">Sell
						House</button></a> 
						<a href="buyhouse.jsp"><button
						style="background-color: black; height: 120px; color: white; width: 150px;; font-size: medium; border-radius: 15px; margin-right: 50px; margin-left: 50px;">
						Buy/Rent House</button></a> 
							
			</div>
		</div>
	</div>
			
<jsp:include page="footer.jsp"></jsp:include>
			
</body>

</html>