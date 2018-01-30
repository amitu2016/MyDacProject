<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SCMS</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style >
.breaking-news-headline {
  display: block;
  position: absolute;
  font-family: arial;
  font-size: 13px;
  margin-top: -22px;
  color: white;
  margin-left: 150px;
  
}

.breaking-news-title {
  background-color: #FFEA00;
  display: block;
  height: 20px;  
  width: 90px;
  font-family: arial;
  font-size: 11px;
  position: absolute; 
  top: 0px;
  margin-top: 0px;
  margin-left: 20px;
  padding-top: 2px;
  padding-left: 10px;
  z-index: 3;
  &:before {
    content:"";
    position: absolute;
    display: block;
    width: 0px;
    height: 0px;
    top: 0;
    left: -12px;
    border-left:12px solid transparent;
    border-right: 0px solid transparent;
    border-bottom: 30px solid #FFEA00;
  }
  &:after {
    content:"";
    position: absolute;
    display: block;
    width: 0px;
    height: 0px;
    right: -12px;
    top: 0;
    border-right:12px solid transparent;
    border-left: 0px solid transparent;
    border-top: 30px solid #FFEA00;
  }
}

#breaking-news-colour {
  height: 30px;
  width: 694px;
  background-color: #3399FF;
}

#breaking-news-container {
  height: 30px;
  width: 694px;
  overflow: hidden;
  position: absolute;
  &:before {
    content: "";
    width: 30px;
    height: 30px;
    background-color: #3399FF;
    position: absolute;
    z-index: 2;
  }
}

.animated {
  -webkit-animation-duration: 0.2s;
  -webkit-animation-fill-mode: both;
  -moz-animation-duration: 0.2s;
  -moz-animation-fill-mode: both;
  -webkit-animation-iteration-count: 1;
  -moz-animation-iteration-count: 1;
}

.delay-animated {
  -webkit-animation-duration: 0.4s;
  -webkit-animation-fill-mode: both;
  -moz-animation-duration: 0.4s;
  -moz-animation-fill-mode: both;
  -webkit-animation-iteration-count: 1;
  -moz-animation-iteration-count: 1;
  -webkit-animation-delay: 0.3s; 
  animation-delay: 0.3s;
}

.scroll-animated {
  -webkit-animation-duration: 3s;
  -webkit-animation-fill-mode: both;
  -moz-animation-duration: 3s;
  -moz-animation-fill-mode: both;
  -webkit-animation-iteration-count: 1; 
  -moz-animation-iteration-count: 1;
  -webkit-animation-delay: 0.5s; 
  animation-delay: 0.5s;
}

.delay-animated2 {
  -webkit-animation-duration: 0.4s;
  -webkit-animation-fill-mode: both;
  -moz-animation-duration: 0.4s;
  -moz-animation-fill-mode: both;
  -webkit-animation-iteration-count: 1; 
  -moz-animation-iteration-count: 1;
  -webkit-animation-delay: 0.5s; 
  animation-delay: 0.5s;
}

.delay-animated3 {
  -webkit-animation-duration: 5s;
  -webkit-animation-fill-mode: both;
  -moz-animation-duration: 5s;
  -moz-animation-fill-mode: both;
  -webkit-animation-iteration-count: 1; 
  -moz-animation-iteration-count: 1;
  -webkit-animation-delay: 0.5s; 
  animation-delay: 3s;
}

.fadein {
  -webkit-animation-name: fadein;
  -moz-animation-name: fadein;
  -o-animation-name: fadein;
  animation-name: fadein;
}

@-webkit-keyframes fadein {
  from {
    margin-left: 1000px
  }
  to {
    
  } 
}  
@-moz-keyframes fadein {
  from {
    margin-left: 1000px
  }
  to {
    
  }  
}

.slidein {
  -webkit-animation-name: slidein;
  -moz-animation-name: slidein;
  -o-animation-name: slidein;
  animation-name: slidein;
}

@keyframes marquee {
  0% { 
    left: 0;
  }
  20% { 
    left: 0; 
  }
  100% { left: -100%; }
}

.marquee {
  animation: marquee 10s linear infinite;
  -webkit-animation-duration: 10s;
  -moz-animation-duration: 10s;
  -webkit-animation-delay: 0.5s; 
  animation-delay: 3s;
}

@-webkit-keyframes slidein {
  from {
    margin-left: 800px
  }
  to {
    margin-top: 0px
  } 
}  
@-moz-keyframes slidein {
  from {
    margin-left: 800px
  }
  to {
    margin-top: 0px
  }  
}

