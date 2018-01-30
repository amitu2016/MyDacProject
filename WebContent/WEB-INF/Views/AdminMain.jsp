<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<% String b = (String)session.getAttribute("auth");
if(!"true".equals(b))
{
	response.sendRedirect("login");
}
List<String> rolelist = (ArrayList<String>)session.getAttribute("role");

List<Map<String,Object>> pl=(List<Map<String,Object>>)session.getAttribute("playerSession");
List<Map<String,Object>> cl=(List<Map<String,Object>>)session.getAttribute("coachSession");
String fname="";
String lname="";
String cfname="";
String clname="";
for (Map<String, Object> map : pl) {
	for (Map.Entry<String, Object> entry : map.entrySet()) {
		String key=entry.getKey();
		Object value=entry.getValue();
		if(key.equals("fname")) {
			fname=(String)value;
		}
		if(key.equals("lname")) {
			lname=(String)value;
		}
    }
}
for (Map<String, Object> map : cl) {
	for (Map.Entry<String, Object> entry : map.entrySet()) {
		String key=entry.getKey();
		Object value=entry.getValue();
		if(key.equals("fname")) {
			cfname=(String)value;
		}
		if(key.equals("lname")) {
			clname=(String)value;
		}
    }
}
fname=fname.toUpperCase();
lname=lname.toUpperCase();
cfname=cfname.toUpperCase();
clname=clname.toUpperCase();
%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>SCMS Admin-Home</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style>
	body{
	background-color:#8a61613b;
	/* background-image:'${pageContext.request.contextPath}/res/Images/admin-main2.jpg'; */
	}
	</style>
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
						data-toggle="dropdown" href="#" style="color:azure;">Administration<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
						<%if(rolelist.contains("Admin")){ %>
							<li><a href="AdminCreateUser" class="navfontsize " style="color:maroon;">Create User</a></li>
							<li><a href="AdminCreateTeam" class="navfontsize " style="color:maroon;">Create Team</a></li>
							<li><a href="AdminAddMatch" class="navfontsize " style="color:maroon;">Create Match</a></li>
							<li><a href="AdminUpdateMatch" class="navfontsize " style="color:maroon;">Update Match</a></li>
							<%} %>
							<li><a href="showAllTeams" class="navfontsize " style="color:maroon;">Show All Teams</a></li>
							<li><a href="showAllPlayers" class="navfontsize " style="color:maroon;">Show All Players</a></li>
							<li><a href="showAllMatches" class="navfontsize " style="color:maroon;">Show All Matches</a></li>
							<li><a href="showAllCoach" class="navfontsize " style="color:maroon;">Show All Coaches</a></li>
						<%if(rolelist.contains("Player")){ %>
							<li><a href="viewplayerprofile" class="navfontsize " style="color:maroon;">View Player Profile</a></li>
						<%} %>
						<%if(rolelist.contains("Coach")){ %>
							<li><a href="viewcoachprofile" class="navfontsize " style="color:maroon;">View Coach Profile</a></li>
						<%} %>
						</ul></li>


					<li><a href="#" class="navfontsize " style="color:azure;">Sports</a></li>
					<li><a href="Resources.jsp" class="navfontsize" style="color:azure">Resources</a></li>

					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#" class="navfontsize " style="color:azure;">Player<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="AdminCreateUser" class="navfontsize " style="color:maroon;">ViewProfile</a></li>
								<li><a href="AdminCreateUser" class="navfontsize " style="color:maroon;">UpdateProfile</a></li>
							<li><a href="showAllTeams" class="navfontsize " style="color:maroon;">Show All Teams</a></li>
							<li><a href="showAllPlayers" class="navfontsize " style="color:maroon;">Show All Players</a></li>
							<li><a href="showAllCoach" class="navfontsize " style="color:maroon;">Show All Coaches</a></li>
						
						</ul></li>
						
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#" class="navfontsize " style="color:azure;">Coach<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="AdminCreateUser" class="navfontsize " style="color:maroon;">ViewProfile</a></li>
								<li><a href="AdminCreateUser" class="navfontsize " style="color:maroon;">UpdateProfile</a></li>
							<li><a href="showAllTeams" class="navfontsize " style="color:maroon;">Show All Teams</a></li>
							<li><a href="showAllPlayers" class="navfontsize " style="color:maroon;">Show All Players</a></li>
							<li><a href="showAllCoach" class="navfontsize " style="color:maroon;">Show All Coaches</a></li>
						
						</ul></li>
				
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<%if(rolelist.contains("Player")){ %>	
				<li><a href="viewplayerprofile" class="nav navbar-nav navbar-right navfontsize " style="color:azure;"><%="Hiii "+fname+" "+lname+"! "%></a></li>
				<%} %>
					<%if(rolelist.contains("Coach")){ %>	
				<li><a href="viewcoachprofile" class="nav navbar-nav navbar-right navfontsize " style="color:azure;"><%="Hiii "+cfname+" "+clname+"! "%></a></li>
				<%} %>
					<li><a href="logout" style="color:azure"><span class="glyphicon glyphicon-log-out" style="color:azure"></span>Logout</a></li>
				</ul>
			</div>
		</div>
	</nav>


<h1 align="center"> ADMIN PAGE</h1>
<!-- 	<div class="container" >
		<h3>Collapsible Navbar</h3>
		<p>In this example, the navigation bar is hidden on small screens
			and replaced by a button in the top right corner (try to re-size this
			window).
		<p>Only when the button is clicked, the navigation bar will be
			displayed.</p>
	</div> -->

</body>
</html>
