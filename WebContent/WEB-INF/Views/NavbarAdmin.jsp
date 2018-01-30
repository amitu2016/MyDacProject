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


					<li><a href="../sports" class="navfontsize " style="color:azure;">Sports</a></li>
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
						data-toggle="dropdown" href="#" class="navfontsize"  style="color:azure;"	>Coach<span
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
				 <li>WELCOME123,<label> <% session.getAttribute("user_check"); %>!</label> 
					<li><a href="logout" class="navfontsize" style="color:azure"><span class="glyphicon glyphicon-log-out"></span>
							Logout</a></li>
				</ul>
				</div>

	</nav>