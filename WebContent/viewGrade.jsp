<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="w3-container w3-card-2 w3-white" id="show_grade" style="padding-left: 5em;">
	<h3 class="w3-text-grey w3-padding-16" style="color:#303e45!important">
		<i
			class="fa fa-certificate fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i><b>학점
		조회</b>
	</h3>
	<br />
	<div class="cal">
		<form action="UserController?command=updateGrade" method="post">
			<div class="cal_tb">
				<table>
					<caption>
						<form>
							<select name="semester" id="ss" style="display: inline;">
								<option value="학기선택" selected="selected">학기선택</option>
								<c:forEach items="${sessionScope.semester}" var="data">
									<option value="${data}">${data}</option>
								</c:forEach>
							</select> <input type="button" id="import_button" value="내 성적 가져오기"
								onclick="viewGrade()" style="display: inline">
						</form>
						<br>
						<br>
					</caption>
					<thead>
						<tr>
							<th class="name w3-text-teal" style="color:#303e45!important">수업</th>
							<th class="credit w3-text-teal" style="color:#303e45!important">학점</th>
							<th class="grade w3-text-teal" style="color:#303e45!important">성적</th>
						</tr>
					</thead>
					<tbody id="tt">
					</tbody>
				</table>
				<br /> <input type="submit" id="import_button" value="수정하기"
					style="display: inline">
			</div>
		</form>
		<br> <br> <br>
	</div>
</div>

<script type="text/javascript" src="scripts/jquery-3.1.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#tt").load("viewGradeEmpty.jsp");
	});

	function viewGrade() {
		var sel = document.getElementById('ss').value;
		if (sel == '학기선택') {
			$("#tt").load("viewGradeEmpty.jsp");
		} else {
			$.ajax({
				url : "viewGradeMine.jsp",
				data : {
					msg : sel
				},
				method : "post",
				dataType : "html",
				success : function(result) {
					$("#tt").html(result);
				}
			});
		}
	}
</script>
