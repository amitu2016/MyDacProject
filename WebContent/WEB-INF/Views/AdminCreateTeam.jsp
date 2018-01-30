<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Admin-SCMS</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
.form-control {
	display: block;
	width: 35%;
	height: 25px;
	padding: 6px 12px;
	font-size: 14px;
	line-height: 1.42857143;
	color: #555;
	background-color: #fff;
	background-image: none;
	border: 1px solid #ccc;
	border-radius: 4px;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	-webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow
		ease-in-out .15s;
	-o-transition: border-color ease-in-out .15s, box-shadow ease-in-out
		.15s;
	transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}

.selectClubId {
	display: block;
	width: 10%;
	height: 35px;
	padding: 6px 12px;
	font-size: 14px;
	line-height: 1.42857143;
	color: #555;
	background-color: #fff;
	background-image: none;
	border: 1px solid #ccc;
	border-radius: 4px;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	-webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow
		ease-in-out .15s;
	-o-transition: border-color ease-in-out .15s, box-shadow ease-in-out
		.15s;
	transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}

.selectSports {
	display: block;
	width: 20%;
	height: 40px;
	padding: 6px 12px;
	font-size: 14px;
	line-height: 1.42857143;
	color: #555;
	background-color: #fff;
	background-image: none;
	border: 1px solid #ccc;
	border-radius: 4px;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	-webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow
		ease-in-out .15s;
	-o-transition: border-color ease-in-out .15s, box-shadow ease-in-out
		.15s;
	transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
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
				<li><a href="../home" style="color:azure">Home</a></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#" style="color:azure;">Administration<span
						class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="AdminCreateUser" class="navfontsize " style="color:maroon;">Create User</a></li>
						<li><a href="AdminCreateTeam" class="navfontsize " style="color:maroon;">Create Team</a></li>
						<li><a href="AdminAddMatch" class="navfontsize " style="color:maroon;">Create Match</a></li>
						<li><a href="AdminUpdateMatch" class="navfontsize " style="color:maroon;">Update Match</a></li>
						<li><a href="showAllTeams" class="navfontsize " style="color:maroon;">Show All Teams</a></li>
						<li><a href="showAllPlayers" class="navfontsize " style="color:maroon;">Show All Players</a></li>
						<li><a href="showAllMatches" class="navfontsize " style="color:maroon;">Show All Matches</a></li>
						<li><a href="showAllCoach" class="navfontsize " style="color:maroon;">Show All Coaches</a></li>
					</ul></li>
				<li><a href="#" class="navfontsize " style="color:azure;">Sports</a></li>
				<li><a href="Resources" class="navfontsize " style="color:azure;">Resources</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#" style="color:azure"><span class="glyphicon glyphicon-log-out"></span>
						Logout</a></li>
			</ul>
		</div>
	</div>
	</nav>

	<div class="container" style="margin-top: 5%">

		<div class=row>

			<h3 align="center">Create Team</h3>

			<form class="form-horizontal" action="/action_page.php">
				<!-- <div class="form-group">
      	<label class="control-label col-sm-5" for="SelectSports">Select Club Id:</label>
      		<div class="col-sm-7">
       			 <select class="selectClubId" id="sel1">
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
				</select>
    		</div>
    	</div> -->

				<div class="form-group">
					<label class="control-label col-sm-5" for="SelectSports">Select
						Sports:</label>
					<div class="col-sm-7">
						<form:select path="sportName" class="selectSports" name="sportName" >
							<form:option value="NONE" label="Select" />
							<form:options items="${sportName}" />
						</form:select>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-5" for="tname">Team
						Name:</label>
					<div class="col-sm-7">
						<input type="text" class="form-control" id="tname"
							placeholder="Enter Your Team Name" name="tname">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-5" for="SelectPlayers">SelectPlayers:</label>
					<div class="col-sm-7">
						<form:select path="playerName" class="selectSports">
							<form:option value="NONE" label="Select" />
							<form:options items="${playerName}" />
						</form:select>
					</div>
				</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-5 col-sm-7">
				<button type="submit" class="btn btn-default">Create Team</button>

				<button type="reset" class="btn btn-default">Reset</button>
			</div>
		</div>

		</form>


	</div>

	</div>
</body>
</html>

