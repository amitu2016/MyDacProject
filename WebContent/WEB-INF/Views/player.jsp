<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href="./node_modules/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<style type="text/css">
p {
	font-size: 150%;
}
</style>
<title>SCMS</title>
</head>
<body>
	<h1 align="center">Player Profile</h1>

	<div class="container">
		<div class="row">
			<div class="col-sm-1"></div>
			<div class="col-sm-10">
				<%
					List<Map<String, Object>> list = (List<Map<String, Object>>) request.getAttribute("Player_Details");
					for (Map<String, Object> map : list) {
				%>
				<div class="row">

					<div>
						<div class="thumbnail">
						
						<!-- **************************************************************************** -->
						
						
						 <!-- /////Start of thumbnail  Every record will between this div\\\\\\\\\\ -->
							<table width="100%" style="border: 1px solid black">

								<tr style="border: 1px solid black">
									<th class="card-text">Photo</th>
									<th class="card-text">Photo</th>
									<th class="card-text">Team id</th>
									<th class="card-text">Club id</th>
									<th class="card-text">Sport Id</th>
									<th class="card-text">Team Name</th>
									<th class="card-text">Match Win</th>
									
									<th class="card-text">Like Button</th>
								</tr>

								<tr style="border: 1px solid black">

									 <td><div class="col-sm-2">
											<img class="card-img-top" src="${pageContext.request.contextPath}/res/Images/1.jpg"
												alt="Card image" style="width: 100%; height: 100%">
										</div></td>
									<%
										for (Map.Entry<String, Object> entry : map.entrySet()) {
									%>
									<td class="card-text"><%=entry.getValue()%></td>
									<%
										}
									%>
									<td><a href="#" class="btn btn-info btn-lg"> <span
											class="glyphicon glyphicon-thumbs-up"></span> Like
									</a></td>
								</tr>
							</table>
							<br />
							<br />
							<br />
						</div>
						
						
						
						
						
						
						<!-- **************************************************************************** -->
						
						
						<!-- /////End of thumbnail  Every record will between this div\\\\\\\\\\ -->
						<div class="col-sm-1"></div>
					</div>
					<%
						}
					%>

				</div>
			</div>
			<div class="col-sm-1"></div>
		</div>
	</div>
</body>
</html>