<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!DOCTYPE HTML>
<html>
<head>
<title>회원가입</title>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="assets/css/main.css" />
<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
<style>
input[type=text], input[type=password],select {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

input:focus ,select{
	outline: none;
}

/* Set a style for all buttons */
label {
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
<body>
	<div id="page-wrapper">
		<!-- Header -->
		<!-- Nav -->
		<!--<div id="head"> -->
			<nav id="nav">
				<ul>
					<li><a href="index.jsp" >HOME</a></li>
					<li><a style="cursor: pointer;"
						onclick="document.getElementById('id01').style.display='block'">LOGIN</a></li>
				</ul>
			</nav>
		<!--</div> -->
		<article id="main" >
			<div style="text-align:center;margin-top: 7em;">
				<span class="icon fa-envelope"></span>
				<h2 style="font-size: 2em">Join us</h2>
				<p style="text-align:center;">회원가입을 위해 아래 양식을 작성해주세요.</p>
			</div>

			<!-- One -->
			<section class="wrapper style4 special container 75%" style="margin: auto;">

				<!-- Content -->
				<div class="content">
					<form action="UserController?command=createUser"
						method="post" name="form1">
						<div class="row 50%">
							<div class="6u 12u(mobile)">
								<input type="text" id="inputid" name="id" placeholder="ID"
									onblur="IdCheck()" />
							</div>
							<div class="6u 12u(mobile)">
								<input type="password"  name="pw" placeholder="Password" />
							</div>
						</div>
						<div class="row 50%">
							<div class="6u 12u(mobile)">
								<input type="text" name="name"  placeholder="Name" />
							</div>
							<div class="6u 12u(mobile)">
								<input type="text" name="univ" value="상명대학교" readonly/>
							</div>
						</div>
						<div class="row 50%">
							<div class="6u 12u(mobile)">
								<select name="college" onchange="changeList(this.value);">
									<option value="">소속대학</option>
									<option value="미래융합공학대학">미래융합공학대학</option>
									<option value="자연과학대학">자연과학대학</option>
									<option value="예술문화산업대학">예술문화산업대학</option>
									<option value="경영대학">경영대학</option>
									<option value="사범대학">사범대학</option>
									<option value="인문사회과학대학">인문사회과학대학</option>
								</select>
							</div>
							<div class="6u 12u(mobile)">
								<select name="major" id="m">
									<option value="">전공</option>
								</select>
							</div>
						</div>
						<div class="row 50%">
							<div class="6u 12u(mobile)">
								<input type="text" id="inputnum" name="num" placeholder="학번" onblur="NumCheck()" />
							</div>
							<div class="6u 12u(mobile)">
								<select name="grade">
									<option value="">학년</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
								</select>
							</div>
						</div>
						<div class="row">
							<div class="12u">
								<ul class="buttons">
									<li style="text-align: center"><input type="submit" class="special" value="회원가입" /></li>
								</ul>
							</div>
						</div>
					</form>
				</div>

			</section>
		</article>
	</div>

	<div id="id01" class="modal">

		<form class="modal-content animate"
			action="UserController?command=checkIdPw" method="post">
			<div id="lfcon">
				<label><b>Username</b></label> <input type="text"
					placeholder="Enter Username" name="uname" required> <label><b>Password</b></label>
				<input type="password" placeholder="Enter Password" name="psw"
					required>

				<button id="ff" type="submit">Login</button>
			</div>

			<div id="lfcon" style="background-color: #f1f1f1">
				<button type="button" id="ff"
					onclick="document.getElementById('id01').style.display='none'"
					class="cancelbtn">Cancel</button>
			</div>
		</form>
	</div>
	<!-- Scripts -->
	<script type="text/javascript" src="scripts/jquery-3.1.1.js"></script>
	<script type="text/javascript">
            // Get the modal
            var modal = document.getElementById('id01');
            
            // When the user clicks anywhere outside of the modal, close it
            window.onclick = function(event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }
            
            function IdCheck(){
               var check=document.getElementById("inputid").value;
               if(!check){
                  alert("아이디를 입력하세요");
               }
               else {
                   $.ajax({
                        url : "UserController",
                        data : {
                           command : "duplicateIdCheck",
                           checkid : check
                        },
                        dataType : "html",
                        method : "post",
                        success : function(result) {
                              alert(result);   
                              document.getElementById("demo").innerHTML =result;
                           }
                     });
               }
               
            }
            
            function NumCheck(){
                var check=document.getElementById("inputnum").value;
                if(!check){
                   alert("학번을 입력하세요");
                }
                else {
                    $.ajax({
                         url : "UserController",
                         data : {
                            command : "duplicateNumCheck",
                            checknum : check
                         },
                         dataType : "html",
                         method : "post",
                         success : function(result) {
                               alert(result);   
                               document.getElementById("demo").innerHTML =result;
                            }
                      });
                }
                
             }
            
            function changeList(col){
            	var f = document.form1;
            	var opt = $("#m option").length;
            	
            	if(col ==""){
            		num = new Array("전공");
            		vnum = new Array(""); 
            	}else if(col == "미래융합공학대학"){
            		num = new Array("지능정보공학부","휴먼지능정보공학과","전기전자컴퓨터학부","전기공학과","컴퓨터공학과","컴퓨터과학컴퓨터과학전공","생명화학공학부","생명공학과","화학에너지공학과","화공신소재학과","게임학과","미디어소프트웨어학과");
            		vnum= new Array("지능정보공학부","휴먼지능정보공학과","전기전자컴퓨터학부","전기공학과","컴퓨터공학과","컴퓨터과학컴퓨터과학전공","생명화학공학부","생명공학과","화학에너지공학과","화공신소재학과","게임학과","미디어소프트웨어학과");
            	}else if(col == "자연과학대학"){
            		num = new Array("화학과","생명과학과","소비자주거학과","외식영양학과","의류학과");
            		vnum= new Array("화학과","생명과학과","소비자주거학과","외식영양학과","의류학과");
            	}else if(col == "예술문화산업대학"){
            		num = new Array("외식영양의류학부","외식영양학과","의류학과","스포츠무용학부","스포츠건강관리학과","무용예술학과","조형예술학과","조형예술학과한국화전공","조형예술학과서양화전공","조형예술학과조소전공","생활예술학과","생활예술학과가구조형전공","생활예술학과텍스타일아트전공","음악학부","피아노과","성악과","뉴미디어작곡과","관현악과");
            		vnum= new Array("외식영양의류학부","외식영양학과","의류학과","스포츠무용학부","스포츠건강관리학과","무용예술학과","조형예술학과","조형예술학과한국화전공","조형예술학과서양화전공","조형예술학과조소전공","생활예술학과","생활예술학과가구조형전공","생활예술학과텍스타일아트전공","음악학부","피아노과","성악과","뉴미디어작곡과","관현악과");
            	}else if(col == "경영대학"){
            		num = new Array("경제금융학부","경영학부","글로벌경영학과","경영학과");
            		vnum= new Array("경제금융학부","경영학부","글로벌경영학과","경영학과");
            	}else if(col == "사범대학"){
            		num = new Array("국어교육과","영어교육과","교육학과","수학교육과","불어교육과","일어교육과");
            		vnum= new Array("국어교육과","영어교육과","교육학과","수학교육과","불어교육과","일어교육과");
            	}else if(col == "인문사회과학대학"){
            		num = new Array("인문콘텐츠학부","역사콘텐츠학과","지적재산권학과","문헌정보학과","한일문화콘텐츠학과","공간환경학부","공공인재학부","가족복지학과","국가안보학과","지리학과","법학과","행정학과");
            		vnum= new Array("인문콘텐츠학부","역사콘텐츠학과","지적재산권학과","문헌정보학과","한일문화콘텐츠학과","공간환경학부","공공인재학부","가족복지학과","국가안보학과","지리학과","법학과","행정학과");
            	}
            	
            	for(var i=0;i<opt;i++){
            		f.major.options[0] = null;
            	}
            	for(var k=0;k<num.length;k++){
            		f.major.options[k] = new Option(num[k],vnum[k]);
            	}
            }
            
         </script>
</body>
</html>