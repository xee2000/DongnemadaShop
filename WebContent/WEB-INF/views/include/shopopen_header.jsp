<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>

<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Ogani Template">
<meta name="keywords" content="Ogani, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title><decorator:title default="우리동내 하루배송" /></title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
	rel="stylesheet">
	
<!-- Css Styles -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/nice-select.css" type="text/css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/style.css" type="text/css">

</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Humberger Begin -->
	<div class="humberger__menu__overlay"></div>
	<div class="humberger__menu__wrapper">

		<div id="mobile-menu-wrap"></div>
		<div class="humberger__menu__contact"></div>
	</div>
	<!-- Humberger End -->

	<!-- Header Section Begin -->
	<header class="header">
		<div class="header__top">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-md-6">
						<div class="header__top__left">
							<img
								src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FbGpqxl%2Fbtr3U3FLbSN%2Fik1xBXQGwxrK1z2hXnONB1%2Fimg.jpg"
								alt="로고" />
						</div>
					</div>
					<div class="col-lg-6 col-md-6">
						<div class="row" style="height: 26px;"></div>
						<div class="header__top__right">
							<div class="header__top__right__auth">
								<a href="#"><i class="fa fa-user"></i>로그아웃</a>
							</div>
							<div class="header__top__right__auth">
								<a href="#"><i class=""></i> 회원가입</a>
							</div>
							<div class="header__top__right__auth">
								<a href="#"><i class=""></i> 마이페이지</a>
							</div>
							<div class="header__top__right__auth">
								<a href="#"><i class=""></i> 고객센터</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>


	</header>
	<!-- Header Section End -->