<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
	if (request.getAttribute("byeMsg") != null) {
		String msg = (String) request.getAttribute("byeMsg");
		if (msg.equals("탈퇴가 완료되었습니다.")) {
			out.println("<script>alert('" + msg + "')</script>");
		}
	}
	if (request.getAttribute("Msg") != null) {
		String msg = (String) request.getAttribute("Msg");
		if (msg.equals("회원가입이 완료되었습니다.")) {
			out.println("<script>alert('" + msg + "')</script>");
		}
		if (msg.equals("로그인 실패")) {
			out.println("<script>alert('" + msg + "')</script>");
		}
	}
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="assets/css/main.css" />
<title>상명대학교 시간표 만들기</title>
<style>
		input[type=text], input[type=password] {
				width: 100%;
				padding: 12px 20px;
				margin: 8px 0;
				display: inline-block;
				border: 1px solid #ccc;
				box-sizing: border-box;
			}
			input:focus{
				outline :none;
			}
			
			/* Set a style for all buttons */
			label{
				color: #7c8081;
			}
			
			button#ff {
				background-color: #009688;
				color: white;
				padding: 14px 20px;
				margin: 8px 0;
				border: none;
				cursor: pointer;
				width: 100%;
			}
			
			button:hover {
				opacity: 0.8;
			}
			
			/* Extra styles for the cancel button */
			.cancelbtn {
				width: auto;
				padding: 10px 18px;
				background-color: #009688;
			}
			
			/* Center the image and position the close button */
			#lfcon {
				padding: 16px;
			}
			
			span.psw {
				float: right;
				padding-top: 16px;
			}
			
			/* The Modal (background) */
			.modal {
				display: none; /* Hidden by default */
				position: fixed; /* Stay in place */
				z-index: 1; /* Sit on top */
				left: 0;
				top: 0;
				width: 100%; /* Full width */
				height: 100%; /* Full height */
				overflow: auto; /* Enable scroll if needed */
				background-color: rgb(0, 0, 0); /* Fallback color */
				background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
				padding-top: 60px;
			}
			
			/* Modal Content/Box */
			.modal-content { 
				background-color: #fefefe;
				margin: 5% auto 15% auto;
				/* 5% from the top, 15% from the bottom and centered */
				border: 1px solid #888;
				width: 30%; /* Could be more or less, depending on screen size */
			}
			
			/* The Close Button (x) */
			.close {
				position: absolute;
				right: 25px;
				top: 0;
				color: #000;
				font-size: 35px;
				font-weight: bold;
			}
			
			.close:hover, .close:focus {
				color: red;
				cursor: pointer;
			}
			
			/* Add Zoom Animation */
			.animate {
				-webkit-animation: animatezoom 0.6s;
				animation: animatezoom 0.6s
			}
			
			@
			-webkit-keyframes animatezoom {
				from {-webkit-transform: scale(0)
			}
			
			to {
				-webkit-transform: scale(1)
			}
			
			}
			@
			keyframes animatezoom {
				from {transform: scale(0)
			}
			
			to {
				transform: scale(1)
			}
			
			}
			
			/* Change styles for span and cancel button on extra small screens */
			@media screen and (max-width: 300px) {
				span.psw {
					display: block;
					float: none;
				}
				.cancelbtn {
					width: 100%;
				}
			}
	</style>
</head>
<body class="homepage">
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header">

					<!-- Inner -->
						<div class="inner">
							<header>
								<h1><a href="index.jsp" id="logo"><img alt="TT" src="images/1.png" style="width: 160px;"></a></h1>
								<p>상명대학교 시간표 만들기</p>
							</header>
							<footer>
								<a class="button circled scrolly" onclick="document.getElementById('id01').style.display='block'">Login</a>
								<br><br>
								<ul>
									<li style="user-select: none; cursor: pointer;"><a href="joinus.jsp">Join us</a></li>
									<br>
									<li style="font-style: italic; font-size: small;">by. Tra-la</li>
								</ul>
							</footer>
						</div>

					<!-- Nav -->
						<nav id="nav">
							<ul>
								<li><a href="index.jsp" >컴퓨터과학과 캡스톤디자인 팀 Tra-la의 개인 맞춤 시간표 제작 페이지</a></li>
							</ul>
						</nav>

				</div>
		</div>
		
		<div id="id01" class="modal">

		<form class="modal-content animate" action="UserController?command=checkIdPw" method="post">
			<div id="lfcon">
				<label><b>User ID</b></label> <input type="text"
					placeholder="Enter User ID" name="uname" required> <label><b>Password</b></label>
				<input type="password" placeholder="Enter Password" name="psw"
					required>

				<button id="ff" type="submit">Login</button>
			</div>

			<div id="lfcon" style="background-color: #f1f1f1">
				<button  type="button" id="ff"
					onclick="document.getElementById('id01').style.display='none'"
					class="cancelbtn">Cancel</button>
			</div>
		</form>
	</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.onvisible.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>
			<script>
				// Get the modal
				var modal = document.getElementById('id01');
				
				// When the user clicks anywhere outside of the modal, close it
				window.onclick = function(event) {
				    if (event.target == modal) {
				        modal.style.display = "none";
				    }
				}

			</script>

	</body>
</html>