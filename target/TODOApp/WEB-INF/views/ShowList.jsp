<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!-- Include Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



	<div class="container mt-5 text-center">

		<div class="row">

			<div class="col-md-12 ">

				<h1>To-Do List</h1>

				<table class="table mt-5">
					<thead>
						<tr>
							<th scope="col">S.No</th>
							<th scope="col">Task Details</th>
							<th scope="col">Status</th>

						</tr>
					</thead>

					<tbody>

						<c:forEach items="${task }" var="t">
							
							<tr>
								<th>${t.id}</th>
								<td>${t.taskdetail}</td>
								<td>
								<form action="delete/${t.id}" >
    <input type="checkbox" name="completed" th:checked="${t.completed}" onchange="this.form.submit()" />
</form>
								</td>
							</tr>
							
						</c:forEach>

					</tbody>

				</table>
			</div>
		</div>
	</div>


	<div class="container text-center">

		<a href="addTask"
			class="btn btn-outline-success">Add Task</a>
	</div>
</body>
</html>