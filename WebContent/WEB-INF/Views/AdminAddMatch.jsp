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
  
  
  
.selectClubId
{
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
    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
    -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
  }
  
  .selectSports
  {
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

<div class="container" style="margin-top:5%" >

<div class=row>
 
  <h3 align="center">Add Match Details:</h3>
  
  <form class="form-horizontal" action="/action_page.php">
      <div class="form-group">
      	<label class="control-label col-sm-5" for="SelectSports">Select Club Id:</label>
      		<div class="col-sm-7">
       			 
    			<select class="selectClubId" id="sel1">
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
				</select>
      			
    		</div>
    	</div>
    
      <div class="form-group">
      	<label class="control-label col-sm-5" for="SelectSports">Select Sports:</label>
      		<div class="col-sm-7">
       			<select class="selectSports" id="sel1">
					<option>Cricket</option>
					<option>Badminton</option>
					<option>Chess</option>
					
				</select>
      			 
    		</div>
    	</div>
    	
    	<div class="form-group">
			<label class="control-label col-sm-5" for="SelectSports">Select Team 1:</label>
				<div class="col-sm-7">
					
						<select class="selectSports" id="sel1">
							<option>Team1</option>
							<option>Team2</option>
							<option>Team3</option>
					
						</select>	
				</div>
		</div>
    
		
		<div class="form-group">
			<label class="control-label col-sm-5" for="SelectSports">Select Team 2:</label>
				<div class="col-sm-7">
					<div class="dropdown">
					<select class="selectSports" id="sel1">
							<option>Team1</option>
							<option>Team2</option>
							<option>Team3</option>
					
						</select>		
							
					</div>
				</div>
    	</div>
		
		<div class="form-group">
      		<label class="control-label col-sm-5" for="timing">Timing:</label>
      		<div class="col-sm-7">
        		<input type="text" class="form-control" id="timing" placeholder="Enter Your Match Timing" name="timing">
      		</div>
		</div>
    	
		<div class="form-group">
      		<label class="control-label col-sm-5" for="timing">Status:</label>
      		<div class="col-sm-7">
        		<input type="text" class="form-control" id="Status" placeholder="Enter Match Status" name="status">
      		</div>
		</div>
    	
    
    
    <div class="form-group">        
      <div class="col-sm-offset-5 col-sm-7">
        <button type="submit" class="btn btn-default">Create Match</button>
		
		<button type="reset" class="btn btn-default">Reset</button>
      </div>
    </div>
	
  </form>
  
  
</div>

</div>
</body>
</html>
    
  