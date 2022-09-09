<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<head>
		<title>travel-media Website Template | Home :: W3layouts</title>
		<link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
		<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Waiting+for+the+Sunrise|Engagement' rel='stylesheet' type='text/css'>
		<script type="text/javascript" src="js/move-top.js"></script>
		<script type="text/javascript" src="js/easing.js"></script>
		<script type="text/javascript">
						jQuery(document).ready(function($) {
							$(".scroll").click(function(event){		
								event.preventDefault();
								$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
							});
						});
					</script>
		
	</head>
</head>
<body>
	<div class="top-header" style="background-color: #000000;">
		<div class="wrap">
			<div class="logo">
				<a href="#">Travel <span>media</span></a>
			</div>
			<div class="top-nav">
				<ul>
					<li class="active"><a href="index.jsp" class="scroll">Home</a></li>
					<li class="active"><a href="#about" class="scroll">About</a></li>
				
					<li class="active"><a href="#port" class="scroll">Protfolio</a></li>
					<li class="active"><a href="buysellhouse.jsp" class="scroll">Sell/Buy</a></li>
					<li class="active"><a href="register.jsp" class="scroll">SIGNUP/LOGIN</a></li>
					
						

				</ul>
			</div>
			<div class="clear"></div>


		</div>
	</div>
</body>
</html>