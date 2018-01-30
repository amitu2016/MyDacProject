<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%
	String b = (String) session.getAttribute("auth");
	if (!"true".equals(b)) {
		response.sendRedirect("login");
	}
	List<Map<String, Object>> pl = (List<Map<String, Object>>) session.getAttribute("coachSession");
	String fname = "";
	String lname = "";
	for (Map<String, Object> map : pl) {
		for (Map.Entry<String, Object> entry : map.entrySet()) {
			String key = entry.getKey();
			Object value = entry.getValue();
			if (key.equals("fname")) {
				fname = (String) value;
			}
			if (key.equals("lname")) {
				lname = (String) value;
			}
		}
	}
	fname = fname.toUpperCase();
	lname = lname.toUpperCase();
%>

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
	color: black;
}

button:hover, a:hover {
	opacity: 0.7;
}
</style>


</head>
<body>

	<%@include file="NavbarAdmin.jsp"%>


	<div class="container" style="margin-top: 5%">


		<h2 style="text-align: center">
			WELCOME<%=" " + fname + " " + lname%></h2>

		<div class="card">
			<table class="table table-hover">

				<tr>
					<th class="card-text">Photo</th>
					<th class="card-text">First Name</th>
					<th class="card-text">Last Name</th>
					<th class="card-text">Sport Category</th>
					<th class="card-text">Team Under Coaching</th>
					<th class="card-text">Years of Experience</th>
					<th class="card-text">Like Button</th>
				</tr>

				<div>

					<%
						;
						for (Map<String, Object> map : pl) {
					%>



					<tr>

						<td>
							<div>
								<img class="card-img-top" src="../../Images/1.jpg"
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
						<td><a href="#"> <span
								class="glyphicon glyphicon-thumbs-up" style="color: blue"></span>
						</a></td>
					</tr>

					<%
						}
					%>

				</div>



			</table>
			<a href="editprofile"> <span style="color: blue">Edit
					Profile</span></a>

		</div>

	</div>
</body>
</html>