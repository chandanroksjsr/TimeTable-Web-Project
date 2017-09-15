<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
	if (request.getAttribute("byeMsg") != null) {
		String msg = (String) request.getAttribute("byeMsg");
		if (msg.equals("패스워드 오류입니다.")) {
			out.println("<script>alert('" + msg + "')</script>");
		}
		else if(msg.equals("수정이 완료되었습니다.")){
			out.println("<script>alert('" + msg + "')</script>");
		}
		else if(msg.equals("입력이 완료되었습니다.")){
			out.println("<script>alert('" + msg + "')</script>");
		}
	}
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel='stylesheet'
	href='https://fonts.googleapis.com/css?family=Roboto'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!--  <link rel="stylesheet" href="assets/css/main.css" />-->
<link rel="stylesheet" href="assets/css/calc.css">
<title>My Page</title>
<style>
#table_bt {
	color: #303e45 !important;
	font-size: small;
	background-color: white;
	border-bottom: #303e45;
	border-bottom-style: dotted;
	border-radius: unset;
	padding-left: 2px;
	padding-right: 2px;
	margin-right: 10px;
}

.checks {
	position: relative;
}

.checks input[type="checkbox"] { /* 실제 체크박스는 화면에서 숨김 */
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0
}

.checks input[type="checkbox"]+label {
	display: inline-block;
	position: relative;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	padding-left: 46px;
}

.checks input[type="checkbox"]+label:before { /* 가짜 체크박스 */
	content: ' ';
	display: inline-block;
	width: 21px; /* 체크박스의 너비를 지정 */
	height: 21px; /* 체크박스의 높이를 지정 */
	line-height: 21px; /* 세로정렬을 위해 높이값과 일치 */
	margin: -2px 8px 0 20px;
	text-align: center;
	vertical-align: middle;
	background: #fafafa;
	border: 1px solid #cacece;
	border-radius: 3px;
	box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.05), inset 0px -15px 10px -12px
		rgba(0, 0, 0, 0.05);
}

.checks input[type="checkbox"]+label:active:before, .checks input[type="checkbox"]:checked+label:active:before
	{
	box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05), inset 0px 1px 3px
		rgba(0, 0, 0, 0.1);
}

.checks input[type="checkbox"]:checked+label:before { /* 체크박스를 체크했을때 */
	content: '\2714'; /* 체크표시 유니코드 사용 */
	color: #99a1a7;
	text-shadow: 1px 1px #fff;
	background: #e9ecee;
	border-color: #adb8c0;
	box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.05), inset 0px -15px 10px -12px
		rgba(0, 0, 0, 0.05), inset 15px 10px -12px rgba(255, 255, 255, 0.1);
}

#table_form td {
	-moz-appearance: none;
	-webkit-appearance: none;
	-ms-appearance: none;
	appearance: none;
	-moz-transform: scale(1);
	-webkit-transform: scale(1);
	-ms-transform: scale(1);
	transform: scale(1);
	-moz-transition: border-color 0.2s ease, background-color 0.2s ease;
	-webkit-transition: border-color 0.2s ease, background-color 0.2s ease;
	-ms-transition: border-color 0.2s ease, background-color 0.2s ease;
	transition: border-color 0.2s ease, background-color 0.2s ease;
	background-color: transparent;
	border: none;
	border: solid 2px rgba(0, 0, 0, 0.25);
	color: black;
	outline: 0;
	padding: 0 1em;
	text-decoration: none;
	text-align: center;
}

.checks {
	position: relative;
}

.checks input[type="radio"] { /* 실제 체크박스는 화면에서 숨김 */
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0;
}

.checks input[type="radio"]+label {
	display: inline-block;
	position: relative;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	padding-left: 46px;
}

