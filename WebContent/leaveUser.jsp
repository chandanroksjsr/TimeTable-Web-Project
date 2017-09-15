<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<div class="w3-container w3-card-2 w3-white w3-margin-bottom" id="#"
	style="padding-left: 5em;padding-bottom: 5em;">
	<h3 class="w3-text-grey w3-padding-16"
		style="color: #303e45 !important">
		<i
			class="fa fa-certificate fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i><b>회원탈퇴</b>
	</h3>
	<p style="color: #303e45!important">회원 탈퇴를 위해 패스워드를 입력하세요.</p>
	<form action="UserController?command=leaveUser" method="post" id="leave">
		<ul>
			<li><input type="password" name="pw" placeholder="Password"/></li>
			<li><input type="submit" value="탈퇴"/></li>
		</ul>
	</form>
</div>