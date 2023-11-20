<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored = "false" %>
<title>To-Do List</title>

<!-- Include Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

	<div class="container mt-5">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-header">
						<h3 class="text-center">To-Do List</h3>
					</div>
					<div class="card-body">
						<!-- Add To-Do Form -->
						<form id="todoForm" action="todoForm" method="post">
							<div class="input-group mb-3">
								<input type="text" class="form-control" name="taskdetail"
									id="todoItem" placeholder="Add a new task" required>
								<div class="input-group-append">
									<button class="btn btn-success" type="submit">Add</button>
								</div>
							</div>
						</form>
						
						

					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Include Bootstrap JS and jQuery -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


</body>
</html>
