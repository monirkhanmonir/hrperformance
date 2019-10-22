<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>


<html>

<head>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>

<body>


	<!-- Modal -->
	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">

					<h4 class="modal-title">Login Here</h4>
				</div>
				<div class="modal-body">
					<h1>Login</h1>

					<form name='f' action="login" method='POST'>
						<div class="form-group">
							 <input type='text' name='username' value=''
									class="form-control" placeholder="User Name">
							
						</div>
						<div class="form-group">
							 <input type='password' name='password'
									class="form-control" placeholder="Password"/>
							
						</div>
						<div class="form-group">
							<input name="submit" type="submit" value="submit"
									class="btn btn-success form-control" />
							
						</div>					
					</form>
				</div>

			</div>

		</div>
	</div>

	</div>

	<!-- <h1>Login</h1>

	<form name='f' action="login" method='POST'>

		<table>

			<tr>

				<td>User:</td>

				<td><input type='text' name='username' value=''></td>

			</tr>

			<tr>

				<td>Password:</td>

				<td><input type='password' name='password' /></td>

			</tr>

			<tr>

				<td><input name="submit" type="submit" value="submit" /></td>

			</tr>

		</table>

	</form> -->


	<script>
		$(window).load(function() {
			$('#myModal').modal('show');
		});
	</script>

</body>

</html>

