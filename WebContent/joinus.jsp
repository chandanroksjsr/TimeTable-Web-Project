<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!DOCTYPE HTML>
<html>
<head>
<title>ȸ������</title>
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
				<p style="text-align:center;">ȸ�������� ���� �Ʒ� ����� �ۼ����ּ���.</p>
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
								<input type="text" name="univ" value="�����б�" readonly/>
							</div>
						</div>
						<div class="row 50%">
							<div class="6u 12u(mobile)">
								<select name="college" onchange="changeList(this.value);">
									<option value="">�ҼӴ���</option>
									<option value="�̷����հ��д���">�̷����հ��д���</option>
									<option value="�ڿ����д���">�ڿ����д���</option>
									<option value="������ȭ�������">������ȭ�������</option>
									<option value="�濵����">�濵����</option>
									<option value="�������">�������</option>
									<option value="�ι���ȸ���д���">�ι���ȸ���д���</option>
								</select>
							</div>
							<div class="6u 12u(mobile)">
								<select name="major" id="m">
									<option value="">����</option>
								</select>
							</div>
						</div>
						<div class="row 50%">
							<div class="6u 12u(mobile)">
								<input type="text" id="inputnum" name="num" placeholder="�й�" onblur="NumCheck()" />
							</div>
							<div class="6u 12u(mobile)">
								<select name="grade">
									<option value="">�г�</option>
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
									<li style="text-align: center"><input type="submit" class="special" value="ȸ������" /></li>
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
                  alert("���̵� �Է��ϼ���");
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
                   alert("�й��� �Է��ϼ���");
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
            		num = new Array("����");
            		vnum = new Array(""); 
            	}else if(col == "�̷����հ��д���"){
            		num = new Array("�����������к�","�޸������������а�","����������ǻ���к�","������а�","��ǻ�Ͱ��а�","��ǻ�Ͱ�����ǻ�Ͱ�������","����ȭ�а��к�","������а�","ȭ�п��������а�","ȭ���ż����а�","�����а�","�̵�����Ʈ�����а�");
            		vnum= new Array("�����������к�","�޸������������а�","����������ǻ���к�","������а�","��ǻ�Ͱ��а�","��ǻ�Ͱ�����ǻ�Ͱ�������","����ȭ�а��к�","������а�","ȭ�п��������а�","ȭ���ż����а�","�����а�","�̵�����Ʈ�����а�");
            	}else if(col == "�ڿ����д���"){
            		num = new Array("ȭ�а�","������а�","�Һ����ְ��а�","�ܽĿ����а�","�Ƿ��а�");
            		vnum= new Array("ȭ�а�","������а�","�Һ����ְ��а�","�ܽĿ����а�","�Ƿ��а�");
            	}else if(col == "������ȭ�������"){
            		num = new Array("�ܽĿ����Ƿ��к�","�ܽĿ����а�","�Ƿ��а�","�����������к�","�������ǰ������а�","���뿹���а�","���������а�","���������а��ѱ�ȭ����","���������а�����ȭ����","���������а���������","��Ȱ�����а�","��Ȱ�����а�������������","��Ȱ�����а��ؽ�Ÿ�Ͼ�Ʈ����","�����к�","�ǾƳ��","���ǰ�","���̵���۰��","�����ǰ�");
            		vnum= new Array("�ܽĿ����Ƿ��к�","�ܽĿ����а�","�Ƿ��а�","�����������к�","�������ǰ������а�","���뿹���а�","���������а�","���������а��ѱ�ȭ����","���������а�����ȭ����","���������а���������","��Ȱ�����а�","��Ȱ�����а�������������","��Ȱ�����а��ؽ�Ÿ�Ͼ�Ʈ����","�����к�","�ǾƳ��","���ǰ�","���̵���۰��","�����ǰ�");
            	}else if(col == "�濵����"){
            		num = new Array("���������к�","�濵�к�","�۷ι��濵�а�","�濵�а�");
            		vnum= new Array("���������к�","�濵�к�","�۷ι��濵�а�","�濵�а�");
            	}else if(col == "�������"){
            		num = new Array("�������","�������","�����а�","���б�����","�Ҿ����","�Ͼ����");
            		vnum= new Array("�������","�������","�����а�","���б�����","�Ҿ����","�Ͼ����");
            	}else if(col == "�ι���ȸ���д���"){
            		num = new Array("�ι��������к�","�����������а�","���������а�","���������а�","���Ϲ�ȭ�������а�","����ȯ���к�","���������к�","���������а�","�����Ⱥ��а�","�����а�","���а�","�����а�");
            		vnum= new Array("�ι��������к�","�����������а�","���������а�","���������а�","���Ϲ�ȭ�������а�","����ȯ���к�","���������к�","���������а�","�����Ⱥ��а�","�����а�","���а�","�����а�");
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