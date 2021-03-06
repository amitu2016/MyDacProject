<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="./../design/design.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SCMS</title>
</head>
<body>

	<%@include file="NavBar.jsp" %>
	

<div class="container">
   
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>



    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="${pageContext.request.contextPath}/res/Images/s1.jpg" alt="Los Angeles" style="width:100%;">
      </div>

      <div class="item">
        <img src="${pageContext.request.contextPath}/res/Images/s2.jpg" alt="Chicago" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="${pageContext.request.contextPath}/res/Images/s3.jpg" alt="New york" style="width:100%;">
      </div>
	    <div class="item">
        <img src="${pageContext.request.contextPath}/res/Images/s4.jpg" alt="New york" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
  
  <div>
   <h2 align="center">NEWS</h2>
   <div>
   		<p></p>
   </div>
  </div>
   
   
  <div> 
  
	<div class="col-md-3">
	</div>
   <div class="col-md-3">
      <div class="thumbnail">
        <a href="announcement.html" target="_blank">
          <img src="${pageContext.request.contextPath}/res/Images/Announcements.png"  style="width:100%">
          <div class="caption">
        <b>    <p align="center">Announcements</p></b>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-3">
      <div class="thumbnail">
        <a href="events.html" target="_blank">
          <img src="${pageContext.request.contextPath}/res/Images/Events.png"  style="width:100%">
          <div class="caption">
          <b>  <p align="center">Events</p></b>
          </div>
        </a>
      </div>
    </div>
	<div class="col-md-3">
	</div>
   </div>
   
</div><!--container-->


</body>
</html>