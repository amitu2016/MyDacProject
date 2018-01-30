<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>SCMS</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	
	
<style>
.card {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	max-width: 600px;
	margin: auto;
	text-align: center;
	font-family: arial;
}

.title {
	color: grey;
	font-size: 18px;
}



a {
	text-decoration: none;
	font-size: 15px;
	color: black;
}

button:hover, a:hover {
	opacity: 0.7;
}



</style>

<title>Insert title here</title>
</head>



<body>
<nav class="navbar  navbar-fixedtop navbar-static-top" style="background-color: maroon; ">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="home" style="font-size:30px;color:azure;">SCMS</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li><a href="../home" class="navfontsize " style="color:azure;">Home</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#" class="navfontsize " style="color:azure;">Administration<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="AdminCreateUser" class="navfontsize " style="color:maroon;">Create User</a></li>
							<li><a href="AdminUpdateUser" class="navfontsize " style="color:maroon;">Update User</a></li>
							<li><a href="AdminCreateTeam" class="navfontsize " style="color:maroon;">Create Team</a></li>
							<li><a href="AdminAddMatch" class="navfontsize " style="color:maroon;">Create Match</a></li>
							<li><a href="AdminUpdateMatch" class="navfontsize " style="color:maroon;">Update Match</a></li>
							<li><a href="showAllTeams" class="navfontsize " style="color:maroon;">Show All Teams</a></li>
							<li><a href="AdminShowAllPlayers" class="navfontsize " style="color:maroon;">Show All Players</a></li>
							<li><a href="showAllMatches" class="navfontsize " style="color:maroon;">Show All Matches</a></li>
							<li><a href="showAllCoach" class="navfontsize " style="color:maroon;">Show All Coaches</a></li>
						</ul></li>


					<li><a href="#" class="navfontsize " style="color:azure;">Sports</a></li>
					<li><a href="Resources.jsp" class="navfontsize " style="color:azure;">Resources</a></li>

					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#" class="navfontsize " style="color:azure;">Player<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="AdminCreateUser" class="navfontsize " style="color:maroon;">ViewProfile</a></li>
								<li><a href="AdminCreateUser" class="navfontsize " style="color:maroon;">UpdateProfile</a></li>
							<li><a href="showAllTeams" class="navfontsize " style="color:maroon;">Show All Teams</a></li>
							<li><a href="AdminShowAllPlayers" class="navfontsize " style="color:maroon;">Show All Players</a></li>
							<li><a href="showAllCoach" class="navfontsize " style="color:maroon;">Show All Coaches</a></li>
						
						</ul></li>
						
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#" class="navfontsize " style="color:azure;">Coach<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="AdminCreateUser" class="navfontsize " style="color:maroon;">ViewProfile</a></li>
								<li><a href="AdminCreateUser" class="navfontsize " style="color:maroon;">UpdateProfile</a></li>
							<li><a href="showAllTeams" class="navfontsize " style="color:maroon;">Show All Teams</a></li>
							<li><a href="AdminShowAllPlayers" class="navfontsize " style="color:maroon;">Show All Players</a></li>
							<li><a href="showAllCoach" class="navfontsize " style="color:maroon;">Show All Coaches</a></li>
						
						</ul></li>
					

				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#" class="navfontsize " style="color:azure;"><span class="glyphicon glyphicon-log-out" class="navfontsize " style="color:azure;"></span>
							Logout</a></li>
				</ul>
			</div>
		</div>
	</nav>
	
	
	

	<div class="container" style="margin-top:5%">
		
		<h2 style="text-align: center">All Coaches</h2>
		
		<div class="card">
							<table class="table table-hover" >

								<tr>
									<th class="card-text">Photo</th>
									<th class="card-text">First Name</th>
									<th class="card-text">Last Name</th>
									<th class="card-text">Sport Category</th>
									<th class="card-text">Team Under Coaching</th>
									<th class="card-text">Years of Experience</th>
									<th class="card-text">Likes</th>
									<th class="card-text">Like Button</th>
								</tr>
		
		<div>
		
		
				<%
					List<Map<String, Object>> list = (List<Map<String, Object>>) request.getAttribute("AllCoach_Details");
					for (Map<String, Object> map : list) {
				%>
				


						
								<tr>

									 <td>
										 	<div>
														<img class="card-img-top" src="${pageContext.request.contextPath}/res/Images/1.jpg"
															alt="Card image" style="width: 50%; height: 50%">
											</div>
									</td>
						
									
									<%
										for (Map.Entry<String, Object> entry : map.entrySet()) {
									%>
							
									<td class="card-text"><%=entry.getValue()%></td>
									<%
										}
									%>
									<td>
										<a href="#"> <span
											class="glyphicon glyphicon-thumbs-up" style="color:blue"></span>
										</a>
									</td>
									</div>
								</tr>
							
								<%
									}
								%>
					
					
							</table>
						
							
						</div>
		
					</div>
</body>
</html>