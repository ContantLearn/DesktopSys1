<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>桌面</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="../css/forewrapper.css"></link>
<link rel="stylesheet" type="text/css" href="../css/font-awesome.min.css"></link>
<script type="text/javascript" src="../js/jquery-1.8.0.min.js"></script>
<script type="text/javascript">
	$(function() {
		$(document).on("click",".fontwrapper-navbar-tools > ul > li.parent",dropMenuClkEvt);
	});

	function dropMenuClkEvt() {
		var $parentLi = $(this);
		if(!$parentLi.find("ul").hasClass("show")) {
			$parentLi.find("ul").addClass("show");
			$(document).one("click",function() {
				$parentLi.find("ul").removeClass("show");
			});
		}
	}
</script>
<style>
html,body {
	width: 100%;
	height: 100%;
	margin: 0 0;
	padding: 0;
}
div#container {
	position: relative;
	width: 100%;
	height: 100%;
	background-image: url("../images/desktop.jpg");
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
}
.fontwrapper-navbar {
	position: fixed;
	width: 60%;
	height: 40px;
	line-height: 40px;
	left: 20%;
	top: 5%;
	font-size: 18px;
	background-color: #F9F9F9;
	color: #000;
}
.fontwrapper-navbar i {
	font-size: 14px;
}
.fontwrapper-navbar-title {
	position: relative;
	display: inline-block;
	width: 100px;
	height: 40px;
	text-align: center;
	float: left;
}
.fontwrapper-navbar-tools {
	position: relative;
	display: inline-block;
	height: 40px;
	float: left;
}
.fontwrapper-navbar-tools > ul {
	height: 40px;
	margin: 0 0;
	padding: 0;
}
.fontwrapper-navbar-tools > ul > li {
	display: inline-block;
	float: left;
	min-width: 100px;
	transition: all .5s;
	cursor: pointer;
	height: 40px;
	text-align: center;
}
.fontwrapper-navbar-tools > ul > li:hover {
	background-color: #ABABAB;
}
.fontwrapper-navbar-tools > ul > li.parent > a:after {
	content: "\f0d7";
	position: relative;
	font-family: 'FontAwesome';
	top: 0;
	left: 10px;
}
.fontwrapper-navbar-tools > ul > li > ul {
	visibility: hidden; 
	margin: 0 0;
	padding: 0;
	background-color: #F9F9F9;
	color: #000;
	text-align: left;
	transform: translate(0,45px);
	transition: all .5s;
	min-height: 100px;
	font-size: 14px;
	opacity: 0;
}
.fontwrapper-navbar-tools > ul > li > ul:after {
	content: "";
	position: absolute;
	display: block;
	top: -10px;
	left: 20px;
	width:0; 
    height:0;
	border-left:8px solid transparent;
    border-right:8px solid transparent;
    border-bottom:10px solid #F9F9F9;
}

.fontwrapper-navbar-tools > ul > li > ul > li {
	list-style-type: none;
	min-width: 120px;
	padding-left: 5px;
	padding-right: 5px;
}
.fontwrapper-navbar-tools > ul > li > ul > li a {
	display: block;
	transform: translate(0,0);
	transition: all .5s;
}
.fontwrapper-navbar-tools > ul > li > ul > li:hover a {
	transform: translate(10px,0);
}
.fontwrapper-navbar-tools > ul > li.parent > ul.show {
	visibility: visible; 
	transform: translate(0,15px);
	opacity: 1;
}
</style>
</head>
<body>
<div id="container">
<div class="fontwrapper-navbar color-light-gray">
	<div class="fontwrapper-navbar-title"> <i class="fa fa-bitbucket"></i> 菜单
	</div>
	<div class="fontwrapper-navbar-tools">
		<ul>
			<li><a>天气</a></li>
			<li><a>应用</a></li>
			<li><a>快速通道</a></li>
			<li class="parent"><a>更多</a>
				<ul>
					<li><a>地图</a></li>
					<li><a>浏览器</a></li>
					<li><a>购物</a></li>
				</ul>
			</li>
		</ul>
	</div>
</div>
</div>
</body>
</html>