.slideup {
  -webkit-animation-name: slideup;
  -moz-animation-name: slideup;
  -o-animation-name: slideup;
  animation-name: slideup;
}
@-webkit-keyframes slideup {
  from {
    margin-top: 30px
  }
  to {
    margin-top: 0;
  } 
}  
@-moz-keyframes slideup {
  from {
    margin-top: 30px
  }
  to {
    margin-top: 0;
  } 
}






</style>
<!-- <link rel="stylesheet"
	href="./node_modules/bootstrap/dist/css/bootstrap.min.css">
	<script
	src="./node_modules/bootstrap/dist/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="./../design/design.css">
 -->


</head>
<body>

	<%@include file="NavBar.jsp"%>
	
	
	
	<div id="breaking-news-container" style="width:100%">
  <div id="breaking-news-colour" class="slideup animated" style="width:100%">
    
  </div>  
   <span class="breaking-news-title delay-animated slidein">
      // BREAKING //
    </span> 
    <a class="breaking-news-headline delay-animated2 fadein marquee">
      The Sports Club is LIVE now!!
    </a>  
</div>  <br><br><br><br>
	<div class="container">
		
		<!-- #########################  FIRST ROW ################################### -->
		<div class="row">
			<div class="col-sm-12" style="background-color: plum;">
					
				<div class="card">
					<table class="table table-hover">
						<tr>
							<th colspan="6" style="text-align: center">Match Profile</th>
						</tr>
						<tr>
							<th class="card-text">Team One</th>
							<th class="card-text">Date of Match</th>
							<th class="card-text">Team Two</th>
							<th class="card-text">Winning team</th>
							<th class="card-text">Likes</th>
							<th class="card-text">Status</th>
						</tr>
						<div>
							<%
								List<Map<String, Object>> mlist = (List<Map<String, Object>>) request.getAttribute("Matches");
								for (Map<String, Object> mmap : mlist) {
							%>

							<tr>
								<%
									for (Map.Entry<String, Object> entry : mmap.entrySet()) {
								%>
								<td class="card-text"><%=entry.getValue()%></td>
								<%
									}
								%>
							</tr>

							<%
								}
							%>
						</div>
					</table>
				</div>








			</div>
	






		</div>

		<br /> <br />
<!-- #########################  Second ROW ################################### -->
		<div class="row">
			<div class="col-sm-12" style="background-color: rgb(158, 255, 221);">
				<div class="card ">
					<table class="table table-hover">
						<tr>
							<th colspan="7" style="text-align: center">All Teams</th>
						</tr>
						<tr>
							<th class="card-text">Sport Name</th>
							<th class="card-text">Match Draw</th>
							<th class="card-text">Club Name</th>
							<th class="card-text">No of Likes</th>
							<th class="card-text">Match Played</th>
							<th class="card-text">Team Name</th>
							<th class="card-text">Match Win</th>
						</tr>

						<div>

							<%
								List<Map<String, Object>> tlist = (List<Map<String, Object>>) request.getAttribute("Team_Details");
								for (Map<String, Object> map : tlist) {
							%>
							<tr>
								<%
									for (Map.Entry<String, Object> entry : map.entrySet()) {
								%>
								<td class="card-text"><%=entry.getValue()%></td>
								<%
									}
								%>
							</tr>

							<%
								}
							%>
						</div>
						
					</table>
				</div>
			</div>
</div>
			<br/><br/>
			
			<!-- #########################  Third ROW ################################### -->
<div class="row">
			<div class="col-sm-12" style="background-color: rgb(158, 142, 221);">
				<div class="card col-sm-12">
					<table class="table table-hover">

						<tr>
							<th colspan="6" style="text-align: center">All Players</th>
						</tr>
						<tr>
							<th class="card-text">First Name</th>
							<th class="card-text">Last Name</th>
							<th class="card-text">Team Name</th>
							<th class="card-text">Sport's Name</th>
							<th class="card-text">Wins</th>
							<th class="card-text">Likes</th>

						</tr>

						<div>

							<%
								List<Map<String, Object>> plist = (List<Map<String, Object>>) request.getAttribute("Player_Details");
								for (Map<String, Object> map : plist) {
							%>
							<tr>
								<%
									for (Map.Entry<String, Object> entry : map.entrySet()) {
								%>
								<td class="card-text"><%=entry.getValue()%></td>
								<%
									}
								%>
							</tr>

							<%
								}
							%>
						</div>
					</table>
				</div>
				
				<!-- </div> -->
			</div>
		</div>
	</div>


</body>
</html>