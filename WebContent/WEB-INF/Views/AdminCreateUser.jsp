<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
 <nav class="navbar  navbar-fixedtop navbar-static-top" style="background-color: maroon; ">
	<div class="container-fluid" >
		<div class="navbar-header" >
			<a class="navbar-brand" href="home" style="font-size:30px;color:azure;">SCMS</a>
		</div>
		<ul class="nav navbar-nav" >
			
		 	<li><a href="../home" class="navfontsize " style="color:azure;">Home</a></li> 
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#" style="color:azure;">Administration<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="AdminCreateUser" class="navfontsize " style="color:maroon;" >Create User</a></li>
							<li><a href="AdminCreateTeam" class="navfontsize " style="color:maroon;" >Create Team</a></li>
							<li><a href="AdminAddMatch" class="navfontsize " style="color:maroon;" >Create Match</a></li>
							<li><a href="AdminUpdateMatch" class="navfontsize " style="color:maroon;" >Update Match</a></li>
							<li><a href="showAllTeams" class="navfontsize " style="color:maroon;" >Show All Teams</a></li>
							<li><a href="showAllPlayers" class="navfontsize " style="color:maroon;" >Show All Players</a></li>
							<li><a href="showAllMatches" class="navfontsize " style="color:maroon;" >Show All Matches</a></li>
							<li><a href="showAllCoach" class="navfontsize " style="color:maroon;" >Show All Coaches</a></li>
						</ul></li>


					<li><a href="#" class="navfontsize " style="color:azure;">Sports</a></li>
					<li><a href="Resources.jsp" class="navfontsize " style="color:azure;">Resources</a></li>

					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#" style="color:azure;">Player<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="AdminCreateUser" class="navfontsize " style="color:maroon;;" >ViewProfile</a></li>
								<li><a href="AdminCreateUser" class="navfontsize " style="color:maroon;;" >UpdateProfile</a></li>
							<li><a href="showAllTeams" class="navfontsize " style="color:maroon;;" >Show All Teams</a></li>
							<li><a href="showAllPlayers" class="navfontsize " style="color:maroon;;" >Show All Players</a></li>
							<li><a href="showAllCoach" class="navfontsize " style="color:maroon;;" >Show All Coaches</a></li>
						
						</ul></li>
						
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#" class="navfontsize "  style="color:azure;"	>Coach<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="AdminCreateUser" class="navfontsize " style="color:maroon;">ViewProfile</a></li>
								<li><a href="AdminCreateUser" class="navfontsize " style="color:maroon;" >UpdateProfile</a></li>
							<li><a href="showAllTeams" class="navfontsize " style="color:maroon;" >Show All Teams</a></li>
							<li><a href="showAllPlayers" class="navfontsize " style="color:maroon;" >Show All Players</a></li>
							<li><a href="showAllCoach" class="navfontsize " style="color:maroon;" >Show All Coaches</a></li>
						
						</ul></li>
					

				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="../home.jsp" class="navfontsize" style="color:azure"><span class="glyphicon glyphicon-log-out"></span>
							Logout</a></li>
				</ul>
				</div>

	</nav>
  
<div class="container"  style="margin-top:5%">
  <h3 align="center">Add User Details:</h3>
  <form class="form-horizontal" action="createUser" method="get">
    <div class="form-group">
      <label class="control-label col-sm-5" for="email">First Name:</label>
      <div class="col-sm-7">
        <input type="text" class="form-control" id="fname" placeholder="Enter Your First Name" name="fname" pattern="[a-zA-Z]{3,20}" required>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-5" for="pwd">Last Name:</label>
      <div class="col-sm-7">          
        <input type="text" class="form-control" id="lname" placeholder="Enter your Last Name" name="lname" pattern="[a-zA-Z]{3,20}" required>
      </div>
    </div>
	<div class="form-group">
      <label class="control-label col-sm-5" for="pwd">User Name:</label>
      <div class="col-sm-7">          
        <input type="text" class="form-control" id="username" placeholder="Enter your User Name" name="username" pattern="[a-zA-Z0-9]{4,10}" required>
      </div>
    </div>
	    <div class="form-group">
      <label class="control-label col-sm-5" for="pwd">Password:</label>
      <div class="col-sm-7">          
        <input type="password" class="form-control" id="userpass" placeholder="Enter password" name="userpass" pattern="[a-zA-Z0-9]{1,9}" required>
      </div>
    </div>
	
	<div class="form-group">
      <label class="control-label col-sm-5" for="email">Email:</label>
      <div class="col-sm-7">
        <input type="email" class="form-control" id="emailid" placeholder="Enter email" name="emailid" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required>
      </div>
    </div>
	<div class="form-group">
      <label class="control-label col-sm-5" for="pwd">Date Of Birth:</label>
      <div class="col-sm-7">          
        <input type="date" class="form-control" id="dob" placeholder="Enter Birth Date" name="dob" required>
      </div>
    </div>
	<div class="form-group">
      <label class="control-label col-sm-5" for="pwd">Nationality:</label>
      <div class="col-sm-7">          
        <input type="text" class="form-control" id="nationality" placeholder="Enter Nationality " name="nationality" required>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-5" for="pwd">Contact No:</label>
      <div class="col-sm-7">          
        <input type="number" class="form-control" id="contact" placeholder="Enter Contact " name="contact" pattern="[7-9]{1}[0-9]{9}" required	>
      </div>
    </div>
	<div class="form-group">
      <label class="control-label col-sm-5" for="pwd">State:</label>
      <div class="col-sm-7">          
        <input type="text" class="form-control" id="state" placeholder="Enter State " name="state" placeholder="Enter State " name="state" required>
      </div>
    </div>
	<div class="form-group">
      <label class="control-label col-sm-5" for="pwd">City:</label>
      <div class="col-sm-7">          
        <input type="text" class="form-control" id="City" placeholder="Enter City " name="city" placeholder="Enter City " name="city" required>
      </div>
    </div>
	<div class="form-group">
	<label class="control-label col-sm-5" for="role">Role:</label>
	<label class="radio-inline">
      <input type="radio" name="optradio" value="player">Player</label>
	<label class="radio-inline">
	  <input type="radio" name="optradio" value="coach">Coach
    </label>
	<label class="radio-inline">
	  <input type="radio" name="optradio" value="admin">Admin
    </label>
	</div>
    <div class="form-group">        
      <div class="col-sm-offset-5 col-sm-7">
        
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-5 col-sm-7">
        <button type="submit" class="btn btn-default">Submit</button>
		
		<button type="reset" class="btn btn-default" >Reset</button>
      </div>
    </div>
	
  </form>
  
  
</div>

</body>
</html>

