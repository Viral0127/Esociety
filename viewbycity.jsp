
<%@page import="com.house.Housemodel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body {
	margin: 0;
	font-family: Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI",
		Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji",
		"Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
	font-size: .8125rem;
	font-weight: 400;
	line-height: 1.5385;
	color: #333;
	text-align: left;
	background-color: #2196F3;
}

.mt-50 {
	margin-top: 50px;
}

.mb-50 {
	margin-bottom: 50px;
}

.card {
	position: relative;
	display: -ms-flexbox;
	display: flex;
	-ms-flex-direction: column;
	flex-direction: column;
	min-width: 0;
	word-wrap: break-word;
	background-color: #fff;
	background-clip: border-box;
	border: 1px solid rgba(0, 0, 0, .125);
	border-radius: .1875rem;
}

.card-img-actions {
	position: relative;
}

.card-body {
	-ms-flex: 1 1 auto;
	flex: 1 1 auto;
	padding: 1.25rem;
	text-align: center;
}

.card-img {
	width: 350px;
}

.star {
	color: red;
}

.bg-cart {
	background-color: orange;
	color: #fff;
}

.bg-cart:hover {
	color: #fff;
}

.bg-buy {
	background-color: green;
	color: #fff;
	padding-right: 29px;
}

.bg-buy:hover {
	color: #fff;
}

a {
	text-decoration: none !important;
}
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<%@page import="com.house.Housedao"%>
<%@page import="java.util.List"%>
<%
String hcity=request.getParameter("hcity");

List<Housemodel> list=Housedao.cityrecord(hcity);
	request.setAttribute("v", list);
%>


 		
<c:forEach items="${v}" var="m">
		<div class="row">
			<div class="col-md-4 mt-2">


				<div class="card">
					<div class="card-body"> 
                                        <div class="card-img-actions"> 
                                             
                                                <img src="${m.getHfile() }" class="card-img img-fluid" width="96" height="300" alt=""> 
                                               
                                            
                                        </div> 
                                    </div> 

					<div class="card-body bg-light text-center">

						<label style="font-weight: bold;"><h1>For ${m.getHstatus() }</h1></label>
						<div class="text-muted mb-3">
							<label style="font-weight: bold;"><b>Name of Owner: </b></label>${m.getOwner_fname() } ${m.getOwner_lname() }
						</div>
						
						<div class="text-muted mb-3">
							<label style="font-weight: bold;"><b>House Name: </b></label>${m.getHouse_name() }
						</div>
						<div class="text-muted mb-3">
							<label style="font-weight: bold;"><b>Address: </b></label>${m.getSociety_name() }, ${m.getAddress() }
						</div>
						<div class="text-muted mb-3">
							<label style="font-weight: bold;"><b>City: </b></label>${m.getHcity() }
						</div>
						<div class="text-muted mb-3">
							<label style="font-weight: bold;"><b>House Details: </b></label>${m.getHtype() }, ${m.getHarea() }sq.ft., ${m.getHage() } year old
						</div>
						<div class="text-muted mb-3">
							<label style="font-weight: bold;"><b>Contact: </b></label>${m.getMobile() }, ${m.getEmail() }
						</div>






						<button type="button" class="btn bg-cart">
							<i class="fa fa-cart-plus mr-2"></i> for inquiry pls contact owner
						</button>


					</div>
				</div>
			</div>
		</div>

	</c:forEach>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>