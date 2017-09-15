<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="w3-container w3-card-2 w3-white w3-margin-bottom" style="padding-left: 5em;">
	<h3 class="w3-text-grey w3-padding-16" style="color:#303e45!important">
		<i
			class="fa fa-certificate fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i><b>학점
		입력하기</b>
	</h3>
	<br />
	<div class="cal">
		<form action="UserController?command=enterGrade" method="post">
			<div class="cal_tb">
				<table class="subjects">
					<caption>
						<form>
							<select name="semester" id="semest" style="display: inline;">
								<option value="학기선택" selected="selected">학기선택</option>
								<c:forEach items="${sessionScope.ttsemester}" var="data">
										<option value="${data}">${data}</option>
								</c:forEach>
							</select> 
							<input type="button" id="import_button" value="내 시간표 가져오기"
								onclick="enterGrade()" style="display: inline"> 
								<input type="button" value="초기화" onclick="rs()">
						</form>
						<!--  
						<input type="text" id="subjectname" placeholder=" 과목이름"
							maxlength="50" style="display: inline; width: 300px"> <input
							type="submit"  value="검색" style="display: inline">-->
						<br>
						<br>
	
					</caption>
					<thead style="color:#303e45!important">
						<tr>
							<th class="grade">성적</th>
							<th class="credit">학점</th>
							<th class="name">수업</th>
						</tr>
					</thead>
					<tbody id="enter">
					</tbody>
	
				</table>
				<br /> <input type="submit" id=save_button value="저장하기">
	
			</div>
		</form>
		<br>
		<br>
		<br>
	</div>
</div>

<script type="text/javascript" src="scripts/jquery-3.1.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#enter").load("enterGradeEmpty.jsp");
	});
	
	function enterGrade(){
		var semest = document.getElementById('semest').value;
		if(semest == '학기선택'){
			$("#enter").load("enterGradeEmpty.jsp");
		}else{
			$.ajax({
				url : "enterGradeMine.jsp",
				data : {
					msg : semest
				},
				method : "post",
				dataType : "html",
				success : function(result) {
					$("#enter").html(result);
				}
			});
		}
	}
	
	function rs(){
		$("#enter").load("enterGradeEmpty.jsp");
		document.getElementById('semest').value = '학기선택';
	}
</script>