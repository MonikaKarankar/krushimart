<%@page import="krushimart.ProductCRUD"%>
<%@page import="krushimart.UserCRUD"%>
<%@page import="krushimart.User"%>
<%@page import="krushimart.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<style>
.body {
	background-image: url("image/b1.jpg");
	background-repeat: no-repeat;
	background-size: cover;
	font-family: sans-serif;
}
</style>

<link rel="stylesheet" href="css/farmerHomePage.css" type="text/css">
<title>Hello, world!</title>
</head>
<body class="body">

	<%
	String id = (String) request.getAttribute("cookie");
	%>
	<%
	HttpSession httpSession = request.getSession();
	System.out.println(httpSession);
	String email = (String) httpSession.getAttribute("session");
	User user1=new User();
	UserCRUD crud = new UserCRUD();
	User user = crud.getUser(email);
	
	
	%>
	<%
	ProductCRUD productCRUD = new ProductCRUD();
	List<Product> list = productCRUD.dispalyAll();
	request.setAttribute("List", list);
	%>

	<%
	List<Product> list1 = (List) request.getAttribute("List");
	%>

	<nav class="navbar navbar-expand-lg navbar-dark bg-success">
		<a class="navbar-brand" href="#"><img src="image/logo1.png"
			width="50px" height="50px"></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="homePageFamer.jsp">HOME <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="profile.jsp?>">PROFILE</a></li>

				<li class="nav-item active"><a class="nav-link"
					href="createpost.jsp">POST</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="about.jsp">ABOUT</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="contactfamer.jsp">CONTACT</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="login.jsp">LOGOUT</a></li>
	</nav>
	<div style="text-align: center; font-size: 25px; padding: 10px">
		<%
		String message = (String) request.getAttribute("message");
		if (message != null) {
		%>
		<%=message%>
		<%
		}
		%>



		<%
		String message2 = (String) request.getAttribute("message2");
		if (message2 != null) {
		%>
		<%=message2 %>
		<%
		}
		%>
	</div>

	<%
	for (Product product : list) {
	%>

	<div class="main">
		<img src="image/p.jpeg" alt="" width="150px" height="150px">
		<div class="abt-post">
			<label for="">PRODUCT NAME : <%=product.getProduct_name()%>
			</label><br> <label for="">QUANTITY : <%=product.getQuantity()%></label><br>
			<label for="">PRICE : <%=product.getPrice()%></label><br>

		</div>
	</div>
	<%
	}
	%>

	</div>

	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
		crossorigin="anonymous"></script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
    -->
</body>
</html>