.checks input[type="radio"]+label:before { /* 가짜 체크박스 */
	content: ' ';
	display: inline-block;
	width: 21px; /* 체크박스의 너비를 지정 */
	height: 21px; /* 체크박스의 높이를 지정 */
	line-height: 21px; /* 세로정렬을 위해 높이값과 일치 */
	margin: -2px 8px 0 20px;
	text-align: center;
	vertical-align: middle;
	background: #fafafa;
	border: 1px solid #cacece;
	border-radius: 3px;
	box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.05), inset 0px -15px 10px -12px
		rgba(0, 0, 0, 0.05);
}

.checks input[type="radio"]+label:active:before, .checks input[type="radio"]:checked+label:active:before
	{
	box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05), inset 0px 1px 3px
		rgba(0, 0, 0, 0.1);
}

.checks input[type="radio"]:checked+label:before { /* 체크박스를 체크했을때 */
	content: '\2714';
	/* 체크표시 유니코드 사용 */
	color: #99a1a7;
	text-shadow: 1px 1px #fff;
	background: #e9ecee;
	border-color: #adb8c0;
	box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.05), inset 0px -15px 10px -12px
		rgba(0, 0, 0, 0.05), inset 15px 10px -12px rgba(255, 255, 255, 0.1);
}

#table_form tbody td {t
	width: 14%;
}

#table_form thead tr, td {
	height: 30px;
}

#table_form th {
	border: solid 2px rgba(0, 0, 0, 0.25);
	font-size: small;
	width: 12%;
}

#leave>ul {
	float: left;
}

#leave>ul>li {
	float: left;
	list-style: none;
	margin-left: 1em;
}

#updateInfo>form>ul>li>input {
	margin: 0.2em
}

#updateInfo>form>ul>li>select {
	margin: 0.2em;
	width: 29em;
}

#updateInfo>form>ul {
	float: left;
	margin: 0.2em;
}

#updateInfo>form>ul>li {
	float: left;
	list-style: none;
	margin-left: 0.5em;
	margin-right: 0.5em;
}

input:focus, select {
	outline: none;
}

#logo>a {
	float: left;
	display: block;
	margin: 10px 10px 20px 20px;
	width: 40px;
	height: 40px;
}

#logo>a>img {
	width: 100%;
	height: 100%;
}

#logo>p {
	float: left;
	margin: 10px 10px 20px 0px;
}

#logo>p>span.name {
	display: block;
	color: #009688;
	font-size: 18px;
	font-weight: bold;
}

#logo>p>span.name.single {
	line-height: 76px;
}

#logo>p>span.name.multiple {
	margin-left: 3px;
	line-height: 15px;
	font-size: 13px;
}

#logo>p>span.subname {
	display: block;
	line-height: 25px;
	color: #4c4c4c;
	font-size: 22px;
}

#logo {
	float: left;
	margin-left: 25px;
	height: 100%;
}

#account {
	float: right;
	margin-right: 25px;
	height: 100%;
}

#account>li {
	float: left;
	list-style: none;
}

#account>li>input.button {
	display: block;
	padding: 0 15px;
	height: 35px;
	line-height: 35px;
	border-radius: 6px;
	font-size: 15px;
}

#account>li>input {
	color: white;
	background-color: #009688;
	margin-right: 1em;
}

#account>li>a.button.red {
	color: #fff;
	background-color: #db6153;
}

#account>li>a.picture>img {
	border: 1px solid #d6d6d6;
	width: 38px;
	height: 38px;
	border-radius: 6px;
}

nav {
	position: fixed;
	z-index: 100;
	left: 0;
	top: 0;
	width: 100%;
	height: 60px;
	background-color: #f1f1f1;
}

nav>div.wrap {
	margin: 0 auto;
	width: 1180px;
	height: 100%;
}

#logo {
	float: left;
	margin-left: 5px;
	height: 100%;
}

#aa:hover {
	opacity: 0.3
}

body, h1, h2, h3, h4, h5 {
	font-family: "Roboto", sans-serif;
}

