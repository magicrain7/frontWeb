<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- CSS only -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<title>BootStrap</title>
<style>
.container {
	min-height: 500px;
}
/* div {
	border: 1px solid black;
} */
.card{display : inline-block;}
</style>
</head>
<body>
	<div class="container">
		<div>
			<div class="card" style="width: 18rem;"> <!-- em 상대크기  -->
				<img src="./images/Lighthouse.jpg" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
					<a href="#" class="btn btn-primary">Go somewhere</a>
				</div>
			</div>
			<div class="card" style="width: 18rem;">
				<img src="./images/Chrysanthemum.jpg" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
					<a href="#" class="btn btn-primary">Go somewhere</a>
				</div>
			</div>
			<div class="card" style="width: 18rem;">
				<img src="./images/Chrysanthemum.jpg" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
					<a href="#" class="btn btn-primary">Go somewhere</a>
				</div>
			</div>
		</div>

		<div>
			<a href="#" class="btn btn-info">링크버튼</a> <span
				class="btn btn-success">스팬버튼</span>
			<button class="btn btn-danger">
				버튼<span class="badge badge-info">4</span>
			</button>
			<button class="btn btn-outline-danger">버튼</button>
		</div>
		<div class="alert alert-primary" role="alert">
			A simple <a href="#" class="alert-link">an example link</a> primary
			alert—check it out!
		</div>
		<div class="alert alert-danger" role="alert">
			A simple <a href="#" class="alert-link">an example link</a>danger
			alert—check it out!
		</div>
		<!-- Content here -->
		<div class="row justify-content-center">
			<div class="col-2">로고</div>
			<div class="col-6">메뉴</div>
		</div>

		<div class="row">
			<div class="col-xl-4 col-md-6 col-sm-12">
				<table class="table table-striped table-hover">
					<thead class="thead-dark">
						<tr>
							<th scope="col">#</th>
							<th scope="col">First</th>
							<th scope="col">Last</th>
							<th scope="col">Handle</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">1</th>
							<td>Mark</td>
							<td>Otto</td>
							<td>@mdo</td>
						</tr>
						<tr>
							<th scope="row">2</th>
							<td>Jacob</td>
							<td>Thornton</td>
							<td>@fat</td>
						</tr>
						<tr>
							<th scope="row">3</th>
							<td>Larry</td>
							<td>the Bird</td>
							<td>@twitter</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="col-xl-4 col-md-6 col-sm-12">
				<form>
					<div class="form-group row">
					<label class="col-3">id</label>
					<div class="col-7"><input class="form-control"></div>	
					</div>
					
					<div class="form-group row">
					<label class="col-3">pw</label>
					<div class="col-5"><input class="form-control"></div>	
					</div>
					
					<div class="form-group">
						<button class="btn btn-info">등록</button>
					</div>
				</form>
			</div>
			<div class="col-xl-4 col-md-12 col-sm-12">div3</div>
		</div>

	</div>
</body>
</html>