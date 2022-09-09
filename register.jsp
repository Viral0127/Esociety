<!DOCTYPE html>
<html lang="en">

<head>
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
    
    <script type="text/javascript">
    function formValidation() {
		var name = document.getElementById('name');
		var mobile =document.getElementById('mobile');
		var gender = document.getElementById('gender');
		var email = document.getElementById('email');
		var pincode = document.getElementById('pincode');
		var pass = document.getElementById('pass');
		var repass = document.getElementById('repass');

		if (isAlphabet(name,"Please enter only letters for your name")) {
			if (isNumeric(mobile, "Please enter only 10 digit mobile numbers")) {
				if(madeSelection(gender, "Please Choose a gender")) {
					if (emailValidator(email, "Please enter a valid email")) {
						if (isNumeric1(pincode, "Please enter 6 digit pincode")) {
					    	if (isAlphanumeric(pass, "Please enter valid pass")) {
							  if (isAlphanumeric(repass, "Please enter confirm password")){
							return true;
						}

					}
				}

			}

		}
		}
		}
		
		return false;
	}
	
	
function notEmpty(elem, helperMsg){
		if(elem.value.length == 0){
			alert(helperMsg);
			elem.focus(); // set the focus to this input
			return false;
		}
		return true;
	}
	
	function isAlphabet(elem, helperMsg){
		var alphaExp = /^[a-zA-Z]+$/;
		if(elem.value.match(alphaExp)){
			return true;
		}else{
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
	function isNumeric(elem, helperMsg){
		var numericExpression = /^\d{10}$/;
		if(elem.value.match(numericExpression)){
			return true;
		}else{
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
	function madeSelection(elem, helperMsg){
		if(elem.value == "GENDER"){
			alert(helperMsg);
			elem.focus();
			return false;
		}else{
			return true;
		}
	}
	
	function emailValidator(elem, helperMsg){
		var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
		if(elem.value.match(emailExp)){
			return true;
		}else{
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
	
	function isNumeric1(elem, helperMsg){
		var numericExpression = /^\d{6}$/;
		if(elem.value.match(numericExpression)){
			return true;
		}else{
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
	function isAlphanumeric(elem, helperMsg){
		var alphaExp = /^[0-9a-zA-Z]+$/;
		if(elem.value.match(alphaExp)){
			return true;
		}else{
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
    
    </script>
</head>

<body>
<jsp:include page="header.jsp"></jsp:include>
<br>
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

    <div class="page-wrapper bg-blue p-t-100 p-b-100 font-robo" style="background: #DCDCDC; font-size: 14px;">
        <div class="wrapper wrapper--w680">
            <div class="card card-1">
                <div class="card-heading" style="background-image: url('images/nature.jpg');"></div>
                <div class="card-body">
                    <h2 class="title" style="font-size: 30px;">Registration Info</h2>
                    <form action="insert.jsp" method="POST" name='registration' onsubmit="return formValidation();">
                        <div class="input-group">
                            <input class="input--style-1" type="text" placeholder="NAME" name="name" id="name">
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                   <input class="input--style-1" type="number" placeholder="MOBILE NO." name="mobile" id="mobile">
                                   
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <select name="gender" id="gender">
                                            <option>GENDER</option>
                                            <option>Male</option>
                                            <option>Female</option>
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="input-group">
                            <input class="input--style-1" type="email" placeholder="EMAIL" name="email" id="email">
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <input class="input--style-1" type="number" placeholder="PINCODE" name="pincode" id="pincode">
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <input class="input--style-1" type="password" placeholder="PASSWORD" name="pass" id="pass">
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <input class="input--style-1" type="password" placeholder="CONFIRM PASSWORD" name="repass" id="repass">
                                </div>
                            </div>
                        </div>
                        <div class="p-t-20">
                            <button class="btn btn--radius btn--green" type="submit">Submit</button>
                        </div>
                        <br>
                        <div class="form-group form-button" style="font-size: 16px;">
                                  <a href="login.jsp" class="signup-image-link" ><h1>i am already member</></a>
                            </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
  <%
    	}
    	else
    	{
    		response.sendRedirect("login.jsp");
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
    

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
<jsp:include page="footer.jsp"></jsp:include>
</html>
<!-- end document-->
