<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>

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
	max-width: 800px;
	margin: auto;
	text-align: center;
	font-family: arial;
}

.title {
	color: grey;
	font-size: 18px;
}

button {
	border: none;
	outline: 0;
	display: inline-block;
	padding: 8px;
	color: white;
	background-color: #000;
	text-align: center;
	cursor: pointer;
	width: 100%;
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
<title>SCMS</title>
</head>
<body>
<%@include file="NavbarAdmin.jsp" %>




<div class="container"  style="margin-top:5%">
	

	<h2 style="text-align: center">Match Profile</h2>
		<div class="card">
			
			<table>
				
								<tr>		
								<div>	<th class="card-text"></th></div>
									<th class="card-text">Team One</th>
									<th class="card-text">Date of Match</th>
									<th class="card-text">Team Two</th>
									<th class="card-text">Winning team</th>
									<th class="card-text">Likes</th>
									
									<th class="card-text">Status</th>
									
									<th class="card-text">Like Button</th>
									
								</tr>
				
			
			
			<div>
				<%
					
				List<Map<String, Object>> list = (List<Map<String, Object>>) request.getAttribute("Matches");
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
								</tr>
								
								<%
						}
					%>
						</div>		
							</table>
							
						
						
						
						
					</div>
					

			</div>
			
		
</body>
</html>