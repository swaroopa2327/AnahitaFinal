<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>View User Profile</title>
<style>
.error {
	color: red;
	font-weight: bold;
	font-size: 9pt;
}
.snippets {
	color: red;
	font-size: 12pt;
	font-weight: bold;
	margin-top:100px;
}
.table th {
	text-align: center;
}
</style>
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resorces/css/bootstrapValidator.min.css">
<link rel="stylesheet" href="resources/css/myStyle.css">
<script src="resources/js/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script
	src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script type="text/javascript"
	src="resources/js/bootstrapValidator.min.js"></script>
<script src="resources/js/angular.js"></script>

<script>

	var oneus =${oneUserModel};

		angular.module('Anahita', []).controller('UserController',
			function($scope) {
				$scope.olo = oneus;

			});
</script>
</head>

<body ng-app="Anahita" ng-controller ="UserController">

	<jsp:include page="navbar.jsp"></jsp:include>
	<div style="margin-bottom: 25px"></div>
   	<div class="row myPanel">
			<div class=" col-md-6  col-sm-offset-2 panel panel-default panel-info">
				<div class="panel-heading">
					<h4><b>My Profile</b></h4>
				</div>
				<div class="panel-body">
					<table class="table table-sm" style="border:solid  1pt navy">
						
						<tbody>
						    <tr >
								<td><b>User Name</b></td>
								<td>{{olo.username}}</td>
							</tr>
							<tr >
								<td><b>First Name</b></td>
								<td>{{olo.userFname}}</td>
							</tr>
							<tr >
								<td><b>Last Name</b></td>
								<td>{{olo.userLname}}</td>
							</tr>
							<tr >
								<td><b>Contact Address</b></td>
								<td>{{olo.userAddress}}</td>
							</tr>
							<tr >
								<td><b>Phone Number</b></td>
								<td>{{olo.userPhno}}</td>
							</tr>
							<tr >
								<td><b>Email</b> </td>
								<td>{{olo.userEmail}}</td>
							</tr>
							<tr >
								<td><b>Date of Birth</b></td>
								<td>{{olo.userDob}}</td>
							</tr>
							
							
                             <tr  >
								<td class="text-center" colspan="2">
											<a href="editMyProfile?getuid={{olo.username}}"><button
														type="submit" class="btn btn-primary">Edit Profile</button></a>
											
							     </td>
							</tr>
											
											
									
									</tbody>
								</table>

							</div>
						</div>
					</div>
			
</body>

<!--START OF PAGE FOOTER -->
<jsp:include page="footer.jsp"></jsp:include>
</html>   



















