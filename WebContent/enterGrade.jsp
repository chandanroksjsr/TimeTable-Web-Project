<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="w3-container w3-card-2 w3-white w3-margin-bottom" style="padding-left: 5em;">
	<h3 class="w3-text-grey w3-padding-16" style="color:#303e45!important">
		<i
			class="fa fa-certificate fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i><b>����
		�Է��ϱ�</b>
	</h3>
	<br />
	<div class="cal">
		<form action="UserController?command=enterGrade" method="post">
			<div class="cal_tb">
				<table class="subjects">
					<caption>
						<form>
							<select name="semester" id="semest" style="display: inline;">
								<option value="�б⼱��" selected="selected">�б⼱��</option>
								<c:forEach items="${sessionScope.ttsemester}" var="data">
										<option value="${data}">${data}</option>
								</c:forEach>
							</select> 
							<input type="button" id="import_button" value="�� �ð�ǥ ��������"
								onclick="enterGrade()" style="display: inline"> 
								<input type="button" value="�ʱ�ȭ" onclick="rs()">
						</form>
						<!--  
						<input type="text" id="subjectname" placeholder=" �����̸�"
							maxlength="50" style="display: inline; width: 300px"> <input
							type="submit"  value="�˻�" style="display: inline">-->
						<br>
						<br>
	
					</caption>
					<thead style="color:#303e45!important">
						<tr>
							<th class="grade">����</th>
							<th class="credit">����</th>
							<th class="name">����</th>
						</tr>
					</thead>
					<tbody id="enter">
					</tbody>
	
				</table>
				<br /> <input type="submit" id=save_button value="�����ϱ�">
	
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
		if(semest == '�б⼱��'){
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
		document.getElementById('semest').value = '�б⼱��';
	}
</script>