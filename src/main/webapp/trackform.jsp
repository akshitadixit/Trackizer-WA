<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<%  
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/trackizer","root", "root");
    Statement st = con.createStatement();
%>
<html lang="en">
<head>
	<title>Tracking</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="template/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="template/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="template/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="template/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="template/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="images/img-01.png" alt="IMG">
				</div>


				<form class="login100-form validate-form" id="trackform" action="trackform.jsp">
					<span class="login100-form-title">
						Track Order
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Valid Order ID required">
						<input class="input100" type="text" name="id" placeholder="id">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-link" aria-hidden="true"></i>
						</span>
					</div>
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Track
						</button>
					</div>
				</form>
				<% 
					String id = request.getParameter("id");
					String val = "";
					if (id == null) {
				%> 
					<div class="wrap-input100" form="trackform">
						<input class="input100" type="text" name="result" value=' ' readonly="readonly">
						<span class="focus-input100"></span>
					</div>
				<%
					}
					else{
						ResultSet i = st.executeQuery("select status from trackizer.track where id='" + id + "'");
						while(i.next()){
				%>
					<div class="wrap-input100" form="trackform">
						<input class="input100" type="text" name="result" value='<%=i.getString("status")%>' readonly="readonly">
						<span class="focus-input100"></span>
					</div>
				<%
					}}
				%>
			</div>
		</div>
	</div>
	
	

	
<!--===============================================================================================-->	
	<script src="template/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="template/vendor/bootstrap/js/popper.js"></script>
	<script src="template/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="template/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="template/vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>