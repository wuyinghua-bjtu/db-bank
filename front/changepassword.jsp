<!DOCTYPE HTML>
<html>
	<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
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
									if(application.getAttribute("username")==null)
									{
								%>
								<a href="index.jsp">用户</a>
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
										}else
										{
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
	
	<div class="gtco-section border-bottom">
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12">
					<div class="col-md-6 animate-box">
					<h3>修改密码</h3>
                    <%

                    %>
					<form action="checkNewpass.jsp" method = "POST">
						<div class="row form-group">
							<div class="col-md-12">
								<label  for="id">身份证号</label>
								<input type="text" name="id" class="form-control" placeholder="请输入你的身份证号">
							</div>
							
						</div>
						<div class="row form-group">
							<div class="col-md-12">
								<label  for="id">原密码</label>
								<input type="text" name="oldpass" class="form-control" placeholder="原密码">
							</div>
							
						</div>

						<div class="row form-group">
							<div class="col-md-12">
								<label for="Password">新密码</label>
								<input type="password" name="password" class="form-control" placeholder="长度不超过20位">
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12">
								<label  for="Make Sure Password">重输密码</label>
								<input type="password" name="mspassword" class="form-control" placeholder="请重新输入新密码">
							</div>
						</div>
						
						<div class="form-group">
							<input type="submit" value="提交" class="btn btn-primary">
						</div>

					</form>		
				</div>
				<div class="col-md-5 col-md-push-1 animate-box">
					
					<div class="gtco-contact-info">
						<h3>关于制作者</h3>
						<ul>
							<li class="phone">17640052174</li>
							<li class="email">18281220@bjtu.edu.cn</a></li>
						</ul>
					</div>


				</div>
				</div>
			</div>
		</div>
	</div>
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

