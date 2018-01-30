<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- <link rel="stylesheet" type="text/css" href="./../design/design.css"> -->
<link  href="/SCMS_integration/WebContent/design/design.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SCMS</title>
<style>
img {
	width: 50%;
	height: 200px;
}
</style>


</head>
<body>

	<%@include file="NavBar.jsp"%>



	<div>
		<h1 align="center">GALLERY</h1>
		<div>

			<div class="container">


				<div id="myCarousel" class="carousel slide" data-ride="carousel">
					 <!--  Indicators  -->
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
					</ol>


<!-- Images -->
					<div class="carousel-inner">
						<div class="item active">
							<img src="${pageContext.request.contextPath}/res/Images/gallery.jpg" alt="football"
								style="width: 100%, height:400px;">
						</div>

						<div class="item">
							<img src="${pageContext.request.contextPath}/res/Images/gallery2.jpg" alt="chess"
								style="width: 100%, height:400px;">
						</div>

						<div class="item">
							<img src="${pageContext.request.contextPath}/res/Images/cricket3.jpg" alt="cricket"
								style="width: 100%;height:400px">
						</div>
						<div class="item">
							<img src="${pageContext.request.contextPath}/res/Images/badminton1.jpg" alt="badminton"
								style="width: 100%;height:400px">
						</div>
					</div>

				<!-- 	 Left and right controls -->
					<a class="left carousel-control" href="#myCarousel"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#myCarousel"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>


				<div class="row">
					<div class="col-md-4">
						
							<a href="Chess.html" target="_blank" > <img
								src="${pageContext.request.contextPath}/res/Images/cricket2.jpg" class="img-thumbnail">
							</a>
						
					</div>
					<div class="col-md-4">
					
							<a href="cricket.html" target="_blank"> <img
								src="${pageContext.request.contextPath}/res/Images/badminton2.jpg" class="img-thumbnail" alt="Nature">

							</a>
					
					</div>

					<div class="col-md-4">
						
							<a href="badminton.html" target="_blank"> <img
								src="${pageContext.request.contextPath}/res/Images/football2.jpg" class="img-thumbnail">

							</a>
					

					</div>
				</div>



				<div class="row">
					<div class="col-md-4">
					
							<a href="Chess.html" target="_blank"> <img
								src="${pageContext.request.contextPath}/res/Images/gallery3.jpg" class="img-thumbnail">
							</a>
					
					</div>
					<div class="col-md-4">
						
							<a href="cricket.html" target="_blank"> <img
								src="${pageContext.request.contextPath}/res/Images/s3.jpg" alt="Nature" class="img-thumbnail">

							</a>
						
					</div>
					<div class="col-md-4">
						
							<a href="badminton.html" target="_blank"> <img
								src="${pageContext.request.contextPath}/res/Images/chess2.jpg" class="img-thumbnail">
							</a>
					
					</div>
				</div>
</body>
</html>