body {
	font-size: 16px;
}

.w3-half img {
	margin-bottom: -6px;
	margin-top: 16px;
	opacity: 0.8;
	cursor: pointer;
}

.w3-half img:hover {
	opacity: 1;
}
</style>
<script type="text/javascript">
	Object
			.defineProperty(
					window.navigator,
					'userAgent',
					{
						get : function() {
							return 'Mozilla/5.0 (Linux; Android 4.4.2; Nexus 4 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.114 Mobile Safari/537.36';
						}
					});
	Object.defineProperty(window.navigator, 'vendor', {
		get : function() {
			return '';
		}
	});
	Object.defineProperty(window.navigator, 'platform', {
		get : function() {
			return 'Android';
		}
	});
</script>
<style>
select {
	color: #808080;
	width: 150px;
}
</style>
</script>

<script>
	function calc() {

		// Vars.
		var $form = document.querySelectorAll('#signup-form')[0], $submit = document
				.querySelectorAll('#signup-form input[type="submit"]')[0], $message;
		var x = parseFloat(document.getElementById("x").value);
		var x1 = parseInt(document.getElementById("x1").value);
		var y = parseFloat(document.getElementById("y").value);
		var y1 = parseInt(document.getElementById("y1").value);
		var c = parseFloat(document.getElementById("c").value);
		var c1 = parseInt(document.getElementById("c1").value);
		var d = parseFloat(document.getElementById("d").value);
		var d1 = parseInt(document.getElementById("d1").value);
		var e = parseFloat(document.getElementById("e").value);
		var e1 = parseInt(document.getElementById("e1").value);
		var f = parseFloat(document.getElementById("f").value);
		var f1 = parseInt(document.getElementById("f1").value);
		var g = parseFloat(document.getElementById("g").value);
		var g1 = parseInt(document.getElementById("g1").value);
		var h = parseFloat(document.getElementById("h").value);
		var h1 = parseInt(document.getElementById("h1").value);

		var list = [ x, y, c, d, e, f, g, h ];
		var list2 = [ x1, y1, c1, d1, e1, f1, g1, h1 ];

		var a, b, c, d, sum, sum_s;
		a = 0;
		b = 0;
		c = 0;
		d = 0;

		for (var i = 0; i < 8; i++) {
			if (list[i] != 0 && list2[i] != 0) {
				a += list[i] * list2[i];
				b += list2[i];
			}
		}
		var frmNm = document.getElementsByName("sub");
		for (var i = 0; i < document.getElementsByName("sub").length; i++) {

			if (frmNm[i].checked) {
				c += list[i] * list2[i];
				d += list2[i];
			}
		}
		sum = a / b;
		sum_s = c / d;
		
		alert("전체: "+sum.toPrecision(3)+", 전공: "+sum_s.toPrecision(3)+" 입니다.");
	};
