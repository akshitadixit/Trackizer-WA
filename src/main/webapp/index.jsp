<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Home</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Didact+Gothic" rel="stylesheet" />
<link href="css/default.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/fonts.css" rel="stylesheet" type="text/css" media="all" />

<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->

</head>
<body>
<div id="header-wrapper">
	<div id="header" class="container">
		<div id="logo">
			<h1><a href="#">TRACKIZER</a></h1>
		</div>
		<div id="menu">
			<ul>
				<li class="active"><a href="#" accesskey="1" title="">Homepage</a></li>
				<li><a href="user/placeorderpage.jsp" accesskey="2" title="">Place Order</a></li>
				<li><a href="user/trackform.jsp" accesskey="3" title="">Track Order</a></li>
				<li><a href="assets/Project Report.pdf" accesskey="4" title="">About Us</a></li>
				<li><a href="loginall.jsp"  accesskey="5" title="">Login</a></li>
				
			</ul>
		</div>
	</div>
	<div id="banner" class="container">
		<div class="title">
			<h2>Courier Management and Tracking System</h2>
			<span class="byline">Built with Maven</span>
		</div>
		<ul class="actions">
			<li><a href="loginall.jsp" class="button">Login</a></li>
		</ul>
	</div>
</div>
<div id="wrapper">
	<div id="three-column" class="container">
		<div class="title">
			<h2>Features we provide</h2>
			<span class="byline">Introducing 3 different user roles for feasibility</span>
		</div>
		<div class="boxA">
			<p><b>Regular User</b> can login or signup normally. They can place orders, track their couriers with the Order ID. The user panel is kept rather simple with details of all the orders placed by them.</p><br/><br/>
			<a href="user/loginpage.jsp" class="button button-alt">Register as User</a>
		</div>
		<div class="boxB">
			<p><b>Retailers</b> are usually company side men responsible for updating order status for all orders made by users under their company name. The retailers can login, but they first need to apply and need the application to be approved by the Admin.</p><br/>
			<a href="retailer/applypage.jsp" class="button button-alt">Apply to be Retailer</a>
		</div>
		<div class="boxC">
			<p><b>Admin</b> is the person controlling the entire application interface and will be pre-assigned. The Admin can view all the users, retailers and orders with their status. Admin has to accept application of someone who wishes to become a retailer. The Admin Panel is packed with lots of functionalities.</p>
			<a href="admin/adminloginpage.jsp" class="button button-alt">Go to Admin Panel</a>
		</div>
	</div>
</div>
<div id="welcome">
	<div class="container">
		<div class="title">
			<h2>About the Project</h2>
			<span class="byline">Maven WebApp Archetype with Java Server Pages and a local MySQL database.</span>
		</div>
		<p> Maven is a powerful project management tool that is based on POM (project object model). It is used for projects build, dependency and documentation. It simplifies the build process. There are many problems that we face during the project development. They are discussed below:
			<ol style="text-align: left;" start='1'>
				<li><b>Adding set of Jars in each project:</b> In case of struts, spring, hibernate frameworks, we need to add set of jar files in each project. It must include all the dependencies of jars also.</li>
				<li><b>Creating the right project structure:</b> We must create the right project structure in servlet, struts etc, otherwise it will not be executed.</li>
				<li><b>Building and Deploying the project:</b> We must have to build and deploy the project so that it may work.</li>
			</ol><br/>
			Maven simplifies the above mentioned problems. It makes a project easy to build and provides uniform build process (one maven project can be shared by all the maven projects). It provides project information (log document, cross referenced sources, mailing list, dependency list, unit test reports etc.)
		</p>
		<ul class="actions">
			<li><a href="https://akshitadixit.github.io/Trackizer-WA/project-info.html" class="button">View project docs</a></li>
		</ul>
	</div>
</div>
<div id="copyright" class="container">
	<p>&copy; [Semester Project] All rights reserved. | Made by <a href="https://github.com/akshitadixit">Akshita Dixit</a> and <a href="https://github.com/ayushvashist" rel="nofollow">Ayush Vashist</a>.</p>
</div>
</body>
</html>
