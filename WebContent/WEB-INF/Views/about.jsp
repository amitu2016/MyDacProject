<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="./../design/design.css">

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



  <!--   //Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="${pageContext.request.contextPath}/res/Images/about-club.jpg" alt="football" style="width:100%;height:500px">
      </div>

      <div class="item">
        <img src="${pageContext.request.contextPath}/res/Images/about-pool.jpg" alt="chess" style="width:100%;height:500px;">
      </div>
   
      <div class="item">
        <img src="${pageContext.request.contextPath}/res/Images/cricket3.jpg" alt="cricket" style="width:100%;height:500px">
      </div>
	   <div class="item">
        <img src="${pageContext.request.contextPath}/res/Images/badminton1.jpg" alt="badminton" style="width:100%;height:500px">
      </div>
    </div>

   <!--  Left and right controls -->
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
   <h2 align="center" style="font-weight:bolder;">ABOUT US</h2>
   <h3><div><p>
   
   		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		As the name suggests, the  Sports Club  has always championed Sports from its very core. Renowned nationwide as an institution in the realm of sports, it has been the breeding ground for countless athletes in their pursuit for glory. Today, we are proud to continue that rich tradition but sparing no effort in bringing world class facilities, infrastructure and coaching to our members on the same grounds and courts that national level tournaments are played on.
</p>
<br/><br/>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	 With numerous badminton, tennis and squash courts of international size and standards, facilities for outdoor sports like Cricket and Football and a swimming pool that is always a hotbed of activity, NSCI offers something special for all of our athletically inclined patrons. Not to be left behind in the indoor gaming department, the club also houses Billiards, Chess, Carrom and Table Tennis facilities.
     </p></div>
   
  </div>   
 

</body>
</html>