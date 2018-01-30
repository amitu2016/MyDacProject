<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<% String b = (String)session.getAttribute("auth");
/* if(!"true".equals(b))
{
	response.sendRedirect("login");
} */
List<String> rolelist = (ArrayList<String>)session.getAttribute("role");
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	
<%-- <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/res/design/design.css"> --%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SCMS</title>
 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/res/design/login.css"> 
  <script>
  function showPassword() {
	    
	    var key_attr = $('#key').attr('type');
	    
	    if(key_attr != 'text') {
	        
	        $('.checkbox').addClass('show');
	        $('#key').attr('type', 'text');
	        
	    } else {
	        
	        $('.checkbox').removeClass('show');
	        $('#key').attr('type', 'password');
	        
	    }
	    
	}
  </script>

</head>
<body>

<%@include file="NavBar.jsp" %>
	
<section id="login">
    <div class="container">
    	<div class="row" style="margin-top:47px">
    	    <div class="col-xs-12">
        	    <div class="form-wrap">
                <h1>Log in with your email account</h1>
                    <form role="form" action="login/AdminMain" method="post" id="login-form" autocomplete="off">
                        <div class="form-group">
                            <label for="email" class="sr-only">Email</label>
                            <input type="email" name="email" id="email" class="form-control" placeholder="somebody@example.com">
                        </div>
                        <div class="form-group">
                            <label for="key" class="sr-only">Password</label>
                            <input type="password" name="key" id="key" class="form-control" placeholder="Password">
                        </div>
                        <div class="checkbox">
                            <span class="character-checkbox" onclick="showPassword()"></span>
                            <span class="label " style="color:black">Show password</span>
                        </div>
                        <input type="submit" id="btn-login" class="btn btn-custom btn-lg btn-block" value="Log in">
                    </form>
                   
                    
        	    </div>
    		</div> <!-- /.col-xs-12 -->
    	</div> <!-- /.row -->
    </div> <!-- /.container -->
</section>
		</div> <!-- /.modal-content -->
	</div> <!-- /.modal-dialog -->
</div> <!-- /.modal -->

</body>
</html>