</script>
</head>
<body class="w3-light-grey">
	<nav>
		<div class="wrap">
			<div id="logo">
				<a href="index.jsp"><img src="images/blueLogo.png"></a>
				<p><span class="name multiple">TimeTable</span><span class="subname">상명대학교</span></p>
			</div>
			<ul id="account">
				<li><a href="index.jsp"><input type="button" href="index.jsp" class="button white" id="import_button" value="Home" style="margin-right: 1em;"></a></li>
				<li><a href="javascript:logout()"><input type="button" class="button white" value="log out"></a></li>
			</ul>
		</div>
	</nav>
	<!-- Page Container -->
	
	<div class="w3-content w3-margin-top" style="margin-top:70px!important;max-width: 1400px;">
		<!-- The Grid -->
		<div class="w3-row-padding">

			<!-- Left Column -->
			<div class="w3-third" style="width: 25%;">
				<div style="text-align: center;background-color: #303e45!important;color:white;"> <b>${sessionScope.currentCustomer.id}(${sessionScope.currentCustomer.name})님</b> </div>
				<div class="w3-white w3-text-grey w3-card-4">
					<div class="w3-container" style="color:#303e45!important">
						
						<p>
							<i
								class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal"></i>${sessionScope.currentCustomer.college}</p>
						<p>
							<i class="fa fa-home fa-fw w3-margin-right w3-large w3-text-teal"></i>${sessionScope.currentCustomer.major}</p>
						<p>
							<i
								class="fa fa-envelope fa-fw w3-margin-right w3-large w3-text-teal"></i>${sessionScope.currentCustomer.num}</p>
						<p style="font-size: 10pt; margin-bottom: auto; color:#303e45!important"><b>취득 학점</b></p>
						<div class="w3-light-grey w3-round-xlarge w3-small">
							<div class="w3-container w3-center w3-round-xlarge w3-teal"
								id="totalCredit">${sessionScope.totalCredit}/130</div>
						</div>
						<p style="font-size: 10pt; margin-bottom: auto; color:#303e45!important"><b>평점</b></p>
						<div class="w3-light-grey w3-round-xlarge w3-small">
							<div class="w3-container w3-center w3-round-xlarge w3-teal"
								id="totalGPA">${sessionScope.totalGPA}/ 4.5</div>
						</div>
					</div>
					<div style="margin-top: 2em;">
						<div style="text-align: center;background-color: #303e45!important;color:white;"><b>Menu</b></div>

						<div class="w3-bar-block" style="color:#303e45!important" >
							<a onclick="pageFun('home')" class="w3-bar-item w3-button" id="aa"><b>내 시간표</b></a> 
							<a onclick="pageFun('enter')" class="w3-bar-item w3-button" id="aa"><b>학점 입력</b></a> 
							<a onclick="pageFun('view')" class="w3-bar-item w3-button" id="aa"><b>학점 조회</b></a> 
							<a onclick="pageFun('cal')"  class="w3-bar-item w3-button" id="aa"><b>학점 계산</b></a>
							<a onclick="pageFun('update')"  class="w3-bar-item w3-button" id="aa"><b>회원 정보 수정</b></a>
							<a onclick="pageFun('out')"  class="w3-bar-item w3-button" id="aa"><b>회원 탈퇴</b></a>
						</div>
					</div>
				</div>
				<br>
			</div>

			<!-- Right Column -->
			<div class="w3-twothird" id="pageList"></div>
		</div>
	</div>
	<footer class="w3-container w3-teal w3-center w3-margin-top">
		<p>Sangmyung University.</p>
        <p style="font-style: italic;">by. Tra-la</p>
    </footer>
    
    <script type="text/javascript" src="scripts/jquery-3.1.1.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
	    var t = parseFloat(${sessionScope.totalCredit});
	    var t2 = parseFloat(${sessionScope.totalGPA});
	    
	    var p = t/130*100+"%"
	    var p2 = t2/4.5*100+"%"
	    
		$("#totalCredit").css("width",p);
	    $("#totalGPA").css("width",p2);
	});
	
	$(document).ready(function(){
	    $("#pageList").load("mypageHome.jsp");
	});
	
	function pageFun(v){
			var page;
			if(v == "home"){page = "mypageHome.jsp";}
			if(v == "enter"){page = "enterGrade.jsp";}
			if(v == "view"){page = "viewGrade.jsp";}
			if(v == "cal"){page = "calGrade.jsp";}
			if(v == "update"){page = "updateInfo.jsp";}
			if(v == "out"){page = "leaveUser.jsp";}
			if(v == "editTT"){page = "editTable.jsp";}
			$.ajax({
				url : page,
				data : {msg: "tt"},
				method : "post",
				dataType : "html",
				success : function(result){
					$("#pageList").html(result);
				}
			});
		}
	function logout(){
		alert("로그아웃 되었습니다.");
		document.location.href="index.jsp";
	}
	
	</script>
</body>
</html>