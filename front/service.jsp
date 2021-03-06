<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.mysql.jdbc.Driver"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE HTML>

<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title></title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Website Template by FreeHTML5.co" />
	<meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
	<meta name="author" content="FreeHTML5.co" />

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Themify Icons-->
	<link rel="stylesheet" href="css/themify-icons.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/bootstrap-datepicker.min.css">

	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>
		
	<div class="gtco-loader"></div>
	
	<div id="page">

	<!-- <div class="page-inner"> -->
		<nav class="gtco-nav" role="navigation">
			<div class="gtco-container">

				<div class="row">
					<div class="col-sm-4 col-xs-12">
						<div id="gtco-logo"><a href="index.jsp">快捷交易系统 <em>.</em></a></div>
					</div>
					<div class="col-xs-8 text-right menu-1">
						<ul>
							<li class="has-dropdown">
								<%
									String admin = "admin";
									if(application.getAttribute("username")==null)
									{
								%>
								<a href="index.jsp">用户</a>
								<%
								}else if(application.getAttribute("username").equals(admin))
								{
								%>
								<a href="adminUse.jsp"><%=application.getAttribute("username")%></a>
								<%
								}else
								{
								%>
								<a href="MyItineraries.jsp"><%=application.getAttribute("username")%></a>
								<%
									}
								%>
								<ul class="dropdown">
									<li>
										<%
											if(application.getAttribute("username")==null)
											{
										%>
										<a href="index.jsp">登录</a>
										<%
										}else
										{
										%>
										<a href="index.jsp">切换账户</a>
										<%
											}
										%>
									</li>
									<li>
										<%
											if(application.getAttribute("username")==null)
											{
										%>
										<a href="index.jsp">个人信息</a>
										<%
										}else if(application.getAttribute("username").equals(admin))
										{
										%>
										<a href="adminUse.jsp">查询转账记录</a>
										<%
										}
										else{
										%>
										<a href="MyItineraries.jsp">个人信息</a>
										<%
											}
										%>
									</li>
									<li><a href="logout.jsp" >退出登录</a></li>
								</ul>
							</li>
							<li><a href="index.jsp">登录</a></li>
							<li><a href="Registered.jsp">注册</a></li>
						</ul>
					</div>
				</div>

			</div>
		</nav>
	
	<header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url(images/wyhsb.jpg)">
		<div class="overlay"></div>
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12 col-md-offset-0 text-left">


					<div class="row row-mt-15em">
						<div class="col-md-7 mt-text animate-box" data-animate-effect="fadeInUp">
							<h1>数据库课程设计：快捷交易系统</h1>
						</div>
						<div class="col-md-4 col-md-push-1 animate-box" data-animate-effect="fadeInRight">
							<div class="form-wrap">
								<div class="tab">
									<div class="tab-content">
										<div class="tab-content-inner active" data-content="signup">
											<h3>转账发起：</h3>
											<form action="checkservice.jsp" method="POST">
												<div class="row form-group">
													<div class="col-md-12">
														<label for="fullname">收款方身份证号</label>
														<input type="text" name="skid" class="form-control" placeholder="请输入收款方身份证号">
													</div>
												</div>
												<div class="row form-group">
													<div class="col-md-12">
														<label for="fullname">交易金额</label>
														<input type="text" name="amount" class="form-control" placeholder="请输入交易金额">
													</div>
												</div>
												<div class="row form-group">
													<div class="col-md-12">
														<input type="submit" class="btn btn-primary btn-block" value="提交"  />
													</div>
												</div>
											</form>
										</div>


									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>

	</header>

	<div></div>
	<!-- </div> -->

	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>
	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- countTo -->
	<script src="js/jquery.countTo.js"></script>

	<!-- Stellar Parallax -->
	<script src="js/jquery.stellar.min.js"></script>

	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	
	<!-- Datepicker -->
	<script src="js/bootstrap-datepicker.min.js"></script>
	

	<!-- Main -->
	<script src="js/main.js"></script>

	</body>
</html>