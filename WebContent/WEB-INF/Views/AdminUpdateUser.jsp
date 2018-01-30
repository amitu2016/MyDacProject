2<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Admin-SCMS</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
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
    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
    -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
}
</style>
  
  
</head>
<body>

<%@include file="NavbarAdmin.jsp" %>
<!-- <nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">SportsClub</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li><a href="../home">Home</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Administration<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="AdminCreateUser">Create User</a></li>
							<li><a href="AdminUpdateUser">Update User</a></li>
							<li><a href="AdminCreateTeam">Create Team</a></li>
							<li><a href="AdminAddMatch">Create Match</a></li>
							<li><a href="AdminUpdateMatch">Update Match</a></li>
							<li><a href="showAllTeams">Show All Teams</a></li>
							<li><a href="AdminShowAllPlayers">Show All Players</a></li>
							<li><a href="showAllMatches">Show All Matches</a></li>
							<li><a href="showAllCoach">Show All Coaches</a></li>
						</ul></li>


					<li><a href="#">Sports</a></li>
					<li><a href="Resources.jsp">Resources</a></li>

					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Player<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="AdminCreateUser">ViewProfile</a></li>
								<li><a href="AdminCreateUser">UpdateProfile</a></li>
							<li><a href="showAllTeams">Show All Teams</a></li>
							<li><a href="AdminShowAllPlayers">Show All Players</a></li>
							<li><a href="showAllCoach">Show All Coaches</a></li>
						
						</ul></li>
						
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Coach<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="AdminCreateUser">ViewProfile</a></li>
								<li><a href="AdminCreateUser">UpdateProfile</a></li>
							<li><a href="showAllTeams">Show All Teams</a></li>
							<li><a href="AdminShowAllPlayers">Show All Players</a></li>
							<li><a href="showAllCoach">Show All Coaches</a></li>
						
						</ul></li>
					

				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#"><span class="glyphicon glyphicon-log-out"></span>
							Logout</a></li>
				</ul>
			</div>
		</div>
	</nav>
	 -->
  
<div class="container"  style="margin-top:5%">
  <h3 align="center">Add User Details:</h3>
  <form class="form-horizontal" action="createUser" method="get">
    <div class="form-group">
      <label class="control-label col-sm-5" for="email">First Name:</label>
      <div class="col-sm-7">
        <input type="text" class="form-control" id="fname" placeholder="Enter Your First Name" name="fname">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-5" for="pwd">Last Name:</label>
      <div class="col-sm-7">          
        <input type="text" class="form-control" id="lname" placeholder="Enter your Last Name" name="lname">
      </div>
    </div>
	<div class="form-group">
      <label class="control-label col-sm-5" for="pwd">User Name:</label>
      <div class="col-sm-7">          
        <input type="text" class="form-control" id="username" placeholder="Enter your User Name" name="username">
      </div>
    </div>
	    <div class="form-group">
      <label class="control-label col-sm-5" for="pwd">Password:</label>
      <div class="col-sm-7">          
        <input type="password" class="form-control" id="userpass" placeholder="Enter password" name="userpass">
      </div>
    </div>
	
	<div class="form-group">
      <label class="control-label col-sm-5" for="email">Email:</label>
      <div class="col-sm-7">
        <input type="email" class="form-control" id="emailid" placeholder="Enter email" name="emailid">
      </div>
    </div>
	<div class="form-group">
      <label class="control-label col-sm-5" for="pwd">Date Of Birth:</label>
      <div class="col-sm-7">          
        <input type="date" class="form-control" id="dob" placeholder="Enter Birth Date" name="dob">
      </div>
    </div>
	<div class="form-group">
      <label class="control-label col-sm-5" for="pwd">Nationality:</label>
      <div class="col-sm-7">          
        <input type="text" class="form-control" id="nationality" placeholder="Enter Nationality " name="nationality">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-5" for="pwd">Contact No:</label>
      <div class="col-sm-7">          
        <input type="number" class="form-control" id="contact" placeholder="Enter Nationality " name="contact">
      </div>
    </div>
	<div class="form-group">
      <label class="control-label col-sm-5" for="pwd">State:</label>
      <div class="col-sm-7">          
        <input type="text" class="form-control" id="state" placeholder="Enter State " name="state">
      </div>
    </div>
	<div class="form-group">
      <label class="control-label col-sm-5" for="pwd">City:</label>
      <div class="col-sm-7">          
        <input type="text" class="form-control" id="City" placeholder="Enter City " name="city">
      </div>
    </div>
	<div class="form-group">
	<label class="control-label col-sm-5" for="role">Role:</label>
	<label class="radio-inline">
      <input type="radio" name="optradio">Player</label>
	<label class="radio-inline">
	  <input type="radio" name="optradio">Coach
    </label>
	<label class="radio-inline">
	  <input type="radio" name="optradio">Admin
    </label>
	</div>
    <div class="form-group">        
      <div class="col-sm-offset-5 col-sm-7">
        <div class="checkbox">
          <label><input type="checkbox" name="remember"> Remember me</label>
        </div>
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-5 col-sm-7">
        <button type="submit" class="btn btn-default">Update</button>
		
		<button type="reset" class="btn btn-default">Reset</button>
      </div>
    </div>
	
  </form>
  
  
</div>

</body>
</html>

